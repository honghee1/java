<%@page import="java.sql.SQLException"%>
<%@page import="org.json.JSONArray"%>
<%@page import="dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.DBManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = DBManager.getInstance().getConn();
	String kind = request.getParameter("kind");
	String search = request.getParameter("search");
	search = "'%" + search + "%'";
	String sql = "select * from member where ";
	sql += kind + " like " + search; 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>(); 		
		while (rs.next()) {
			list.add(new MemberDTO(rs.getString(1),rs.getString(2),
					rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6)));
			
		}
		
		JSONArray array = new JSONArray(list);
		out.write(array.toString());
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			if(rs != null)rs.close();
			if(pstmt != null)pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
%>