<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
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
	<div class="container-md">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">작성자</th>
					<th scope="col">장소</th>
					<th scope="col">맛집</th>
					<th scope="col">후기</th>
					<th scope="col">작성일</th>
					<th scope="col">삭제/수정</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allListTF }" var="tfvo">
					<tr>
						<td>${tfvo.no }</td>
						<td>${tfvo.username }</td>
						<td>${tfvo.place }</td>
						<td>${tfvo.restaurant }</td>
						<td>${tfvo.review }</td>
						<td>${tfvo.in_date }</td>
						<td>
							<div class="btn-group" role="group"
								aria-label="Basic outlined example">
								<button type="button" class="btn btn-outline-danger">
									<a href="delete?no=${tfvo.no }">삭제</a>
								</button>
								<button type="button" class="btn btn-outline-primary"
									data-bs-toggle="modal" data-bs-target="#modifyModal"
									onclick="modify(${tfvo.no })">수정</button>
								<button type="button" class="btn btn-outline-primary"
									data-bs-toggle="modal" data-bs-target="#detailModal">
									<a href="detail?no=${tfvo.no }">자세히</a>
								</button>
								<button type="button" class="btn btn-outline-primary">
									<a href="updateLikes?no=${tfvo.no }">♡ + <span>${tfvo.likes }</span></a>
								</button>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:if test="${pagevo.prev }">
					<li class="page-item"><a class="page-link"
						href="search?searchKeyword=${pagevo.searchKeyword}&page=${pagevo.startPage -1 }">이전</a></li>
				</c:if>
				<c:forEach begin="${pagevo.startPage }" end="${pagevo.endPage }"
					var="idx">
					<li class="page-item"><a class="page-link"
						href="search?searchKeyword=${pagevo.searchKeyword}&page=${idx}">${idx}</a></li>
				</c:forEach>
				<c:if test="${pagevo.next }">
					<li class="page-item"><a class="page-link"
						href="search?searchKeyword=${pagevo.searchKeyword}&page=${pagevo.endPage +1 }">다음</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<div class="container">
		<footer class="py-3 my-4">
			<p class="text-center text-body-secondary">개발자 : 이태형</p>
		</footer>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modifyModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content rounded-4 shadow">
				<div class="modal-header p-5 pb-4 border-bottom-0">
					<h1 class="fw-bold mb-0 fs-2">맛집 수정</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form action="modifySave" method="post">
					<div class="modal-body p-5 pt-0">
						<div class="form-floating mb-3">
							<input type="text" class="form-control rounded-3"
								id="floatingInput" name="review" required> <label
								for="floatingInput">후기</label> <input type="hidden" value=""
								name="no" id="modNo">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script>
	const myModal = document.getElementById('myModal')
	const myInput = document.getElementById('myInput')

	myModal.addEventListener('shown.bs.modal', () => {
		 myInput.focus()
	})	

	function modify(tfno){
		var no = document.getElementById('modNo');
		no.value = tfno;
	}
</script>
</html>