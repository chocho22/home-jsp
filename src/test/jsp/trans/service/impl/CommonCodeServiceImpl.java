package test.jsp.trans.service.impl;

import java.util.List;

import test.jsp.trans.dao.CommonCodeDAO;
import test.jsp.trans.dao.impl.CommonCodeDAOImpl;
import test.jsp.trans.service.CommonCodeService;
import test.jsp.trans.vo.CommonCodeVO;

public class CommonCodeServiceImpl implements CommonCodeService {
	private CommonCodeDAO ccdao = new CommonCodeDAOImpl();
	
	@Override
	public List<CommonCodeVO> selectCommonCodeList(String ccGroup) {
		return ccdao.selectCommonCodeList(ccGroup);
	}

}
