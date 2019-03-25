package test.jsp.pb.service.impl;

import java.util.List;
import java.util.Map;

import test.jsp.pb.dao.PBoardDAO;
import test.jsp.pb.dao.impl.PBoardDAOImpl;
import test.jsp.pb.service.PBoardService;

public class PBoardServiceImpl implements PBoardService {
	private PBoardDAO pbdao = new PBoardDAOImpl();
	
	@Override
	public int insertPBoard(Map<String, String> pBoard) {
		return pbdao.insertPBoard(pBoard);
	}

	@Override
	public List<Map<String, String>> selectPBoardList() {
		return pbdao.selectPBoardList();
	}

	@Override
	public Map<String, String> selectPBoard(int pbNum) {
		return pbdao.selectPBoard(pbNum);
	}

}
