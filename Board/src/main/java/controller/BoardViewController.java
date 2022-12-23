package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BoardCommentDTO;
import dto.BoardDTO;
import service.BoardService;
import view.ModelAndView;

public class BoardViewController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		HashSet<Integer> set = (HashSet<Integer>) request.getSession().getAttribute("bno_history");
		if(set == null) {
			set = new HashSet<Integer>();
		}
		if(set.add(bno)) {
			// 클릭한 게시글 조회수를 증가
			BoardService.getInstance().addBoardCount(bno);
		}
		request.getSession().setAttribute("bno_history", set);
		// 게시글 읽어옴
		BoardDTO dto = BoardService.getInstance().selectboard(bno);
		
		dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
		request.setAttribute("board", dto);
		
		// 게시글에 해당하는 댓글을 읽어옴
		ArrayList<BoardCommentDTO> list = BoardService.getInstance().selectCommentList(bno);
		request.setAttribute("list", list);
		
		return new ModelAndView("board_view.jsp", false);
	}

}
