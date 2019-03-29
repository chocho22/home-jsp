package test.jsp.trans.service.impl;

import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

import test.jsp.trans.service.TransService;

public class TransServiceImpl implements TransService {
	private Gson gson = new Gson();
	
	@Override
	public Map<String, String> transferText(String source, String target, String text) {
		Map<String,String> rMap = new HashMap<>();
		rMap.put("isError", "true");
		
		
		return null;
	}

}
