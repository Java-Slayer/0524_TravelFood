<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body class="bg-body-tertiary">
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="http://localhost:8099/hom/">골목맛집</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost:8099/hom/">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="tList">전체보기</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="맛집검색"
						aria-label="Search">
					<button type="button" class="btn btn-outline-primary">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<div class="container">
		<main>
			<div class="py-5 text-center">
				<h2>정보 수정</h2>
			</div>
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					<h4 class="mb-3">${restaurant }</h4>
					<form action="modifySave" method="post">
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="firstName" class="form-label">후기</label> <input
									type="text" class="form-control" id="firstName" name="review">
								<input type="hidden" value="${no }" name="no">
							</div>
							<hr class="my-4">
							<button class="w-100 btn btn-primary btn-lg" type="submit">수정
								완료</button>
						</div>
					</form>
				</div>
			</div>
		</main>
	</div>
</body>

<script>
	const myModal = document.getElementById('myModal')
	const myInput = document.getElementById('myInput')

	myModal.addEventListener('shown.bs.modal', () => {
  		myInput.focus()
	})
</script>
</html>