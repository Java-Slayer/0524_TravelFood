<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>홈</title>
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
				<div class="text-end">
					<button type="button" class="btn btn-outline-primary me-2">
						로그인</button>
					<button type="button" class="btn btn-warning"
						data-bs-toggle="modal" data-bs-target="#modalSignin">회원가입</button>
				</div>
			</div>
		</div>
	</nav>
	<main class="container">
		<div id="myCarousel" class="carousel slide mb-6"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3" class="active"
					aria-current="true"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item">
					<img src="resources/img/homepic_1.png" width="100%" height="100%">
					<div class="container">
						<div class="carousel-caption text-start">
							<h1>아기자기한 골목식당</h1>
							<p class="opacity-75">현지인들만 아는 로컬식당</p>
							<p>
								<a class="btn btn-lg btn-primary" href="tList">더 보기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/img/homepic_2.png" width="100%" height="100%">
					<div class="container">
						<div class="carousel-caption">
							<h1>동네 맛집</h1>
							<p>동네 할머니가 해주시던 그 맛 그대로</p>
							<p>
								<a class="btn btn-lg btn-primary" href="tList">더 보기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item active">
					<img src="resources/img/homepic_3.jpg" width="100%" height="100%">
					<div class="container">
						<div class="carousel-caption text-end">
							<h1>착한 가격대</h1>
							<p>외국인이라고 덤탱이 씌우지 않는 착한 가격</p>
							<p>
								<a class="btn btn-lg btn-primary" href="tList">더 보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<hr>
		<div class="row g-5">
			<div class="col-md-8">
				<div class="row mb-2">
					<c:forEach items="${allListTF }" var="tfvo">
						<div class="col-md-6">
							<div
								class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
								<div class="col p-4 d-flex flex-column position-static">
									<strong class="d-inline-block mb-2 text-primary-emphasis">맛집</strong>
									<h3 class="mb-0">${tfvo.restaurant }</h3>
									<div class="mb-1 text-body-secondary">${tfvo.in_date }</div>
									<p class="card-text mb-auto">${tfvo.review }</p>
									<a href="detail?no=${tfvo.no }"
										class="icon-link gap-1 icon-link-hover stretched-link">
										자세히 보기 </a>
								</div>
								<div class="col-auto d-none d-lg-block"></div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-md-4">
				<div class="position-sticky" style="top: 2rem;">
					<div class="p-4 mb-3 bg-body-tertiary rounded">
						<h4 class="fst-italic">사이트 소개</h4>
						<p class="mb-0">모두가 평가단이 되어 전세계 숨겨진 골목맛집을 찾아드립니다.</p>
					</div>

					<div>
						<h4 class="fst-italic">댓글</h4>
						<ul class="list-unstyled">
							<c:forEach items="${cListAll }" var="tfcvo">
								<li><a
									class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
									href="detail?no=${tfcvo.no }"> <rect width="100%"
											height="100%" fill="#777"></rect> </svg>
										<div class="col-lg-8">
											<h6 class="mb-0">${tfcvo.tf_comment }</h6>
											<small class="text-body-secondary">${tfcvo.c_user }</small>
										</div>
								</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</main>
	<div class="container">
		<footer class="py-3 my-4">
			<p class="text-center text-body-secondary">개발자 : 이태형</p>
		</footer>
	</div>
	<!-- 회원가입 모달 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="modalSignin"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content rounded-4 shadow">
				<div class="modal-header p-5 pb-4 border-bottom-0">
					<h1 class="fw-bold mb-0 fs-2">회원가입</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body p-5 pt-0">
					<form action="signin" method="post">
						<div class="form-floating mb-3">
							<input type="text" class="form-control rounded-3"
								id="floatingInput" name="name"> <label
								for="floatingInput">이름</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control rounded-3"
								id="floatingInput" name="id"> <label for="floatingInput">아이디</label>
						</div>
						<div class="form-floating mb-3">
							<input type="password" class="form-control rounded-3"
								id="floatingPassword" name="pass"> <label
								for="floatingPassword">비밀번호</label>
						</div>
						<button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary"
							type="submit">가입</button>
						<small class="text-body-secondary">가입하면 일단 동의하는 겁니다?</small>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
