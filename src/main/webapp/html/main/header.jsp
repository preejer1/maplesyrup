<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">


<link href="../css/main.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">
.menu {
	background: none;
	border: 0;
	outline: none;
}

#main-Left {
	background-color: blue;
}

#main-Center {
	background-color: white;
}

#main-Right {
	background-color: green;
}
/* 왼쪽 부분 설정 */
#left-Up {
	background-color: green;
}

#left-Down {
	background-color: purple;
}
/* 왼쪽 부분 설정 */

/* 가운데 부분 설정 */
#center-Up {
	background-color: yellow;
}

#center-Down {
	background-color: white;
}
/* 가운데 부분 설정 */

/* 오른쪽 부분 설정 */
#right-Up {
	background-color: red;
}

#right-Down {
	background-color: blue;
}
/* 오른쪽 부분 설정 */



/*랭킹관련 시작*/
#content {
    margin-top: 11px;
    margin-bottom: 11px;
   border-style: solid;
    background: white;
    border-width: 3px;
    height: 100%;
    width:100%;
}

#rank-list a {
    color: black;
    text-decoration: none;
    padding:5px;
    
     
}

#rank-list a:hover {
    text-decoration: underline;
}

#rank-list {
    overflow: hidden;
    width: 160px;
    height: 20px;
    margin-bottom: 5px;
    padding: 3px;   
    
}

#rank-list dt {
    display: none;
}

#rank-list dd {
    position: relative;
    margin: 0;
}

#rank-list ol {
    position: absolute;
    top: 0;
    left: 0;
    margin: 0;
    padding: 0;
    list-style-type: none;
   
    
}

#rank-list li {
    height: 20px;
    line-height: 20px;
}
/*랭킹관련 종료*/
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$(".dropdown-menu").hide();
		var count = 0;
		$("#menuIcon").click(function() {
			count++;
			if (count % 2 == 0) {
				$(".dropdown-menu").hide();
			} else {
				$(".dropdown-menu").show();
			}
		})
		
		//랭킹관련 시작
		$(function() {
		    var count = $('#rank-list li').length;
		    var height = $('#rank-list li').height();

		    function step(index) {
		        $('#rank-list ol').delay(2000).animate({
		            top: -height * index,
		        }, 500, function() {
		            step((index + 1) % count);
		        });
		    }

		    step(1);
		});//랭킹관련 종료

	})
</script>
</head>
<body>

	<!-- header 시작 -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="navbar-wrapper">
			<div class="container-fluid" >
				<nav class="navbar navbar-fixed-top" style="background-color: black">
					<!-- header 내용 작성 -->
					<div class="container" style="background-color: blue">
										
						<div class="col-md-2" style="background-color: gray">

							<a class="navbar-brand" href="#">Maple Syrup2</a>
						</div>
						<!-- search 폼 시작 -->
						<div class="col-md-5" style="background-color: yellow">
							<form action="#" method="get">
								<div class="input-group"
									style="margin-top: 11px; margin-left: 50px">
									<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
									<input class="form-control" id="system-search" name="q"
										placeholder="Search for" required style="height: 28px">
									<span class="input-group-btn">
										<button type="submit" class="btn btn-default"
											style="height: 28px">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</span>
								</div>
							</form>
						</div>
						<!-- search 폼 종료 -->

						<!-- 랭킹 폼 시작 -->
						<div class="col-md-3" style=" background-color: green">
						<div id="content">
							<dl id="rank-list">
								<dt>실시간 급상승 검색어</dt>
								<dd>
									<ol>
										<li><a href="#">1 순위3</a></li>
										<li><a href="#">2 순위</a></li>
										<li><a href="#">3 순위</a></li>
										<li><a href="#">4 순위</a></li>
										<li><a href="#">5 순위</a></li>
										
									</ol>
								</dd>
							</dl>
						</div>
						</div>
						<!-- 랭킹 폼 종료 -->
						<!-- menu bar 시작 -->
						<div class="col-md-2" style="background-color: red">

							<ul class="nav navbar-nav navbar-right">
								<li class="dropdown">
									<button class="menu" id="menuIcon">
										<i class="fa fa-bars fa-2x"
											style="color: white; margin-top: 8px"></i>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">로그인</a></li>
										<li><a href="#">제휴문의</a></li>
										<li><a href="#">F&Q</a></li>

									</ul>
								</li>
							</ul>
						</div>
						<!-- menu bar 종료 -->

					</div>
					<!-- header 내용작성 끝 -->
				</nav>
			</div>
		</div>
	</nav>
	<!-- header 종료 -->

	<div class="container-fluid">

		<div class="col-md-1" id="main-blankLeft">left1</div>

		<div class="col-md-2" id="main-Left">
			<div class="row" id="left-Up" style="height: 234px">up2</div>
			<div class="row" id='left-Down' style="height: 700px">down</div>
		</div>

		<div class="col-md-6" id="main-Center">
			<div class="row" id="center-Up" style="height: 234px">up6</div>
			<div class="row" id='center-Down' style="height: 700px">down</div>
		</div>

		<div class="col-md-2" id="main-Right">
			<div class="row" id="right-Up" style="height: 234px">up2</div>
			<div class="row" id='right-Down' style="height: 700px">down</div>
		</div>

		<div class="col-md-1">left1</div>
	</div>

</body>
</html>