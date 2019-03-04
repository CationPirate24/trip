package com.java.util;

import java.util.ArrayList;
import java.util.List;

import com.java.bean.MyAccount;
import com.java.bean.MyInterest;
import com.java.bean.MyManager;
import com.java.vo.MyAccountVo;
import com.java.vo.MyInterestVo;
import com.java.vo.MyManagerVo;

public class VoUtil {

	public static List<MyInterestVo> getMyInterestVoList(List<MyInterest> miList){
		
		List<MyInterestVo> mivList = new ArrayList<MyInterestVo>();
		for(MyInterest mi:miList){
			MyInterestVo miv = new MyInterestVo();
			miv.setId(mi.getId());
			miv.setName(mi.getName());
			miv.setPrice(mi.getPrice());
			miv.setDescribe(mi.getDescribe());
			miv.setPictureId(mi.getPictureId());
			miv.setMapId(mi.getMapId());
			miv.setGrade(mi.getGrade());
			miv.setType(mi.getInterestType());
			miv.setMyCityId(mi.getMyCityId());
			miv.setAddress(mi.getAddress());
			
			miv.setTypeVo(CodeUtil.getMyValue(mi.getInterestType(), "INTEREST"));
			mivList.add(miv);
		}
		return mivList;
	}
	
	
	public static List<MyAccountVo> getMyAccountVo(List<MyAccount> maList){
		List<MyAccountVo> mavList = new ArrayList<MyAccountVo>();
		
		for(MyAccount ma:maList){
			MyAccountVo mav = new MyAccountVo();
			
			mav.setId(ma.getId());
			mav.setUsername(ma.getUsername());
			mav.setPassword(ma.getPassword());
			mav.setName(ma.getName());
			mav.setAge(ma.getAge());
			mav.setSex(ma.getSex());
			mav.setE_mail(ma.getE_mail());
			mav.setPhone(ma.getPhone());
			mav.setMoney(ma.getMoney());
			mav.setPicture(ma.getPicture());
			
			mav.setSexVo(CodeUtil.getMyValue(ma.getSex(), "SEX"));
			
			mavList.add(mav);
		}
		return mavList;
	}
	
	public static List<MyManagerVo> getMyManagerVo(List<MyManager> mmList){
		List<MyManagerVo> mmvList = new ArrayList<MyManagerVo>();
		
		for(MyManager mm:mmList){
			MyManagerVo mmv = new MyManagerVo();
			
			
			mmv.setId(mm.getId());
			mmv.setUsername(mm.getUsername());
			mmv.setPassword(mm.getPassword());
			mmv.setName(mm.getName());
			mmv.setAge(mm.getAge());
			mmv.setSex(mm.getSex());
			mmv.setEmail(mm.getEmail());
			mmv.setPhone(mm.getPhone());
			mmv.setType(mm.getType());
			
			mmv.setSexVo(CodeUtil.getMyValue(mm.getSex(), "SEX"));
			mmv.setTypeVo(CodeUtil.getMyValue(mm.getType(), "TYPE"));
			
			mmvList.add(mmv);
		}
		return mmvList;
	}
}


























