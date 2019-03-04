package com.java.util;

import java.util.ArrayList;
import java.util.List;

import com.java.bean.MyComment;

public class CommentUtil {

	public static List<MyComment> getComment(List<MyComment> myCommentList){
		List<MyComment> mcList = new ArrayList<MyComment>();
		
		for(int i=0;i<2;i++){
			mcList.add(myCommentList.get(i));
		}
		
		return mcList;
	}
}










