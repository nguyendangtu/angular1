<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="clearfix">
	<!-- Start  Logo & Naviagtion  -->
	<div class="navbar navbar-default navbar-top">
		<div class="container">
			<div class="navbar-header">
				<!-- Stat Toggle Nav Link For Mobiles -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<!-- End Toggle Nav Link For Mobiles -->
				<a class="navbar-brand" href="index.html"> <img alt=""
					src="<c:url value="/resources/images/logo-starhub.png"/>">
				</a>
			</div>
			<div class="navbar-collapse collapse">

				<!-- Start Navigation List -->
				<ul class="navigation">
					<li><a class="active" href="/personal">Personal</a>
						<ul class="sub-nav active">
							<li><a href="#">Store</a></li>
							<li><a class="active" href="/personal/mobile">Mobile</a></li>
							<li><a href="#">Broadband</a></li>
							<li><a href="#">TV</a></li>
							<li><a href="#">Voice</a></li>
							<li><a href="#">Hubbing</a></li>
							<li><a href="#">Promotions</a></li>
							<li><a href="#">Rewards</a></li>
							<li><a href="#">Support</a></li>
						</ul></li>
					<li><a href="#">Business</a>
						<ul class="sub-nav">
							<li><a href="#">Products & Services</a></li>
							<li><a href="#">Promotions</a></li>
							<li><a href="#">Channel Partners</a></li>
							<li><a href="#">Advertising</a></li>
							<li><a href="#">Innovators</a></li>
							<li><a href="#">Support</a></li>
						</ul></li>
					<li><a href="#">About Us</a>
						<ul class="sub-nav">
							<li><a href="#">Company Information</a></li>
							<li><a href="#">Corporate Sustainability and
									Responsibility</a></li>
							<li><a href="#">Investor Relations</a></li>
							<li><a href="#">Newsroom</a></li>
							<li><a href="#">Careers</a></li>
						</ul></li>
				</ul>

				<!-- End Navigation List -->
			</div>
		</div>
	</div>
	<!-- End Header Logo & Naviagtion -->
</header>