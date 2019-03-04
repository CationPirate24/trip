package com.java.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {

	public static String getDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		return sdf.format(date);
	}
}
