package com.java.util;

import java.util.ArrayList;
import java.util.List;

import com.java.bean.MyHotel;
import com.java.vo.HotelVo;

public class HotelVoUtil {
	
	public static List<HotelVo> getHotelVo(List<MyHotel> list){
		
		List<HotelVo> list1=new ArrayList<HotelVo>();
		for (MyHotel mh : list) {
			HotelVo hv=new HotelVo();
			hv.setId(mh.getId());
			hv.setName(mh.getName());
			hv.setPrice(mh.getPrice());
			hv.setBegin_time(mh.getBegin_time());
			hv.setEnd_time(mh.getEnd_time());
			hv.setTotal(mh.getTotal());
			hv.setDescribe(mh.getDescribe());
			hv.setCount(mh.getCount());
			hv.setPicture_id(mh.getPicture_id());
			hv.setMap_id(mh.getMap_id());
			hv.setGrade(mh.getGrade());
			hv.setType(mh.getType());
			hv.setMy_city_id(mh.getMy_city_id());
			hv.setTypeVo(CodeUtil.getMyValue(mh.getType(), "HOTEL"));
			list1.add(hv);
			
		}
		return list1;
	}
	public static HotelVo getHotelVo(MyHotel mh){
		
		HotelVo hv=new HotelVo();
		
		hv.setId(mh.getId());
		hv.setName(mh.getName());
		hv.setPrice(mh.getPrice());
		hv.setBegin_time(mh.getBegin_time());
		hv.setEnd_time(mh.getEnd_time());
		hv.setTotal(mh.getTotal());
		hv.setDescribe(mh.getDescribe());
		hv.setCount(mh.getCount());
		hv.setPicture_id(mh.getPicture_id());
		hv.setMap_id(mh.getMap_id());
		hv.setGrade(mh.getGrade());
		hv.setType(mh.getType());
		hv.setMy_city_id(mh.getMy_city_id());
		hv.setTypeVo(CodeUtil.getMyValue("hotel", mh.getType()));
		
		return hv;
	}
}
