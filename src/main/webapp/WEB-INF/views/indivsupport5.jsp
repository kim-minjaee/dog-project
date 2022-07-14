<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<html>
<head>
<title>독특한 사이트</title>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/headercss.css">
<script type="text/javascript">
var id = "${memberId}";
	var type = "${memberType}";
	$(function() {
		console.log(id);
		if (id == "") {
			$(".suc").css("display", "inline-block");
			$(".bef").css("display", "none");
			$(".mypage").css("display", "none");
			$(".seller").css("display", "none");
			$(".admin").css("display", "none");
		} else if (id != "" && type == 1) {
			$(".suc").css("display", "none");
			$(".bef").css("display", "inline-block");
			$(".mypage").css("display", "inline-block");
			$(".seller").css("display", "none");
			$(".admin").css("display", "none");
		}
		else if (id != "" && type == 2) {
			$(".suc").css("display", "none");
			$(".bef").css("display", "inline-block");
			$(".mypage").css("display", "none");
			$(".seller").css("display", "inline-block");
			$(".admin").css("display", "none");
		}
		else if (id != "" && type == 3) {
			$(".suc").css("display", "none");
			$(".bef").css("display", "inline-block");
			$(".mypage").css("display", "none");
			$(".seller").css("display", "none");
			$(".admin").css("display", "inline-block");
		};

		//메시지 출력 부분
		var msg = "${msg}";
		if (msg != "") {
			alert(msg);
		}

	});
</script>
<head>
<title>Write</title>
<style>
section {
	margin-top: 25px;
}

.div-1 {
	display: inline-block;
	width: 100px;
}

.div-2 {
	display: inline-block;
}

textarea {
	resize: none;
	width: 300px;
	height: 200px;
}

.button1 {
	margin-right: 10px;
	padding: 10px;
}

body {
	
	background: #eee;
}

.gradient-brand-color {
	background-image: -webkit-linear-gradient(0deg, #376be6 0%, #6470ef 100%);
	background-image: -ms-linear-gradient(0deg, #376be6 0%, #6470ef 100%);
	color: #fff;
}

.contact-info__wrapper {
	overflow: hidden;
	border-radius: .625rem .625rem 0 0
}

@media ( min-width : 1024px) {
	.contact-info__wrapper {
		border-radius: 0 .625rem .625rem 0;
		padding: 5rem !important
	}
}

.contact-info__list span.position-absolute {
	left: 0
}

.z-index-101 {
	z-index: 101;
}

.list-style--none {
	list-style: none;
}

.contact__wrapper {
	background-color: #fff;
	border-radius: 0 0 .625rem .625rem
}

@media ( min-width : 1024px) {
	.contact__wrapper {
		border-radius: .625rem 0 .625rem .625rem
	}
}

@media ( min-width : 1024px) {
	.contact-form__wrapper {
		padding: 5rem !important
	}
}

.shadow-lg, .shadow-lg--on-hover:hover {
	box-shadow: 0 1rem 3rem rgba(132, 138, 163, 0.1) !important;
}
</style>
</head>

<body>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
		rel="stylesheet">
	<header>
		<jsp:include page="./centerheader.jsp" />
	</header>
	<section class="wrap">
		<div class="container">
			<div class="contact__wrapper shadow-lg mt-n9">
				<div class="row no-gutters">
					<div
						class="col-lg-5 contact-info__wrapper gradient-brand-color p-5 order-lg-2">
						<h3 class="color--white mb-5">Get in Touch</h3>

						<ul
							class="contact-info__list list-style--none position-relative z-index-101">
							<li class="mb-4 pl-4"><span class="position-absolute"><i
									class="fas fa-envelope"></i></span> &nbsp; admin@naver.com</li>
							<li class="mb-4 pl-4"><span class="position-absolute"><i
									class="fas fa-phone"></i></span> &nbsp; (000)-123-4567</li>
							<li class="mb-4 pl-4"><span class="position-absolute"><i
									class="fas fa-map-marker-alt"></i></span> &nbsp; 인천 미추홀구 매소홀로488번길
								6-32 태승빌딩 3~5층 (우)22223</li>

						</ul>


					</div>
					<c:if test="${sList.msType eq '2'}">
						<div class="col-lg-7 contact-form__wrapper p-5 order-lg-1">
							<form action="./addeletesupport" method="get"
								class="contact-form form-validate" novalidate="novalidate">
								<div class="row">
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="option">문의유형</label> <select
												class="form-control" id="option" name="msType">
												<option value="2" selected>장례</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<input type="hidden" name="msNum" value="${sList.msNum}">
											<label for="customerName">작성자</label> <input type="text"
												class="form-control" id="memberName" name="memberName"
												placeholder="Appleseed" value="${sList.memberName}"
												readonly>

										</div>
									</div>

									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="email">이메일</label> <input
												type="text" class="form-control" id="email"
												name="memberId" placeholder="welcome@doglife.com"
												value="${sList.memberId}" readonly>
										</div>
									</div>

									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label for="phone">연락처</label> <input type="tel"
												class="form-control" id="memberPnum" name="memberPnum"
												placeholder="010-1122-3344" value="${sList.memberPnum}"
												readonly>
										</div>
									</div>
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="title">제목</label> <input
												type="text" class="form-control" id="title" name="msTitle"
												value="${sList.msTitle}" readonly>
										</div>
									</div>
									<div class="col-sm-12 mb-3">
										<div class="form-group">
											<label class="required-field" for="message">내용</label>
											<textarea class="form-control" id="message" name="msQuestion"
												rows="4" readonly>${sList.msQuestion}</textarea>
										</div>
									</div>

									<div class="col-sm-12 mb-3">
										<div class="form-group">
											<c:choose>
												<c:when test="${sList.msAnswer ne null}">
													<label class="required-field" for="message">답변</label>
													<textarea class="form-control" id="message" name="msAnswer"
														rows="4" readonly>${sList.msAnswer}</textarea>
												</c:when>
												<c:otherwise>
													<label class="required-field" for="message">답변</label>
													<textarea class="form-control" id="message" name="msAnswer"
														rows="4" >${sList.msAnswer}</textarea>
												</c:otherwise>
											</c:choose>
										</div>
									</div>

									<div class="col-sm-12 mb-3" style="text-align: center;">
										<button type="submit" class="btn btn-primary">삭제</button>
										<c:choose>
										<c:when test="${sList.msAnswer ne null}">
										<button style="display : none;" formaction="./regianwer"
											class="btn btn-primary">등록</button>
											</c:when>
										</c:choose>
										<c:choose>
										<c:when test="${sList.msAnswer eq null}">
										<button type="submit" formaction="./regianwer"
											class="btn btn-primary">등록</button>
											</c:when>
										</c:choose>
									</div>

								</div>
							</form>
						</div>
					</c:if>
					<c:if test="${sList.msType eq '3'}">
						<div class="col-lg-7 contact-form__wrapper p-5 order-lg-1">
							<form action="./addeletesupport" method="get"
								class="contact-form form-validate" novalidate="novalidate">
								<div class="row">
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="option">문의유형</label> <select
												class="form-control" id="option" name="msType">
												<option value="3" selected>Shop</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<input type="hidden" name="msNum" value="${sList.msNum}">
											<label for="customerName">작성자</label> <input type="text"
												class="form-control" id="memberName" name="memberName"
												placeholder="Appleseed" value="${sList.memberName}"
												readonly>

										</div>
									</div>

									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="email">이메일</label> <input
												type="text" class="form-control" id="email"
												name="memberId" placeholder="welcome@doglife.com"
												value="${sList.memberId}" readonly>
										</div>
									</div>

									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label for="phone">연락처</label> <input type="tel"
												class="form-control" id="memberPnum" name="memberPnum"
												placeholder="010-1122-3344" value="${sList.memberPnum}"
												readonly>
										</div>
									</div>
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="title">제목</label> <input
												type="text" class="form-control" id="title" name="msTitle"
												value="${sList.msTitle}" readonly>
										</div>
									</div>
									<div class="col-sm-12 mb-3">
										<div class="form-group">
											<label class="required-field" for="message">내용</label>
											<textarea class="form-control" id="message" name="msQuestion"
												rows="4" readonly>${sList.msQuestion}</textarea>
										</div>
									</div>
									<div class="col-sm-12 mb-3">
										<div class="form-group">
											<c:choose>
												<c:when test="${sList.msAnswer ne null}">
													<label class="required-field" for="message">답변</label>
													<textarea class="form-control" id="message" name="msAnswer"
														rows="4" readonly>${sList.msAnswer}</textarea>
												</c:when>
												<c:otherwise>
													<label class="required-field" for="message">답변</label>
													<textarea class="form-control" id="message" name="msAnswer"
														rows="4" >${sList.msAnswer}</textarea>
												</c:otherwise>
											</c:choose>
										</div>
									</div>

									<div class="col-sm-12 mb-3" style="text-align: center;">
										<button type="submit" class="btn btn-primary">삭제</button>
										<c:choose>
										<c:when test="${sList.msAnswer ne null}">
										<button style="display : none;" formaction="./regianwer"
											class="btn btn-primary">등록</button>
											</c:when>
										</c:choose>
										<c:choose>
										<c:when test="${sList.msAnswer eq null}">
										<button type="submit" formaction="./regianwer"
											class="btn btn-primary">등록</button>
											</c:when>
										</c:choose>
									</div>

								</div>
							</form>
						</div>
					</c:if>
					<c:if test="${sList.msType eq '1'}">
						<div class="col-lg-7 contact-form__wrapper p-5 order-lg-1">
							<form action="./addeletesupport" method="get"
								class="contact-form form-validate" novalidate="novalidate">
								<div class="row">
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="option">문의유형</label> <select
												class="form-control" id="option" name="msType">
												<option value="1" selected>입양</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<input type="hidden" name="msNum" value="${sList.msNum}">
											<label for="customerName">작성자</label> <input type="text"
												class="form-control" id="memberName" name="memberName"
												placeholder="Appleseed" value="${sList.memberName}"
												readonly>


										</div>
									</div>

									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="email">이메일</label> <input
												type="text" class="form-control" id="email"
												name="memberId" placeholder="welcome@doglife.com"
												value="${sList.memberId}" readonly>
										</div>
									</div>

									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label for="phone">연락처</label> <input type="tel"
												class="form-control" id="memberPnum" name="memberPnum"
												placeholder="010-1122-3344" value="${sList.memberPnum}"
												readonly>
										</div>
									</div>
									<div class="col-sm-6 mb-3">
										<div class="form-group">
											<label class="required-field" for="title">제목</label> <input
												type="text" class="form-control" id="title" name="msTitle"
												value="${sList.msTitle}" readonly>
										</div>
									</div>
									<div class="col-sm-12 mb-3">
										<div class="form-group">
											<label class="required-field" for="message">내용</label>
											<textarea class="form-control" id="message" name="msQuestion"
												rows="4" readonly>${sList.msQuestion}</textarea>
										</div>
									</div>
									<div class="col-sm-12 mb-3">
										<div class="form-group">
											<c:choose>
												<c:when test="${sList.msAnswer ne null}">
													<label class="required-field" for="message">답변</label>
													<textarea class="form-control" id="message" name="msAnswer"
														rows="4" readonly>${sList.msAnswer}</textarea>
												</c:when>
												<c:otherwise>
													<label class="required-field" for="message">답변</label>
													<textarea class="form-control" id="message" name="msAnswer"
														rows="4" >${sList.msAnswer}</textarea>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
									<div class="col-sm-12 mb-3" style="text-align: center;">
										<button type="submit" class="btn btn-primary">삭제</button>										
										<c:choose>
										<c:when test="${sList.msAnswer ne null}">
										<button style="display : none;" formaction="./regianwer"
											class="btn btn-primary">등록</button>
											</c:when>
										</c:choose>
										<c:choose>
										<c:when test="${sList.msAnswer eq null}">
										<button type="submit" formaction="./regianwer"
											class="btn btn-primary">등록</button>
											</c:when>
										</c:choose>
									</div>

								</div>
							</form>
						</div>
					</c:if>
					<!-- End Contact Form Wrapper -->

				</div>
			</div>
		</div>

	</section>

</body>
</html>
