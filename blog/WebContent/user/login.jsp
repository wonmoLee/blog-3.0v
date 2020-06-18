<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ include file="../include/nav.jsp" %>



<div class="container">

  <div align="center">
  	<img alt="tistory Logo2" src="static/img/tistoryLogo2.png" style="width: 400px; height: 200px;">
  </div>

  <form action="/blog/user?cmd=loginProc" method="POST" class="was-validated">
    
    <div class="form-group">
      <label for="uname">아이디</label>
      <input type="text" class="form-control" id="uname" placeholder="아이디를 입력해주세요." name="uname" required>
      <div class="valid-feedback">유효함.</div>
      <div class="invalid-feedback">정보를 입력해주세요.</div>
    </div>
    
    <div class="form-group">
      <label for="pwd">패스워드</label>
      <input type="password" class="form-control" id="pwd" placeholder="패스워드를 입력해주세요." name="pswd" required>
      <div class="valid-feedback">유효함.</div>
      <div class="invalid-feedback">정보를 입력해주세요.</div>
    </div>
    
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" required> 아이디 기억하기
      </label>
    </div>
    
    <button type="submit" class="btn btn-primary">로그인</button>
  </form>
</div>

<%@ include file="../include/footer.jsp" %>