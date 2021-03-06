package com.blog.tistory.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Script {
	
	public static void back(String msg, HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			out.println("alert('"+msg+"');");
			out.println("history.back();");
			out.println("</script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void href(String msg, String uri, HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			out.println("alert('"+msg+"');");
			out.println("location.href='"+uri+"';");
			out.println("</script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
