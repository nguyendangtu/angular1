<div class="tabcontainer-section" ng-controller="tabContentsCtrl">
	<div class="nav nav-tabs customer-tab">
		<ul>
			<li ng-class="{active:!$index}" ng-repeat="tabContent in tabcontents">
				<a ng-href="{{'#'+ tabContent.id}}" data-toggle="tab">{{tabContent.name}}</a>
			</li>
		</ul>
	</div>

	<div class="tab-content">
		<div id="{{tabContent.id}}" ng-class="{active:!$index}"
			class="tab-pane" ng-repeat="tabContent in tabcontents">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-xs-6"
						ng-repeat="tabtile in tabContent.tabTiles">
						<a ng-href="{{tabtile.link}}">
							<div class="inner">
								<div class="icon-wrap shop-icon">
									<!-- <img ng-src="{{ tabtile.image }}" class="key-icon" alt=""/> -->
								 </div>
								<div class="cell-content">
									<h3>{{tabtile.title}}</h3>
									<span>{{tabtile.text}}</span>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>