package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberDTO;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 수정된 정보들을 전부 가져옴
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		MemberDTO dto = new MemberDTO(id, passwd, name, age, gender, address);
		
		String type = request.getParameter("type");
		
		int result = MemberDAO.getInstance().updateMemberDTO(dto);
		System.out.println(result + "건 수정이 완료됨");
		// 타입의 value가 my일 경우 세션값 저장 후 메인페이지로 이동
		if(type.equals("my")) {
			HttpSession session = request.getSession();
			dto.setPass(null);
			session.setAttribute("dto", dto);
			response.sendRedirect("main.jsp");
			// 아닐 경우에는 수정 후 맴버리스트페이지로 이동
		} else {
			response.sendRedirect("memberList.do");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
