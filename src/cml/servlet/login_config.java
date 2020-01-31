package cml.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cml.bean.UserBean;

/**
 * Servlet implementation class login_config
 */

public class login_config extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_config() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(true);
		String name = request.getParameter("username").trim();
	       String pwd = request.getParameter("password").trim();
	       String limit=request.getParameter("radio1");
	       
	      UserBean ub = new UserBean(); 
	      boolean isValid=false;
		try {
			isValid = ub.valid(name,pwd,limit);
		} catch (SQLException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}

	       
	       if(isValid){
	         if(limit.equals("student")){
	            String id="";
				try {
					id = ub.selectId(name);
				} catch (SQLException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
	            session.setAttribute("studentId", id);
	            session.setAttribute("username", name);
	            response.sendRedirect("/FinalProject/stu_info.jsp");
	         }
	         else{
	            session.setAttribute("username", name);
	            response.sendRedirect("/FinalProject/tea_info.jsp");
	         }
	       }
	       else{
	           response.sendRedirect("login_failure.jsp");
	       }
	        
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
