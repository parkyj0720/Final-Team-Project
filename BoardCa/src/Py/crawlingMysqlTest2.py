# -*- coding: utf-8 -*-
import sys
sys.path.append('C:\\jython2.7.2\\Lib')
sys.path.append('C:\\jython2.7.2\\Lib\\site-packages')
#sys.path.append('C:\\jython2.7.2\\Lib\\site-packages\\urllib3-1.25.10-py2.7.egg')
#sys.path.append('C:\\jython2.7.2\\Lib\\site-packages\\requests-2.24.0-py2.7.egg')
sys.path.append('C:\\jython2.7.2\\Lib\\site-packages\\bs4-0.0.1-py2.7.egg')
sys.path.append('C:\\jython2.7.2\\Lib\\site-packages\\beautifulsoup4-4.9.2-py2.7.egg')
sys.path.append('C:\\jython2.7.2\\Lib\\site-packages\\PyMySQL-0.10.1-py2.7.egg')
from urllib.request import Request, urlopen
import bs4
import pymysql

def crawlingFunc(startNum, endNum):
    print("crawlingFunc")

    # 추천순
    #uri = "https://www.10000recipe.com/recipe/list.html?cat2=19&order=reco&page=1"

    # 최신순
    #uri = "https://www.10000recipe.com/recipe/list.html?cat2=19&order=date&page=1"

    # mysql 연결
    conn = pymysql.connect(host='board-1.cqff4lw7mwyx.ap-northeast-2.rds.amazonaws.com', user='admin', password='comstudy03', db="boardCa", charset='utf8')
    cat2 = 19;
    order = "date";
    page = 20;
    
    # 시작페이지, 끝페이지
    for i in range(startNum, endNum):
        uri = "https://www.10000recipe.com/recipe/list.html?cat2=19&order="+order+"&page="+str(i)

        # 페이지당 가져올 개수
        testCount = 48

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
        print()

        list = bs.select(".common_sp_list_ul.ea4>li")
        for food in list:
            # 전체 레시피 목록
            titles = food.select(".common_sp_thumb>a")
            # 변수 초기화
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
                try:
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
                    co3 = ''
                    ingre = ''
                    for container in list2:
                        # 메인 썸네일
                        img = container.select("#main_thumbs")
                        r_main_thumbs = img[0]['src']
                        print(img[0]['src'])
                        
                        # 제목
                        view_title = container.select(".view2_summary>h3")
                        r_title = view_title[0].text
                        r_title = r_title.replace('\'', "\"")
                        print('제목: ' + view_title[0].text)
                        
                        # 설명내용
                        try:
                            view_explain = container.select(".view2_summary_in")
                            r_explain = view_explain[0].text.strip()
                            r_explain = r_explain.replace('\'', "\"")
                        except:
                            r_explain = ""
                        print('설명: ' + r_explain.strip())

                        # 기준인원
                        try:
                            info1 = container.select(".view2_summary_info1")
                            r_standard = info1[0].text
                            r_standard = r_standard.replace('\'', "\"")
                        except:
                            r_standard = ""
                        print("기준인원: " + r_standard)

                        # 조리시간
                        try:
                            info2 = container.select(".view2_summary_info2")
                            r_cooking_time = info2[0].text
                            r_cooking_time = r_cooking_time.replace('\'', "\"")
                        except:
                            r_cooking_time = ""
                        print("조리시간: " + r_cooking_time)

                        # 음식 난이도
                        try:
                            info3 = container.select(".view2_summary_info3")
                            r_difficult = info3[0].text
                            r_difficult = r_difficult.replace('\'', "\"")
                        except:
                            r_difficult = ""
                        print("난이도: " + r_difficult)

                        # 재료
                        ingredient1 = container.select(".cont_ingre>dl")
                        for i2 in ingredient1:
                            dtTag = i2.select("dt")
                            ingre += dtTag[0].text + '&'
                            print(dtTag[0].text)
                            dlTag = i2.select("dd")
                            str2 = dlTag[0].text.replace(" ", "")
                            str2 = str2.replace(",", "&")
                            str2 = str2.replace('\'', "\"")
                            ingre += str2 + '&'
                            print(str2)

                        ingredient = container.select(".ready_ingre3>ul")

                        cnt = 0
                        for i1 in ingredient:
                            # 재료 제목
                            bTag = i1.select("b")
                            ingre += bTag[0].text + '&'
                            print(bTag[0].text)
                            aTag = i1.select("a>li")
                            for i2 in aTag:
                                # 재료 목록
                                str1 = i2.text.replace("  ", "&&")
                                for no in range(1, 20, 1):
                                    str1 = str1.replace("&&", "&")
                                str1 = str1.replace('\n', "")
                                str1 = str1.replace('\'', "\"")
                                ingre += str1 + '&'
                                print(str1)
                            # print('&')

                        view_step = container.select(".view_step")
                        try:
                            btt = view_step[0].select(".best_tit>b")
                            print(btt[0].text)
                        except:
                            print()

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
                            elif clobCnt == 3:
                                co3 += r[0]['src'] + '&'
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
                                elif clobCnt == 3:
                                    co3 += r[0]['src'] + '&'
                                print(r[0]['src'])
                            except:
                                print("")
                            # 문자열이 너무 길어서 co, co1, co2, co3로 나눠서 to_clob을 이용해 저장
                            cnt += 1
                            if cnt % 8 == 0:
                                clobCnt += 1
                    print()
                except:
                    print(str(i)+'번째 페이지에서 오류')
            co = co.replace('\n', '')
            co1 = co1.replace('\n', '')
            co2 = co2.replace('\n', '')
            co3 = co3.replace('\n', '')
            co = co.replace('\'', "\"")
            co1 = co1.replace('\'', "\"")
            co2 = co2.replace('\'', "\"")
            co3 = co3.replace('\'', "\"")

            sql = "insert into RECIPE_T values(0,'" \
                  + r_crawling_addr + "', '" + r_main_thumbs + "', '', '" \
                  + r_title + "', '" + r_explain + "', '" + r_standard + "', '" \
                  + r_cooking_time + "', '" + r_difficult + "', '" + ingre + "','" + co + co1 + co2 + co3 + "')"
            print("sql: " + sql)
            sql1 = "select * from RECIPE_T where REC_CRAWLING_ADDR='" + r_crawling_addr + "'"
            # sq = "select * from recipe"

            # DB에 데이터가 있는지 확인
            cursor1 = conn.cursor()
            cursor1.execute(sql1)
            curCount = 0
            for a in cursor1:
                curCount += 1

            # DB에 데이터가 없으면 추가
            if curCount == 0:
                cursor = conn.cursor()
                cursor.execute(sql)
                conn.commit()

            testCount -= 1
            if testCount <= 0:
                break
