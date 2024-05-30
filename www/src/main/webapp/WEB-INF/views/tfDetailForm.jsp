<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집</title>
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
				</ul>
				<form class="d-flex" action="search" method="get">
					<input class="form-control me-2" type="search" placeholder="지역검색"
						aria-label="Search" name="searchKeyword">
				</form>
			</div>
		</div>
	</nav>
	<div class="container px-4 py-5">
		<h2 class="pb-2 border-bottom">맛집 정보</h2>

		<div
			class="row row-cols-1 row-cols-md-2 align-items-md-center g-5 py-5">
			<div class="col d-flex flex-column align-items-start gap-2">
				<h2 class="fw-bold text-body-emphasis">${detailFood.restaurant }</h2>
				<p class="text-body-secondary">♡ + ${detailFood.likes }</p>
				<p class="text-body-secondary">작성자 : ${detailFood.username }</p>
				<p class="text-body-secondary">지역 : ${detailFood.place }</p>
				<p class="text-body-secondary">후기 : ${detailFood.review }</p>
				<p class="text-body-secondary">작성일 : ${detailFood.in_date }</p>
				<c:forEach items="${attachList }" var="fname">
					<img src="download?filename=${fname }" class="img-fluid"
						width="100%" height="100%">
					<!-- <a href="download?filename=${fname }">${fname }</a> -->
				</c:forEach>
			</div>
			<div class="col">
				<div class="row row-cols-1 row-cols-sm-1 g-4">
					<div class="col d-flex flex-column gap-2">
						<div
							class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3">
						</div>
						<h4 class="fw-semibold mb-0 text-body-emphasis">댓글</h4>
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">작성자</th>
									<th scope="col">내용</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cListAll }" var="tfcvo">
									<tr>
										<td>${tfcvo.c_user }</td>
										<td>${tfcvo.tf_comment }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="mb-3">
							<form action="commentSave" method="post">
								<h4 class="fw-semibold mb-0 text-body-emphasis">댓글 작성</h4>
								<div class="row g-3 align-items-center">
									<div class="col-auto">
										<label for="inputPassword6" class="col-form-label">작성자</label>
									</div>
									<div class="col-auto">
										<input type="text" id="inputPassword6"
											class="form-control form-control-sm"
											aria-describedby="passwordHelpInline" name="c_user" required>
									</div>
								</div>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" name="tf_comment"></textarea>
								<input type="hidden" value="${detailFood.no }" name="no"
									required>
								<button type="submit" class="btn btn-outline-primary">
									댓글 달기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<footer class="py-3 my-4">
			<p class="text-center text-body-secondary">개발자 : 이태형</p>
		</footer>
	</div>
</body>
</html>