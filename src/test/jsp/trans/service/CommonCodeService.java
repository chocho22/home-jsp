package test.jsp.trans.service;

import java.util.List;

import test.jsp.trans.vo.CommonCodeVO;

public interface CommonCodeService {
	public List<CommonCodeVO> selectCommonCodeList(String ccGroup);
}
