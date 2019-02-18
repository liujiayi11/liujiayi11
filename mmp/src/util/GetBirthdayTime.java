package util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import pojo.Users;
import service.UsersService;
import service.impl.UsersServiceImpl;

public class GetBirthdayTime {
	public static long getTransafer(int year,int month,int date){
		Calendar c = Calendar.getInstance();
		c.set(year, month-1, date);
		return c.getTimeInMillis();
	}
	public static int getCalcAge(Date date){
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		Calendar now = Calendar.getInstance();
		return now.get(Calendar.YEAR)-c.get(Calendar.YEAR);
	}
	public static String getDateToString(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
}
