<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

</style>
</head>
<body>
	<!-- ex11_form.jsp -->
	
	<h1>폼 관련 입력 태그</h1>
	
	<!-- 폼태그 사용 > POST -->
	<form method="POST" action="ex11_ok.jsp">
	<table class="vertical">
		<tr>
			<th>텍스트박스</th>
			<td><input type="text" name="txt1" /></td>
		</tr>
		<tr>
			<th>암호 박스</th>
			<td><input type="password" name="txt2"></td>
		</tr>
		<tr>
			<th>멀티 테스트</th>
			<td><textarea name="txt3" cols="30" rows="5"></textarea></td>
		</tr>
		<tr>
			<th>체크 박스</th>
			<td><input type="checkbox" name="cbl" value="java" /></td>
		</tr>
		<tr>
			<th>체크 박스들</th>
			<td>
				<h3>취미를 선택하세요. (복수선택 가능)</h3>
				<label><input type="checkbox" name="cb2" value="독서" /> 독서</label>
				<label><input type="checkbox" name="cb3" value="운동" /> 운동</label>
				<label><input type="checkbox" name="cb4" value="코딩" /> 코딩</label>
			</td>
		</tr>
		<tr>
			<th>체크 박스들</th>
			<td>
				<h3>취미를 선택하세요. (복수선택 가능)</h3>
				<label><input type="checkbox" name="cb5" value="독서" /> 독서</label>
				<label><input type="checkbox" name="cb5" value="운동" /> 운동</label>
				<label><input type="checkbox" name="cb5" value="코딩" /> 코딩</label>
			</td>
		</tr>
		<tr>
			<th>라디오 버튼</th>
			<td>
				<h3>성별을 선택하시오.</h3>
				<label><input type="radio" name="rb" value="male"> 남</label>
				<label><input type="radio" name="rb" value="female"> 여</label>
			</td>
		</tr>
		<tr>
			<th>셀렉트 박스</th>
			<td>
				<select name="sel1">
					<option value="1">사과</option>
					<option value="2">귤</option>
					<option value="3">바나나</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>셀렉트 박스</th>
			<td>
				<select name="sel2" multiple>
					<option value="1">사과</option>
					<option value="2">귤</option>
					<option value="3">바나나</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>히든 태그</th>
			<td><input type="hidden" name="id" value="hong" /></td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><input type="date" name="regdate" /></td>
		</tr>
		<tr>
			<th>색상</th>
			<td><input type="color" name="color" /></td>
		</tr>
		<tr>
			<th>사용자 정의 컨트롤(JavaScript, jQuery..)</th>
			<td>
				<img src="images/catty01.png" id="cat1" />
			</td>
		</tr>
	</table>
	<div>
		<input type="submit" value="보내기" />
	</div>
	<input type="hidden" name="left" />
	<input type="hidden" name="top" />
	</form>
	
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script src=https://code.jquery.com/ui/1.13.2/jquery-ui.js></script>
	<script>
		$('#cat1').draggable({
			stop: function(event,ui){
				/* alert(ui.position.left);
				alert(ui.position.top); */
				
				$('input[name=left]').val(ui.position.left);
				$('input[name=top]').val(ui.position.top);
			}
		});
	</script>
</body>
</html>