package com.java.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtil {

public static String getDateTime(){
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		return sdf.format(date);
		
	}
}
