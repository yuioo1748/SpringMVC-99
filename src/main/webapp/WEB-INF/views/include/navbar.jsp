<%@page import="tw.com.ssh.springmvc.entity.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/navbar.css">
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FFACB7;">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/">Chiikawa</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/product" >商品</a></li>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            管理者介面
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/show-product">商品清單</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/add-product">新增商品</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
        <!-- 登入與登出資格判斷 -->
			<%
			UserInfo auth = (UserInfo) request.getSession().getAttribute("auth");
			if (auth != null) {
				request.setAttribute("auth", auth);
			}
			%>
			<!-- 登入與登出功能 -->
			<%
			if (auth != null) {
			%>
			<li class="nav-item"><a class="nav-link"
				href="getCommentServlet">評論</a></li>
			<li class="nav-item"><a class="nav-link" href="logout" >登出</a>
			</li>
			<%
			} else {
			%>
			<li class="nav-item"><a class="nav-link" href="login" >登入</a></li>
			<%
			}
			%>
      </ul>
      <!-- 註冊功能 -->
		<ul class="navbar-nav">
			<%
			if (auth != null) {
			%>

			<%
			} else {
			%>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/add-userinfo" >註冊</a></li>
			<%
			}
			%>
		</ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<br>