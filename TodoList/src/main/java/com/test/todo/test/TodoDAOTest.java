package com.test.todo.test;

import com.test.todo.model.TodoDAO;

public class TodoDAOTest {
	public static void main(String[] args) {
		
		TodoDAO dao = new TodoDAO();
		
		int result = dao.add("할일입니다.");
		
		
		System.out.println(result); //1이면 등록 완성 
	}
}
