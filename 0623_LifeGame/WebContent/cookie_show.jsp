<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 체크 페이지</title>
</head>
<body>
	<h3>쿠키 체크 페이지</h3>
	
	<ol>
		<% Cookie[] cks = request.getCookies();
			if( cks != null && cks.length > 0 ) {
				for(int c = 0; c < cks.length; c++ ) {
					Cookie ck = cks[c];
					String cname = ck.getName();
					String cvalue = ck.getValue();
					int clife = ck.getMaxAge();
					System.out.println("쿠키 만료: " + clife +"초");
					System.out.println("쿠키 명: " + cname
							+ " ==> 쿠키 밸류: " + cvalue);
					out.println("<li>" +
							"쿠키 명: " + cname
							+ " ==> 쿠키 밸류: " + cvalue
							+ "</li>");
				}
			}
		%>	
	</ol>
	

</body>
</html>