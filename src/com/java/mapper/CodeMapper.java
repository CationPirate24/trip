package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.Code;

public interface CodeMapper extends Dao<Code,String>{

	public Code getByKeyAndType(@Param("myKey") String myKey,@Param("type") String type);
	public List<Code> getByType(String type);
}
