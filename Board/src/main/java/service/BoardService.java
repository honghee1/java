package service;

import java.sql.Connection;
import java.util.ArrayList;

import config.DBManager;
import dao.BoardDAO;
import dto.BoardCommentDTO;
import dto.BoardDTO;

public class BoardService {
	private static BoardService instance = new BoardService();
	private Connection conn;

	private BoardService() {
		conn = DBManager.getInstance().getConn();
	}

	public static BoardService getInstance() {
		if(instance == null)
			instance = new BoardService();
		return instance;
	}

	public ArrayList<BoardDTO> selectBoardList(int pageNo) {
		return BoardDAO.getInstance().selectBoardList(pageNo);
	}
	
	public int selectAllCount() {
		return BoardDAO.getInstance().selectAllCount();
	}

	public void insertBoard(BoardDTO dto) {
		BoardDAO.getInstance().insertBoard(dto);
	}

	public BoardDTO selectboard(int bno) {
		return BoardDAO.getInstance().selectBoard(bno);
	}

	public void deleteBoard(int bno) {
		BoardDAO.getInstance().deleteBoard(bno);
	}

	public void updateBoard(BoardDTO dto) {
		BoardDAO.getInstance().updateBoard(dto);
	}

	public void addBoardCount(int bno) {
		BoardDAO.getInstance().addBoardCount(bno);
	}

	public int insertBoardLike(int bno, String id) {
		int result = BoardDAO.getInstance().insertBoardLike(bno, id);
		if(result == 0)
			BoardDAO.getInstance().deleteBoardLike(bno, id);
		
		return result;
	}

	public int insertBoardHate(int bno, String id) {
		int result = BoardDAO.getInstance().insertBoardHate(bno, id);
		if(result == 0)
			BoardDAO.getInstance().deleteBoardHate(bno, id);
		
		return result;
	}

	public void insertBoardComment(BoardCommentDTO boardCommentDTO) {
		BoardDAO.getInstance().insertBoardComment(boardCommentDTO);
	}

	public ArrayList<BoardCommentDTO> selectCommentList(int bno) {
		return BoardDAO.getInstance().selectBoardCommentList(bno);
	}

	public void deleteBoardComment(int cno) {
		BoardDAO.getInstance().deleteBoardComment(cno);
	}

	public int insertBoardCommentLike(int cno, String id) {
		int result = BoardDAO.getInstance().insertBoardCommentLike(cno, id);
		if(result == 0)
			BoardDAO.getInstance().deleteBoardCommentLike(cno, id);
		
		return result;
	}

	public int insertBoardCommentHate(int cno, String id) {
		int result = BoardDAO.getInstance().insertBoardCommentHate(cno, id);
		if(result == 0)
			BoardDAO.getInstance().deleteBoardCommentHate(cno, id);
		
		return result;
	}
	
}
