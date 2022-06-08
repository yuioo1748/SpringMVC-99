<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
</head>
<body
	style="background: url(images/pic12.jpg); background-size: 100% 100%; background-attachment: fixed;">
<%@include file="include/navbar.jsp"%>
<!-- 最新商品 -->
	<h5 class="text-center mb-3 fw-bold" style="font-size: 2.5rem;">最新商品</h5>
	<br><br>
	<div class="container">
		<div class="row row-cols-1 row-cols-md-4 g-5">
			<c:forEach items="${products}" var="p" >
					<div class="card-group">
						<div class="card">
							<img src="${p.pic}" class="card-img-top" alt="...">
							<div class="card-body">
							    <h5 class="card-title">商品名稱: ${p.name}</h5>
							    <hr>
							     <p class="card-text">NT: ${p.price}</p>
							</div>
						</div>
					</div>	
			</c:forEach>
		</div>
	</div>	
<%@include file="include/footer.jsp"%>