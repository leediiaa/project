package cml.tea;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cml.bean.UserBean;

/**
 * Servlet implementation class input
 */

public class input extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public input() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");	    
	    String courseId = request.getParameter("courseId");
	    String score = request.getParameter("score");
	    String studentId = request.getParameter("studentId");
	    
	    UserBean ub = new UserBean();
	    boolean ie1=false;
		try {
			ie1 = ub.isExist2(studentId);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	    boolean ie2=false;
		try {
			ie2 = ub.isExist3(courseId);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	    boolean ie3=false;
		try {
			ie3 = ub.isExit_SC(courseId,studentId);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	    
	    if(ie1&&ie2&&ie3){
	       try {
			ub.addScore(courseId,score,studentId);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	       //response.sendRedirect("/FinalProject/teacher/set_score.jsp");
	       request.getRequestDispatcher("set_score.jsp").forward(request, response);
	    }else{
	       request.getRequestDispatcher("set_failure.jsp").forward(request, response);
	       //response.sendRedirect("/FinalProject/teacher/set_failure.jsp");
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
