/**
 *  공통 js 파일: 계산기 관련 함수
 */

// 계산하기 및 결과 표시, 서버 전송 및 저장 처리
function submitCal() {
	// 전처리
	var LCDInput = document.getElementById('LCD');
	console.log(">> 계산기 실행: submitCal - " + LCDInput.value);
	var oldVal = LCDInput.value; // "3+4" OK, "3x4"?, "4÷2"?
	var newVal = oldVal.replaceAll('x','*');  // replace() 한개만...
	newVal = newVal.replaceAll('÷',"/");
	//
	// 메인(계산) 처리 "3*8+22+45/3"
	console.log(newVal)
	var calVal = eval(newVal); // 계산 실행해주는 고마운 함수;
				//그러나 절대 쓰지 말자.
	console.log(">> 결과: " + calVal);
	
	// 히스토리 표시
	var historyOL = document.getElementById('history_cal');
	historyOL.innerHTML += "<li>" + oldVal + " = " + calVal + "</li>";
	
	// 결과 서버 페이지로 전송
//	var url = "result/show_result.jsp?calVal=365"; // HTTP get 파람추가.
//	var url = "result/show_result.jsp
	// 쿼리스트링 ?파람이름1=파람값1&파람이름2=파람값2
	var url = "result/show_result.jsp";
	//var param = "?calVal="+calVal;
//	var param = "?calVal="+calVal+"&calExp="+oldVal;
			// '+' => ' ' 방지... 필요성
	var param = "?calVal="+calVal+"&calExp="
					+ encodeURIComponent(oldVal); // '+' => %2B ... 
			// http URI에서 안전하게 인코딩하여 보내기
	location.href = url + param;	
}

// 리셋 클리어 버튼
function handleClearBtn() {
//	alert("clear");
	var LCDInput = document.getElementById('LCD');
	console.log(">> 계산기 실행: clear - " + LCDInput.value);
	LCDInput.value = "0"; // reset
}

// 숫자 0~9, 소수점 ., 산술연산
function handleBtn(val) {
//	alert(val);
	console.log(val);
	var LCDInput = document.getElementById('LCD');
	if( LCDInput.value == '0' ) {
		if( "+-x÷".indexOf(val) != -1 ) return; 
			// 0으로 시작하는 사칙연산은 일단 차단.. 
		if( val == '.' )
			LCDInput.value += val; // 소수점 시작..
		else 
			LCDInput.value = val; // 일반 숫자
	} else {
		LCDInput.value += val; // 오른쪽 정렬 누적..
	}
}
