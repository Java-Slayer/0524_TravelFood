<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 등록</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="http://localhost:8099/hom/">골목맛집</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost:8099/hom/">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="tList">전체보기</a></li>
					<li class="nav-item"><a class="nav-link" href="input">맛집등록</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="맛집검색"
						aria-label="Search">
					<button type="button" class="btn btn-outline-primary">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<form action="inputSave" method="post" encType="multipart/form-data">
		작성자<input type="text" name="username"> 장소<input type="text"
			name="place"> 식당이름<input type="text" name="restaurant">
		후기<input type="text" name="review"> 첨부파일 1<input type=file
			name="file"> 첨부파일 2<input type=file name="file"><input
			type="submit" value="저장">
	</form>

</body>
</html>