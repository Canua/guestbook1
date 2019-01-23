package com.douzon.guestbook.dao.test;

import java.util.List;

import com.douzon.guestbook.dao.GuestbookDao;
import com.douzon.guestbook.vo.GuestbookVo;

public class GuestbookTest {
	public static void main(String[] args) {
//		getListTest();
		
		deleteTest("둘3", "55");
	}

	public static void getListTest() {
		List<GuestbookVo> list = new GuestbookDao().getList();
		for (GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

	public static void insertTest(String name, String password, String message) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName(name);
		vo.setPassword(password);
		vo.setMessage(message);
		new GuestbookDao().insert(vo);
	}

	public static void deleteTest(String name, String password) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName(name);
		vo.setPassword(password);
		new GuestbookDao().delete(vo);
	}
}
