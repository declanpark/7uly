<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    		
    		var usid = jQuery("#searchUsid").val();
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

<section>
	<input type="text" id="searchUsid" name="searchUsid" />
	<button type="button" id="btnGetUser" class="AXButton">사용자조회</button>

	<div data-ax5grid="first-grid" data-ax5grid-config="{}"
		style="height: 300px;"></div>

</section>


