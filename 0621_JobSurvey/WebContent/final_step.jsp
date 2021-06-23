<%@page import="java.io.IOException"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	// 세션에서 가져올 모든 데이터들의 key들...
	final String[] keys = {
		"name", "age", "gender", "address", "selfcheck", 
		"slang", "clang", "os", "platform",
		"position",
		"salary", "welfare"
	};
		

	final String[] scriptLangs = {
		"Javascript", "PHP", "Python", "Ruby", "Dart", "Lua"	
	}; 	
	final String[] complieLangs = {
		"Java", "Swift", "C/C++", "Kotlin", "Rust", "Go",
		"Objective-C", "C#"
	};
	final String[] OSs = {
		"Windows", "MacOS", "Linux", "UNIX", "Solaris", "RTOS"	
	}; 	
	final String[] platforms = {
		"WWW", "iOS", "Android", "Embeded", "Desktop", 
		"Virtual-VMWare(EMC)", "Cloud-MS Azure",
		"Cloud-AWS", "Cloud-GCP", "Chrome", "OpenStack"
	};
	
	// 세션에 입력한 기술 키들..
	String techKeys[] = {"slang", "clang","os", "platform"};
	String techTitles[] = {
			"스크립트 언어", "컴파일 언어", "운영체제",
			"플랫폼(가상/클라우드/네이티브)"
	};
	HashMap<String,String> techMap = new HashMap<>();
	for( int t = 0 ; t < techKeys.length; t++ ) {
		techMap.put(techKeys[t], techTitles[t]);
	}
	
	String[][] techElements = { 
				// 1차원배열을 요소로하는 배열 == 2차원 배열 
		scriptLangs, complieLangs, OSs, platforms	
	};
	
	HashMap<String, String> salaryMap = new HashMap<>();
	salaryMap.put("min", "~$20,000");
	salaryMap.put("s1", "$20,000~$30,000");
	salaryMap.put("s2", "$30,000~$50,000");
	salaryMap.put("s3", "$50,000~$100,000");
	salaryMap.put("max","$100,000~");
	String skey = "dummy";
	if( session.getAttribute("salary") != null ) {
		skey = (String)session.getAttribute("salary");
	}
	
	
	// 파일처리 
	StringBuffer sb = new StringBuffer();
	sb.append("# JOBSURVEY 2021 설문조사 - " + new Date() + "\r\n");
	sb.append("--------------------------------\r\n");
	// CSV (Comma Separated Value)
	final String SEP = ", "; 
	for(int k = 0; k < keys.length; k++ ) {
		String key = keys[k];
		String line = "";
		line += key + SEP;
		
		if( key.equals("salary") ) {
			line +=  salaryMap
					.get((String)session.getAttribute(key)) + "\r\n";
		} 
		else if( techMap.containsKey(key) ) { // 기술사항 키중의 하나?
			line += techMap.get(key) + SEP;
			String techValues[] = (String[])session.getAttribute(key);
					// {"1", "3", "4"}
			for( String val : techValues ) {
				int nval = Integer.parseInt(val);
				switch(key) {
					case "slang":
						line += scriptLangs[nval] +"/"; break;
					case "clang":
						line += complieLangs[nval] +"/"; break;
					case "os":
						line += OSs[nval] +"/"; break;
					case "platform":
						line += platforms[nval] +"/"; break;	
				}
			} // for
			line += "\r\n";
		} else if( key.equals("gender") ) {
			line += ((String)session.getAttribute(key)).equals("f") 
						? "여성": "남성";
			line += "\r\n";
		} else if( key.equals("selfcheck") ) { // "scl0" ~ "scl5"
			String sclStr = (String)session.getAttribute("selfcheck");
			int scl = sclStr.charAt(3) - '0';
			final String[] SELF_LEVELS = {
			   		"전혀없음", "초급", "초중급", "중급",
			   		"고급", "수석(아키텍쳐)급"   			 
			};
			line += SELF_LEVELS[scl] + "\r\n"; 
		} else {
			// 보통키
			line += session.getAttribute(key) + "\r\n";
		}
		
		sb.append(line);
	}
	sb.append("--------------------------------\r\n");		
	//
	String fileStore = sb.toString();
	//String username = (String)session.getAttribute("name");
	Calendar cal = Calendar.getInstance();
	String day = String.format("%04d%02d%02d",
			cal.get(Calendar.YEAR), 
			cal.get(Calendar.MONTH)+1,
			cal.get(Calendar.DAY_OF_MONTH));
	// 
	String filename = "JobSurvey_"+ day + ".csv";
	//
	
	FileWriter fw = null;
	try {
		String realPath = application.getRealPath(filename);
				// 서버의 가상경로를 실제 OS의 물리 경로로 매핑
// C:\dev2021\jsp_ws\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JobSurvey				
		fw = new FileWriter(realPath, true); // append 누적/이어쓰기
		fw.write(fileStore);
		System.out.println("<h3>" + filename + " 파일에 저장완료!!</h3>");
		out.println("<h3>" + filename + " 파일에 저장완료!!</h3>");
		out.println("<script> alert('" + filename + " 파일에 저장완료!!');</script>");
	} catch(IOException e) {
// 		e.printStackTrace();
		application.log("설문 파일 저장 에러 발생!" + new Date());
	} finally {
		fw.close();
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= application.getInitParameter("projectName") %></title>
</head>
<body>
	<div id='header'>
		<h2>최종 설문 조사 완료!</h2>
	</div>
	<div id="main">
		
	</div>
	<div id='footer'>
		<jsp:include page='<%= "common/" + "_footer.jsp" %>' /> 
	</div>
</body>
</html>