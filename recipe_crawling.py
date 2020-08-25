from urllib.request import Request, urlopen
from bs4 import BeautifulSoup
import os
import cx_Oracle

os.chdir('C:\\instantclient-basic-nt-11.2.0.4.0\\instantclient_11_2')
os.putenv('NLS_LANG', 'AMERICAN_AMERICA.UTF8')

# db접속 id, pw, 자신 아이피로 변경
db = cx_Oracle.connect('test', 'test', '192.168.219.142:1521/xe')

uri = "https://www.10000recipe.com/recipe/list.html?q=&query=&cat1=&cat2=19&cat3=&cat4=&fct=&order=date&lastcate=order&dsearch=&copyshot=&scrap=&degree=&portion=&time=&niresource="

req = Request(uri)
resp = urlopen(req)
html = resp.read()
# print(html[:256 ]) # 코드가 깨지므로 인코딩 변경
html = html.decode("utf-8")
# print(html[:256 ]) # 코드가 정상적이다
# 이제 BeautifulSoup 으로 html 을 정제하자
bs = BeautifulSoup(html, "html.parser")
print(bs.title)
print(bs.title.name)
# 이쁘게 표현하자 print(bs.prettify()[:1024])
print()
testCount = 0
list = bs.select(".common_sp_list_ul.ea4>li")
for food in list:
    # 전체 레시피 목록
    titles = food.select(".common_sp_thumb>a")

    r_crawling_addr = ''
    r_main_thumbs = ''
    r_title = ''
    r_explain = ''
    r_standard = ''
    r_cooking_time = ''
    r_difficult = ''
    r_ingredient = ''
    r_cooking_order = ''

    co = ''
    co1 = ''
    co2 = ''
    ingre = ''
    clobCnt = 0
    for title in titles:
        uri2 = title['href']
        uri2 = 'https://www.10000recipe.com' + uri2
        r_crawling_addr = uri2
        print(uri2)
        # 레시피 주소
        req2 = Request(uri2)
        resp2 = urlopen(req2)
        html2 = resp2.read()
        html2 = html2.decode("utf-8")
        bs2 = BeautifulSoup(html2, "html.parser")
        # 레시피 게시글 상세페이지 전체 div
        list2 = bs2.select(".container.sub_bg")

        co = ''
        co1 = ''
        co2 = ''
        ingre = ''
        for container in list2:
            # 메인 썸네일
            img = container.select("#main_thumbs")
            r_main_thumbs = img[0]['src']
            print(img[0]['src'])

            view_title = container.select(".view2_summary>h3")
            r_title = view_title[0].text
            print('제목: ' + view_title[0].text)

            view_explain = container.select(".view2_summary_in")
            r_explain = view_explain[0].text.strip()
            print('설명: ' + view_explain[0].text.strip())

            info1 = container.select(".view2_summary_info1")
            r_standard = info1[0].text
            print("기준인원: " + info1[0].text)

            info2 = container.select(".view2_summary_info2")
            r_cooking_time = info2[0].text
            print("조리시간: " + info2[0].text)

            info3 = container.select(".view2_summary_info3")
            r_difficult = info3[0].text
            print("난이도: " + info3[0].text)

            # 재료
            ingredient1 = container.select(".cont_ingre>dl")
            for i2 in ingredient1:
                dtTag = i2.select("dt")
                ingre += dtTag[0].text + '&'
                print(dtTag[0].text, end=' ')
                dlTag = i2.select("dd")
                str2 = dlTag[0].text.replace(" ", "")
                str2 = str2.replace(",", "&")
                ingre += str2 + '&'
                print(str2, end=' ')

            ingredient = container.select(".ready_ingre3>ul")

            cnt = 0
            for i1 in ingredient:
                # 재료 제목
                bTag = i1.select("b")
                ingre += bTag[0].text + '&'
                print(bTag[0].text, end=' ')
                aTag = i1.select("a")
                for i2 in aTag:
                    # 재료 목록
                    str1 = i2.text.replace(" ", "")
                    str1 = str1.replace('\n', "")
                    ingre += str1 + '&'
                    print(str1, end='&')
                # print('&')

            view_step = container.select(".view_step")
            btt = view_step[0].select(".best_tit>b")
            print(btt[0].text)

            media = view_step[0].select(".view_step_cont")
            for md in media:
                # 조리 순서 텍스트
                t = md.select(".media-body")
                if clobCnt == 0:
                    co += t[0].text + '&'
                elif clobCnt == 1:
                    co1 += t[0].text + '&'
                elif clobCnt == 2:
                    co2 += t[0].text + '&'
                print(t[0].text)
                # 조리 순서 이미지
                r = md.select("img")
                try:
                    if clobCnt == 0:
                        co += r[0]['src'] + '&'
                    elif clobCnt == 1:
                        co1 += r[0]['src'] + '&'
                    elif clobCnt == 2:
                        co2 += r[0]['src'] + '&'
                    print(r[0]['src'])
                except:
                    print("")
                cnt += 1
                if cnt % 7 == 0:
                    clobCnt += 1
        print()
    co = co.replace('\n', '')
    co1 = co1.replace('\n', '')
    co2 = co2.replace('\n', '')
 
    sql = "insert into recipe values(seq_board_no.nextval,'" \
          + r_crawling_addr + "', '" + r_main_thumbs + "', '" \
          + r_title + "', '" + r_explain + "', '" + r_standard + "', '" \
          + r_cooking_time + "', '" + r_difficult + "', '"+ingre+"',to_clob('" + co + "')||to_clob('" + co1 + "')||to_clob('" + co2 + "'))"
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    testCount += 1
    if testCount >= 3:
        break
