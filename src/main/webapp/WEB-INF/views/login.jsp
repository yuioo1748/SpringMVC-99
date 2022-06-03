<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<%@include file="include/navbar.jsp"%>

<div class="container mt-3">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<form action="login" method="post">
				<div class="form-group">
					<label for="loginEmail">信箱</label> <input
						type="email" class="form-control" id="loginEmail"
						aria-describedby="emailHelp" name="email" required="required" >
						 <small id="emailHelp" class="form-text text-muted" >我們將會保護用戶帳戶隱私,不會給予第三方。
						</small>
				</div>
				<br>
				<div class="form-group">
					<label for="loginpassword">密碼</label> <input
						type="password" class="form-control" id="loginpassword"
						name="password" required="required" >
				</div>
				<br>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button type="submit" class="btn btn-primary">確認</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp"%>	