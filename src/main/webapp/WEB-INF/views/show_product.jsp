<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<%@include file="include/navbar.jsp"%>


 <!-- 先載入 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
    integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
    crossorigin="anonymous"></script>
  <!-- 先載入 END-->


<!-- dataTable js -->
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>


<div class="container mt-3">
	<div class="row">
		<div class="col-md-12">
			<h1>商品清單</h1>
			<br>
			<table id="table_id" class="table table-hover">
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
					 <!-- 這邊用$('tbody').append放入資料 -->
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
 <script>
	$(document).ready( function () {
		 $('tbody').append(
	              `
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
				`
	            );
	    $('#table_id').DataTable();
	} );
</script>

<%@include file="include/footer.jsp"%>