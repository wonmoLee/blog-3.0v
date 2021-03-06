package com.blog.tistory.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.tistory.action.Action;

public class UserLoginAction implements Action{
		@Override
		public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher dis = request.getRequestDispatcher("user/login.jsp");
			dis.forward(request, response);
		}
}
