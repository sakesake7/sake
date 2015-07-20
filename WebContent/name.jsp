<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Name</title>
</head>
<body>
<h1>
チャットを始める
</h1>
あなたのsessionIDは
<%//--------------------------------------------------セッションidを得る---------------------------------
String str =session.getId();
String str0 =String.valueOf(str.charAt(0));
String str1 =String.valueOf(str.charAt(1));
String str2 =String.valueOf(str.charAt(2));
String str3 =String.valueOf(str.charAt(3));
String str4 =String.valueOf(str.charAt(4));
String str5 =String.valueOf(str.charAt(5));
String id = str0 + str1 + str2 + str3 + str4 + str5;//セッションIDを得る
%>
<%=id%>
このページURIは
<%//--------------------------------------------------URIを得る------------------------------------------
String uri = request.getRequestURI();
out.print(uri);
%>
<form method="POST" action="Chat2">
		<input type="hidden" name="name" value="<%=id%>"size="4" >
	<input type="hidden" name="access" value="access" size="4">
	<input type="submit" value="OK" >
</form>

</body>
</html>