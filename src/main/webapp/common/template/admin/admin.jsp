<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="adminTemplate">
	<tiles:putAttribute name="page-content">
		<div class="nav nav-tabs customer-tab">
			<ul>
				<li class="active"><a data-toggle="tab" href="#edit-banner">Edit
						Banner</a></li>
				<li><a data-toggle="tab" href="#edit-tabcontent">Edit Tab
						Content</a></li>
			</ul>
		</div>
		<div class="tab-content">
			<div id="edit-banner" class="tab-pane fade in active" ng-controller="bannersCtrl">
				<h2>Banner Admin</h2>
				<form class="form-horizontal" role="form">
					<div class="form-group">
				      <label class="control-label col-sm-2" for="sel1">Select banner:</label>
				      <div class="col-sm-10">
				        <select id="selectBanner" ng-model="bannerSelect"
							ng-options="banner as banner.title for banner in banners track by banner.id"
							class="form-control" id="sel1">
						</select>
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Title:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="bannerSelect.title">
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Background Image:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="bannerSelect.backgroundImage">
				        <input id="file-4" name="file-4[]" type="file" multiple>
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Text:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="bannerSelect.text">
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Link:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="bannerSelect.link">
				      </div>
				    </div>
				    <div class="form-group">        
				      <div class="col-sm-offset-2 col-sm-10">
				        <button ng-click="saveBanner(bannerSelect);" type="submit" class="btn btn-default">Submit</button>
				      </div>
				    </div>
				</form>
			</div>
			<div id="edit-tabcontent" class="tab-pane fade" ng-controller="tabContentsCtrl">
				<h2>TabContent Admin</h2>
				<form class="form-horizontal" role="form">
					<div class="form-group">
				      <label class="control-label col-sm-2" for="sel1">Select Tab Content:</label>
				      <div class="col-sm-10">
				        <select id="selectTabContent" ng-model="tabContentSelect"
							ng-options="tabcontent as tabcontent.name for tabcontent in tabcontents track by tabcontent.id"
							class="form-control" id="sel1">
						</select>
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="control-label col-sm-2" for="sel1">Select Tab Tile:</label>
				      <div class="col-sm-10">
				        <select id="selectTabTile" ng-model="tabTileSelect"
							ng-options="tabtile as tabtile.title for tabtile in tabContentSelect.tabTiles track by tabtile.id"
							class="form-control" id="sel1">
						</select>
				      </div>
				    </div>
				     <div class="form-group">
				      <label class="col-sm-2 control-label">Title:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="tabTileSelect.title">
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Image:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="tabTileSelect.image">
				        <input id="file-4" name="file-4[]" type="file" multiple>
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Text:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="tabTileSelect.text">
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="col-sm-2 control-label">Link:</label>
				      <div class="col-sm-10">          
				        <input class="form-control" type="text" ng-model="tabTileSelect.link">
				      </div>
				    </div>		
				    <div class="form-group">        
				      <div class="col-sm-offset-2 col-sm-10">
				        <button ng-click="saveTabTile(tabTileSelect);" type="submit" class="btn btn-default">Submit</button>
				      </div>
				    </div>		    
				</form>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>