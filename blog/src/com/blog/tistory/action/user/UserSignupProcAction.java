package com.blog.tistory.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.tistory.action.Action;
import com.blog.tistory.model.RoleType;
import com.blog.tistory.model.Users;
import com.blog.tistory.repository.UsersRepository;
import com.blog.tistory.util.Script;

public class UserSignupProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (
				request.getParameter("userName").equals("") ||
				request.getParameter("passWord").equals("") ||
				request.getParameter("email").equals("") ||
				request.getParameter("address").equals("") 
			) {
				return;
			}
			String username = request.getParameter("userName");
			String password = request.getParameter("passWord");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			
			
			Users user = Users.builder()
					.userName(username)
					.password(password)
					.email(email)
					.address(address)
					.userRole(RoleType.USER)
					.build();
			
			UsersRepository usersRepository = UsersRepository.getInstance();
			int result = usersRepository.save(user);
			System.out.println("result : " + result);
			
			if (result == 1) {
				Script.href("회원가입에 성공하였습니다.", "/blog/index.jsp", response);
			} else {
				Script.back("회원가입에 실패하였습니다.", response);
			}
	}
}
