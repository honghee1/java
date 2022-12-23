package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.MemberDTO;
import service.MemberService;
import view.ModelAndView;

public class UpdateConroller implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		MemberDTO dto = new MemberDTO(id, passwd, name, age, gender, address);
		
		String type = request.getParameter("type");
		ModelAndView view = null;
		int result = MemberService.getInstance().updateMemberDTO(dto);
		System.out.println(result + "건 수정이 완료됨");
		// 타입의 value가 my일 경우 세션값 저장 후 메인페이지로 이동
		if(type.equals("my")) {
			HttpSession session = request.getSession();
			dto.setPass(null);
			session.setAttribute("dto", dto);
			view = new ModelAndView("main.jsp", true);
			// 아닐 경우에는 수정 후 맴버리스트페이지로 이동
		} else {
			view = new ModelAndView("memberList.do?command=search", true);
		}
		return view;
	}

}
