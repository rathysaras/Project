package docker;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WebServlet
 */
public class WebServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Model m = new Model();
	
    /**
     * Default constructor. 
     */
    public WebServlet() {
        // TODO Auto-generated constructor stub
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
		if(request.getParameter("requestParam")!=null && request.getParameter("requestParam").equalsIgnoreCase("save")) {
			String text = request.getParameter("text");
			if(text!=null) {
				m.save(text);
				request.setAttribute("list", m.getAll());
			}
		} else if(request.getParameter("requestParam")!=null && request.getParameter("requestParam").equalsIgnoreCase("get")) {
			request.setAttribute("list", m.getAll());
		}
		request.getRequestDispatcher("/list.jsp").forward(request, response);
	}

}
