<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h3>몬스터 등록::</h3>
	
	<a href="https://www.pokemonkorea.co.kr/pokedex">포케덱스 참고</a>
	<blockquote>
		LBS(위치 기반 서비스) 몬스터를 포획해서 등록하기!!
	</blockquote>
	
	<!--  
	http://localhost:8088/MonsterInven/reg_proc.jsp?player=%EC%A7%80%EC%9A%B0&mname=%EC%82%90%EC%82%90&mpic=https%3A%2F%2Fdata1.pokemonkorea.co.kr%2Fnewdata%2Fpokedex%2Fmid%2F003501.png&mabil=15&mtype=earth
	 -->
	
<!-- 	<form method="get" action="reg_proc.jsp"> Url 주소로 파람 전달-->
	<form method="post" action="reg_proc.jsp"> <!-- messagebody로 파람 전달 -->
		<span>
			<label for='player'>*플레이어명:</label>
			<input type="text" id='player' name='player'
				placeholder="몬스터트레이너 이름" 
				size="24" required>
		</span>
		<fieldset>
			<legend>** 등록할 몬스터:</legend>
			<table border="1">
				<tr>
					<td>몬스터 이름:</td>
					<td>
						<input type='text' name='mname' 
							placeholder="몬스터 이름" size='24' required>
					</td>
				</tr>
				<tr>
					<td>몬스터 이미지: </td>
					<td>
						<input type="url" name="mpic" size='24' 
							placeholder="몬스터 사진" required="required"> 
					</td>
				</tr>
				<tr>
					<td>몬스터 능력치: </td>
					<td>
						<input type="number" name="mabil" min="1"
							max="100" value="10">pw
					</td>
				</tr>
				<tr>
					<td>몬스터 속성: </td>
					<td>
						<select name="mtype">
							<option value='fire'>불</option>
							<option value='water'>물</option>
							<option value='earth'>땅</option>
							<option value='grass' selected>풀</option>
							<option value='rock'>바위</option>
							<option value='poison'>독</option>
							<option value='electric'>전기</option>
						</select>
					</td>
				</tr>				
			</table>
		</fieldset>
		<span>
			<input type="reset" value="리셋"> &nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="몬스터 등록">
		</span>
	</form>
	
	
	