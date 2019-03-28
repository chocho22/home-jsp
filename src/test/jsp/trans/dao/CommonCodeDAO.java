package test.jsp.trans.dao;


import java.util.List;

import test.jsp.trans.vo.CommonCodeVO;

public interface CommonCodeDAO {
	public List<CommonCodeVO> selectCommonCodeList(String ccGroup);
}
