<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	 <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<style type="text/css">
	#acc h3{ background: skyblue;	}
	#acc div{
		border: 1px solid gray;
		height: 100px;
	}	
	</style>
</head>
 <script type="text/javascript">
 $(document).ready(function() {
	 // 아코디언
	 $(function () {
	     $('#acc div').hide();
	     $('#acc div').first().show();
	 	
	     $('#acc h3').click(function(){
	     	//$(this).siblings().not($(this).next()).filter('div').slideUp();                  $(this).next().siblings("div").slideUp();
	     	$(this).next().slideDown();            	
	     });            
	});  
	$(function() {
		$("#acc > div").hide();
		$("h3").each(function() {
			$(this).click(function() {
				$(this).next().slideDown();
				$(this).next().siblings("div").slideUp();
			});
		});
	});
	
	// all check
	$(function() {
        $( '#chkAll' ).click( function() {
          $('.target01').children().prop( 'checked', this.checked );
        });
	});
	
	//요소 색 변경
	$(function(){     
	       $("button").eq(0).click(function() {
			$("#target02").css("background", "yellow");
		});
	});
});
 </script> 
<body>
<!-- 아코디언 -->
<div id="acc">
        <h3 class="on">제목1</h3>
        <div><p>내용1</p></div>        
        <h3 class="off">제목2</h3>
        <div><p>내용2</p></div>        
        <h3 class="off">제목3</h3>
        <div><p>내용3</p></div>
 </div>
 
 <!-- all check -->
 <fieldset>
	<legend>All에 따라 하위 체크박스도 체크되거나 체크가 해제되도록 해주세요</legend>
         <input type="checkbox" id="chkAll" /><label for="chkAll">All</label>
	<div class="target01">
            <input type="checkbox" id="chk1"/><label for="chk1">java</label>
            <input type="checkbox" id="chk2"/><label for="chk2">jsp</label>
            <input type="checkbox" id="chk3"/><label for="chk3">jquery</label>
         </div>
 </fieldset>
 
 <!-- 요소 색 변경 -->
 <fieldset>
	<legend> id가 target02인 요소의 배경색을 노랑색으로 변경하세요.</legend>
	<button>배경색 변경하기</button>
	<div id="target02">
		<i>안녕하세요</i>
	</div>
 </fieldset>
</body>
</html>