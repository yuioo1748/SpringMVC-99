<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<%@include file="include/navbar.jsp"%>
<div class="container mt-3">
	<div class="row">
		<div class="col-md-12">
			<h1>商品清單</h1>
			<br>
			<table class="table table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">產品ID</th>
						<th scope="col">產品名稱</th>
						<th scope="col">產品敘述</th>
						<th scope="col">產品價錢</th>
						<th scope="col">產品圖片</th>
						<th scope="col">刪除/修改</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="p" >
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.name}</td>
							<td>${p.description}</td>
							<td class="font-weight-bold">NT: ${p.price}</td>
							<td></td>
							<td>
								<a href="delete/${p.id}" onclick="return del()"><i class="fa-solid fa-trash-can"></i></a>
								<a href="update/${p.id}"><i class="fa-solid fa-file-pen"></i></a>
							</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<a href="add-product" class="btn btn-outline-success">
					新增商品
				</a>
			</div>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp"%>