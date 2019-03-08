<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row" ng-controller="bannersCtrl">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox" >
			<div class="item" ng-class="{active:!$index}" ng-repeat="banner in banners">
				<img alt="" ng-src="{{ banner.backgroundImage}}" class="carousel-item-bg" width="1536" height="300">
				<div class="carousel-contents">
                       <h2><span>{{ banner.title}}</span></h2>
                       <h3><span>{{ banner.text}}</span></h3>
                       <div class="">
                           <a class="btn-rarrow theme-light-green" ng-href="{{ banner.link}}"><span>Find out more</span></a>
                        </div>                            
                 </div>
			</div>
		</div>
		
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> 
		<a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>