<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
</head>
<script type="text/javascript" src="<c:out value='/resources/js/jquery/1.12.4/jquery-1.12.4.min.js'/>"></script>
<script type="text/javascript" src="<c:out value='/resources/js/ax5/ax5ui.all.min.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:out value='/resources/css/ax5/ax5ui.all.css' />">
<script type="text/javascript">
	jQuery( document ).ready(function() {
	    console.log( "ready!" );
	    var firstGrid = new ax5.ui.grid();
	    
        firstGrid.setConfig({
            target: $('[data-ax5grid="first-grid"]'),
            columns: [
                {key: "usid", label: "사용자ID"},
                {key: "password", label: "비밀번호"},
                {key: "usrNm", label: "사용자명"},
                {key: "age", label: "나이"},
                {key: "moblphonNo", label: "핸드폰번호"},
                {key: "email", label: "이메일"},
                {key: "bassAdres", label: "기본주소"},
                {key: "detailAdres", label: "상세주소"},
                {key: "zip", label: "우편번호"},
                {key: "regId", label: "입력자ID"},
                {key: "regDt", label: "입력일시"},
                {key: "updtId", label: "수정자ID"},
                {key: "updtDt", label: "수정일시"}
            ]
        });
        
        jQuery("#btnGetUser").on("click", getUser);
        function getUser(){
    		
    		var usid = jQuery("#usid").val();
    		jQuery.ajax({
                method: "POST",
                url: "<c:url value='/com/getUser.do' />",
                dataType : "json",
                contentType : "application/json",
                data : JSON.stringify({
                	usid : usid
                }),
                success: function (res) {
                	console.log(res);
                    firstGrid.setData(res);
                }
            });
    		
    	}
	});
	
	
	
	
</script>
<body>
	<h1>MAIN 페이지 입니다.</h1>
 	<input type="text" id="usid" name="usid" />
 	<button type="button" id="btnGetUser" class="AXButton">사용자조회</button>
 	
 	
 	
 	<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="height: 300px;"></div>
</body>
</html>


