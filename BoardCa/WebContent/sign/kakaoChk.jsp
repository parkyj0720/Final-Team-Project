<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery.js"></script>
<script>

	$(function() {			
		
		var idCheck = ${idCheck};
		var userId = ${userId};
		var userGender = '${userGender}';
		var account_email = '${account_email}';
		var userAgeRange = '${userAgeRange}';
		var joinDate = '${joinDate}';	
		var userToken = '${userToken}';	
		
		if(idCheck == 1){
			kakaoSign(userId);
		}else if(idCheck == 0){
			kakaoSignUp(userId,account_email,userGender,userAgeRange,joinDate);
		}else{
			console.log("error");
		}
		
		function kakaoSign(userId){		
			var form = document.createElement('form');
			var objs;
		
			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'userId');	
			objs.setAttribute('value', userId);	
			form.appendChild(objs);				

			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'userToken');	
			objs.setAttribute('value', userToken);	
			form.appendChild(objs); 
			
			form.setAttribute('method', 'post');	
			form.setAttribute('action', "${pageContext.request.contextPath}/kakaoSignPro.do");	
			document.body.appendChild(form);	
			form.submit();
		}
		
		function kakaoSignUp(userId,account_email,userGender,userAgeRange,joinDate){		
			var form = document.createElement('form');
			var objs;
			form.setAttribute('method', 'post');	
			form.setAttribute('action', "${pageContext.request.contextPath}/signUp.do");
			
			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'userId');	
			objs.setAttribute('value', userId);	
			form.appendChild(objs);
			
 			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'account_email');	
			objs.setAttribute('value', account_email);	
			form.appendChild(objs);
			
			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'userGender');	
			objs.setAttribute('value', userGender);	
			form.appendChild(objs);
			
			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'userAgeRange');	
			objs.setAttribute('value', userAgeRange);	
			form.appendChild(objs);
			
			objs = document.createElement('input');	
			objs.setAttribute('type', 'hidden');	
			objs.setAttribute('name', 'joinDate');	
			objs.setAttribute('value', joinDate);	
			form.appendChild(objs); 	
				
			document.body.appendChild(form);
			alert("추가정보를 입력해주세요"); 
			form.submit();
		}
		
	})

</script>
</head>
<body>

</body>
</html>