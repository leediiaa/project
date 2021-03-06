package cml.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cml.bean.UserBean;

/**
 * Servlet implementation class tea_reg_config
 */

public class tea_reg_config extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tea_reg_config() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username").trim();
		String password1 = request.getParameter("password1").trim();
		@SuppressWarnings("unused")
		String password2 = request.getParameter("password2").trim();
		String id = request.getParameter("id").trim();
		String name = request.getParameter("name").trim();
		String age = request.getParameter("age").trim();
		String address = request.getParameter("address").trim();
		String profession = request.getParameter("profession").trim();
		String sex=request.getParameter("radio2");

		UserBean userBean = new UserBean();
		  boolean isExist=false;
		try {
			isExist = userBean.isExist_tea(username);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		  if(!isExist){
			 try {
				userBean.addTeacher(username, password1, name,id,age,address,profession,sex);
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}	
			 response.sendRedirect("/FinalProject/index.jsp");
			 }
		  else 
		  {
			response.sendRedirect("/FinalProject/tea_register.jsp");
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
