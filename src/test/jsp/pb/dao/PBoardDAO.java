package test.jsp.pb.dao;

import java.util.List;
import java.util.Map;

public interface PBoardDAO {
	public int insertPBoard(Map<String,String> pBoard);
	public List<Map<String,String>> selectPBoardList();
	public Map<String,String> selectPBoard(int pbNum);
}
