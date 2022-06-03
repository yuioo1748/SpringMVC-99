<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<%@include file="include/navbar.jsp"%>
<div class="container mt-3">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<h1 class="text-center mb-3">新增商品</h1>
			<form action="handle-product" method="post">
				<div class="form-group">
					<label for="name">產品名稱</label> <input type="text"
						class="form-control" id="name" name="name" placeholder="請填入商品名稱"
						required="required">
				</div>
				<br>
				<div class="form-group">
					<label for="description">產品敘述</label> <textarea type="text"
						class="form-control" rows="5" id="description" name="description" placeholder="請填入產品敘述"
						required="required"></textarea>
				</div>
				<br>
				<div class="form-group">
					<label for="price">產品價錢</label> <input type="text"
						class="form-control" id="price" name="price" placeholder="請填入價錢"
						required="required">
				</div>
				<br>
				<div class="form-group">
					<label for="pic">產品圖片</label> <input type="text"
						class="form-control" id="pic" name="pic" placeholder="請填入圖片名稱.jpg.png"
						required="required">
				</div>
				<br>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<a href="${pageContext.request.contextPath}/show-product"
						class="btn btn-outline-danger">上一頁</a>
					<button type="submit" class="btn btn-primary">新增</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp"%>