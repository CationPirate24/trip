package com.java.util;

import java.util.List;

import com.java.bean.Code;
import com.java.service.CodeService;
import com.java.service.CodeServiceImpl;

public class CodeUtil {

	private static CodeService codeService = new CodeServiceImpl();
	
	public static String getMyValue(String myKey,String type){
		
		String myValue = "";
		Code code = codeService.getByKeyAndType(myKey, type);
		if(code==null){
			myValue = null;
		}else{
			myValue = code.getMyValue();
		}
		
		return myValue;
	}
	
	public static List<Code> getCode(String type){
		
		System.out.println("============"+type);
		List<Code> list = codeService.getByType(type);
		return list;
	}
	
	public static String getTypeValues(String typeArr[],String myType){
		
		String typeValues = "";
		if(typeArr.length==1){
			typeValues = getMyValue(typeArr[0], myType);
		}else{
			for(String type:typeArr){
				typeValues += getMyValue(type, myType)+",";
			}
			typeValues = typeValues.substring(0, typeValues.length()-1);
		}
		return typeValues;
	}
	
	public static String getTypes(String typeArr[]){
		
		String types = "";
		if(typeArr.length==1){
			types = typeArr[0];
		}else{
			for(String type:typeArr){
				types += type+",";
			}
			types = types.substring(0, types.length()-1);
		}
		return types;
	}
}























