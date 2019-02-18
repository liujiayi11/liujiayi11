package util;

import java.util.UUID;

public class PrimaryKeyUUID {
	public static String getPrimaryKey(){
		return UUID.randomUUID().toString();
	}
}	
