package test.jsp.study.io;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

public class NotePad {
	public static void main(String[] args) {
		String path = "d:\\study\\cat.txt";
		try {
			FileInputStream fr = new FileInputStream(path);
			InputStreamReader is = new InputStreamReader(fr, "euc-kr");
			BufferedReader br = new BufferedReader(is);
			String line = null;
			while((line=br.readLine())!=null) {
				System.out.println(line);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
//		try {
//			FileInputStream fis = new FileInputStream(path);
//			int idx = 0;
//			while((idx=fis.read())!=-1) {
//				System.out.println(idx);
//			} 
//		} catch (FileNotFoundException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
	}
}
