package service;

import java.util.List;

import db.DBHelper;

import pojo.Caricature;
import pojo.Users;
import service.impl.CartServiceImpl;
import service.impl.UsersServiceImpl;

public class Test {
	public static void main(String[] args) {
		DBHelper ds = new DBHelper();
		System.out.println(ds.getConnection());
	}
}
