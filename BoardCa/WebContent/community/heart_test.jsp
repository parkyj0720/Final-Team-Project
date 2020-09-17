<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
HTMLResult
EDIT ON
<html>
<head>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<style>
.heart {
  width: 100px;
  height: 100px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  background: url(http://imagizer.imageshack.com/img923/4545/XdJDuY.png) no-repeat;  
  cursor: pointer;
  
}
.heart-blast {
  background-position: -2800px 0;
  transition: background 1s steps(28);
}


</style>

<script>
$(function() {
    
  $(".heart").on("click", function() {
    $(this).toggleClass("heart-blast");
  });
}); 
    
</script>   


</head>
<body>
<div class="heart"></div>   
</body> 
</html>