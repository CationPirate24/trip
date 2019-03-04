package com.java.util;

import java.util.UUID;

public class UUID1 {
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-","");
	}
}
