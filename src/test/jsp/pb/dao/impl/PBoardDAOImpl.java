package test.jsp.pb.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import test.jsp.pb.dao.PBoardDAO;
import test.jsp.pb.db.DBCon;

public class PBoardDAOImpl implements PBoardDAO {
	private static final String INSERT_PBOARD = "insert into photo_board( " +
			" pb_num,pb_title,pb_content,pb_credat,pb_cretim,pb_file_path,pb_real_path) " +
			" values(seq_pb_num.nextval,?,?,to_char(sysdate,'YYYYMMDD'), " +
			" to_char(sysdate,('HH24MISS'),?,? ";
	
	
	@Override
	public int insertPBoard(Map<String, String> pBoard) {
		try {
			PreparedStatement ps = DBCon.getCon().prepareStatement(INSERT_PBOARD);
			ps.setString(1, pBoard.get("pb_title"));
			ps.setString(2, pBoard.get("pb_content"));
			ps.setString(3, pBoard.get("pb_file_path"));
			ps.setString(4, pBoard.get("pb_real_path"));
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Map<String, String>> selectPBoardList() {
		return null;
	}

	@Override
	public Map<String, String> selectPBoard(int pbNum) {
		return null;
	}

}
