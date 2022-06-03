<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<%@include file="include/navbar.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">會員註冊</h1>
					<form action="handle-userInfo" method="post">
						<div class="form-group">
							<label for="name">帳號</label>
							<input type="text" class="form-control" id="name" name="name" placeholder="請填入帳號名稱" required="required">
						</div>
						<br>
						<div class="form-group">
							<label for="name">密碼</label>
							<input type="text" class="form-control" id="password" name="password" placeholder="請填入密碼" required="required">
						</div>
						<br>
						<div class="form-group">
							<label for="name">信箱</label>
							<input type="email" class="form-control" id="email" name="email"  placeholder="請填入Email" required="required">
						</div>
						<br>
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-primary">Add</button>
						</div>
						
					</form>
			</div>
		</div>
	</div>
<%@include file="include/footer.jsp"%>