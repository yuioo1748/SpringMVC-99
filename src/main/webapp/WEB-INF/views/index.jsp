<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
</head>
<body
	style="background: url(images/pic12.jpg); background-size: 100% 100%; background-attachment: fixed;">
<%@include file="include/navbar.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<div id="carouselExampleFade" class="carousel slide carousel-fade"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<a href="https://chiikawamarket.jp/">
							<img src="images/pic8.jpg" class="d-block w-100" alt="..." >
							</a>
						</div>
						<div class="carousel-item">
							<a href="https://twitter.com/gtchiikawa">
								<img src="images/pic9.jpg" class="d-block w-100" alt="...">
							</a>
						</div>
						<div class="carousel-item">
							<a href="https://twitter.com/chiikawa_kouhou">
								<img src="images/pic10.jpg" class="d-block w-100" alt="...">
							</a>
						</div>
						<div class="carousel-item">
							<a href="https://twitter.com/chiikawa_land">
								<img src="images/pic11.jpg" class="d-block w-100" alt="...">
							</a>	
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleFade" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleFade" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<!-- 最新影片 -->
	<h5 class="text-center mb-3 fw-bold">最新影片</h5>
	<h3 class="text-center mb-3 fw-bold">NEW VIDEO</h3>
	<style type="text/css">.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0;   width:100%; height: 100%; }
	</style>
	<div class="container">
		<div class="embed-container embedvideo"><iframe allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="" frameborder="0" height="315" src="https://www.youtube-nocookie.com/embed/QLR3Leoa7Os?rel=0" width="560"></iframe></div>
	</div>
	<br><br>
	<!-- 最新商品 -->
	<h5 class="text-center mb-3 fw-bold">最新商品</h5>
	<h3 class="text-center mb-3 fw-bold">NEW ITEM</h3>
	<br><br>
	<div class="container">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach items="${product}" var="p" >
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