import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("Chat2")
public class Chat2 extends HttpServlet
{

	//入室してきた人をString配列で格納しておく
	String[] id = new String[30];
	int count =0;
	//arrayListでメッセージを格納する
	ArrayList<String> messages = new ArrayList<String>();
	ArrayList<String> manumess = new ArrayList<String>();
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		request.setCharacterEncoding("UTF-8");
//---------------------------sessionID登録------------------------------------------------------

		String ac = request.getParameter("access");//どこから飛んできたかアクセスを得る
		request.setAttribute("test",ac);
		String access = "access";
		//もしnameページから飛んできたら
		if(ac!=access)
		{
			//IPアドレスを登録する
			id[count] = request.getParameter("name");
			count++;
			request.setAttribute("size","成功");
		}
//---------------------------参加者をセット------------------------------------------------



			//登録した数だけsetAttributeする
			for(int i = 0 ; i < count ; i++)//一人ならcountは１
			{
				String c = String.valueOf(i);
				request.setAttribute("name"+c,id[i]);//name1からはじまる。namesは0からはじまる
			}
//---------------------------メッセージ渡し----------------------------------------------


			if(request.getParameter("cname")!=null)
			{



				//発言者のセット
				request.setAttribute("IP",request.getParameter("cname"));
				messages.add(request.getParameter("message"));//メッセージをDATABASE用にセット
				manumess.add(request.getParameter("cname")+"「"+ request.getParameter("message")+"」");//メッセージをChat用にセット
				int size = manumess.size();//メッセージの数をintに代入
				request.setAttribute("size",size);//メッセージ数をセットする
				for(int j = 0 ; j < size; j++)
				{
					String num = String.valueOf(j);//jをStringに変換し、setできるようにする
					request.setAttribute("mess"+num,manumess.get(j));
				}


			}




			this.getServletContext().getRequestDispatcher("/chat.jsp").forward(request,response);



	}


}