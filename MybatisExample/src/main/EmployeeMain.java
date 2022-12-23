package main;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dto.EmployeeDTO;
import mapper.EmployeeMapper;

public class EmployeeMain {

	public static void main(String[] args) {
//		List<EmployeeDTO> list = EmployeeMapper.getInstance().selectAllEmployee();
//		
//		for(EmployeeDTO dto : list)
//			System.out.println(dto);
		
//		List<EmployeeDTO> list = EmployeeMapper.getInstance().selectDeptEmployee("회계");
//		for(EmployeeDTO dto : list)
//			System.out.println(dto);
		
//		EmployeeDTO dto = new EmployeeDTO("AA00", "홍길동", "법무", 3);
//		int result = EmployeeMapper.getInstance().insertEmployee(dto);
//		System.out.println(result);
		
//		int count = EmployeeMapper.getInstance().updatePosition();
//		System.out.println(count);
		
//		HashMap<String, Integer> map = new HashMap<String, Integer>();
//		map.put("start", 2);
//		map.put("end", 4);
//		List<EmployeeDTO> list = EmployeeMapper.getInstance().selectPosition(map);
//		for(EmployeeDTO dto : list) {
//			System.out.println(dto);
//		}
		
//		List<Map<String, Object>> list = EmployeeMapper.getInstance().selectPositionCount();
//		for(Map<String, Object> map : list) {
//			System.out.println(map.get("POSITION_NAME") + " " + map.get("ECOUNT")); // 키값 대소문자 확인
//		}
		
		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("kind", "eno");
//		map.put("search", "AA00");
		map.put("kind", "name");
		map.put("search", "김");
		List<EmployeeDTO> list = EmployeeMapper.getInstance().selectSearchEmployee(map);
		for(EmployeeDTO dto : list)
			System.out.println(dto);
		
	}
		
}