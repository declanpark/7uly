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
<link rel="stylesheet" type="text/css" href="<c:out value='/resources/css/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:out value='/resources/css/ax5/AXJ.min.css' />">
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
<body>
	<header>
		<hgroup>
			<h1>Header</h1>
			<h1>MAIN 페이지 입니다.</h1>
		</hgroup>
	</header>
	<nav>
		<ul>
			<li><a href="#">Menu Option 1</a></li>
			<li><a href="#">Menu Option 2</a></li>
		</ul>
	</nav>
	<main role="main">
	<section>
		<table cellpadding="0" cellspacing="0" class="AXFormTable">
			<colgroup>
				<col width="100" />
				<col />
			</colgroup>
			<tbody>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="usid">사용자ID</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="usid" value="사용자ID" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="password">비밀번호</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="password" value="비밀번호" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="usrNm">사용자명</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="usrNm" value="사용자명" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="age">나이</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="age" value="나이" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="moblphonNo">핸드폰번호</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="moblphonNo" value="핸드폰번호" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="email">이메일</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="email" value="이메일" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="bassAdres">기본주소</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="bassAdres" value="기본주소" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="detailAdres">상세주소</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="detailAdres" value="상세주소" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="zip">우편번호</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="zip" value="우편번호" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="regId">입력자ID</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="regId" value="입력자ID" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="regDt">입력일시</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="regDt" value="입력일시" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="updtId">수정자ID</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="updtId" value="수정자ID" /></div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel"><label for="updtDt">수정일시</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="updtDt" value="수정일시" /></div>
					</td>
				</tr>
			</tbody>
		</table>
		<article>
			<header>
				<h1>Article #1</h1>
			</header>
			<section>This is the first article.</section>
		</article>
		<article>
			<header>
				<h1>Article #2</h1>
			</header>
			<section>This is the second article.</section>
		</article>
	</section>
	<aside>
		<section>
			<h1>Links</h1>
			<ul>
				<li><a href="#">Link 1</a></li>
				<li><a href="#">Link 2</a></li>
			</ul>
		</section>
		<figure>
			<img width="85" height="85" src="http://domain.tld/path/to/image.jpg"
				alt="foobar" />
			<figcaption>Foobar</figcaption>
		</figure>
	</aside>
	<footer>Footer</footer>

	
 	<input type="text" id="searchUsid" name="searchUsid" />
 	<button type="button" id="btnGetUser" class="AXButton">사용자조회</button>
 	
 	<div data-ax5grid="first-grid" data-ax5grid-config="{}" style="height: 300px;"></div>
 	
 	

	<h2>테이블 템플릿</h2>
	<table cellpadding="0" cellspacing="0" class="AXFormTable">
			<colgroup>
				<col width="100" />
				<col />
			</colgroup>
			<tbody>
				<tr>
					<td>
						<div class="tdRel">TD</div>
					</td>
					<td>
						<div class="tdRel">55건</div>
					</td>
					<td>
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
				<tr>
					<th>
						<div class="tdRel"><label for="usid">사용자ID</label></div>
					</th>
					<td>
						<div class="tdRel"><input type="text" id="usid" value="사용자ID" /></div>
					</td>
					<td align="center">
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
				<tr class="gray">
					<th>
						<div class="tdRel">TH</div>
					</th>
					<td>
						<div class="tdRel">55건</div>
					</td>
					<td align="right">
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
				<tr class="red">
					<th>
						<div class="tdRel">TH</div>
					</th>
					<td>
						<div class="tdRel">55건</div>
					</td>
					<td align="center">
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
				<tr class="green">
					<th>
						<div class="tdRel">TH</div>
					</th>
					<td>
						<div class="tdRel">55건</div>
					</td>
					<td>
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
				<tr class="blue">
					<th>
						<div class="tdRel">TH</div>
					</th>
					<td>
						<div class="tdRel">55건</div>
					</td>
					<td>
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
				<tr class="yellow">
					<th>
						<div class="tdRel">TH</div>
					</th>
					<td>
						<div class="tdRel">55건</div>
					</td>
					<td>
						<div class="tdRel">TD</div>
					</td>
					<td class="last">
						<div class="tdRel">1,022건</div>
					</td>
				</tr>
			</tbody>
		</table>

	
 	
</body>
</html>


