package service;

import java.util.HashMap;
import java.util.List;

import dto.MemberDTO;
import exception.MemberException;
import mapper.MemberMapper;

public class MemberService {
	private static MemberService instance = new MemberService();

	private MemberService() {	}

	public static MemberService getInstance() {
		if(instance == null)
			instance = new MemberService();
		return instance;
	}

	public MemberDTO login(String id, String passwd) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("passwd", passwd);
		return MemberMapper.getInstance().login(map);
	}

	public List<MemberDTO> selectTopAge3() {
		return MemberMapper.getInstance().selectTopAge3();
	}

	public void insertMemberDTO(MemberDTO dto) throws MemberException {
		if(MemberMapper.getInstance().selectMemberDTO(dto.getId()) != null) 
			throw new MemberException("아이디가 중복되었습니다.");
		MemberMapper.getInstance().insertMemberDTO(dto);
		
	}

	public List<MemberDTO> selectMemberList(String kind, String search) {
		return MemberMapper.getInstance().selectMemberList(kind, search);
		
	}

	public void deleteMemberDTO(String id) {
		MemberMapper.getInstance().deleteMemberDTO(id);
	}

	public MemberDTO selectMemberDTO(String id) throws MemberException {
		MemberDTO dto = MemberMapper.getInstance().selectMemberDTO(id);
		
		if(dto == null)
			throw new MemberException("수정할 회원정보가 없습니다.");
		
		return dto;
	}

	public int updateMemberDTO(MemberDTO dto) {
		return MemberMapper.getInstance().updateMemberDTO(dto);
	}
	
}












