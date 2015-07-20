<%@ page contentType="text/html; charset=UTF-8" import="java.net.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>chat</title>
</head>
<body>
<%
/* request.setCharacterEncoding("UTF-8");
String name0 = (String)request.getAttribute("name0");//名前を表示
String name1 = (String)request.getAttribute("name1");
*/
%>
<%
/* if(name0==null)
{
	name0 = "まだいない";
}
*/
%>

<%
/* if(name1==null)
{
	name1 = "まだいない";
}
*/
%>

参加者はです。
<%
//IPを受け取る
//String testip = request.getRemoteAddr();
//out.println(testip);
%>
<form method="POST" action="Chat2">
	<input type="text" name="message" size="10" /><!---------------------メッセージ-->
	<input type="hidden" name="cname" value="test"/>
	<input type="submit" value="送信" />
</form>
<%
//---------------------メッセージを受け取る----------------
String a = (String)request.getAttribute("size");
String test = (String) request.getAttribute("test");
out.print(a);
out.print(test);
/* int size  =(Integer) request.getAttribute("size");

	out.print(size);

for(int i = 0; i < size; i++)
{
	String num = String.valueOf(i);
	String mess = (String)request.getAttribute("mess"+ num);
	out.print(mess+"</br>");
}
*/
%>
</body>
</html>