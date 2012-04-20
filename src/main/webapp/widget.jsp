<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@ include file='/components/imports.jsp'%>
<%@ include file='/components/login_check.jsp'%>

<title>EDUKApp</title>
<script src="/scripts/widget_partial.js"></script>
<script src="/scripts/widget.js"></script>
<script src="/scripts/bootstrap-modal.js"></script>
<script src="/scripts/jquery.raty.min.js"></script>
</head>



<body>
	<input id="widgetid" type="hidden"
		value="<%=request.getParameter("id")%>" />
	<%@ include file='components/header.jsp'%>


	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Sidebar</li>
						<li><a href="/index.jsp"><i class="icon-home"></i>Home</a></li>						
						<li>
							<div class="modal hide" id="embedModal">
								<div class="modal-header">
									<a class="close" data-dismiss="modal">×</a>
									<h3>Embed widget</h3>
									<p>Use the following code</p>
								</div>
								<div class="modal-body">
									<pre class="prettyprint linenums"></pre>
									<p id="modal-body-lti"></p>
								</div>
								<div class="modal-footer">
									<!-- <a href="#" class="btn btn-primary">Save changes</a>--> 
									<a href="#" class="btn" data-dismiss="modal">Close</a>
								</div>
							</div> 
							
							<a id="embedModal-link" data-toggle="modal" data-target="#embedModal" href="#embedModal"> <i
								class="icon-share-alt"></i> Embed
						</a>
						</li>
						<li><a href="#"><i class="icon-download"></i>Download</a></li>
						<li><a href="#"><i class="icon-tag"></i>Tag</a></li>
						<li><a href="#"><i class="icon-comment"></i>Review</a></li>
						<shiro:hasRole name="admin">
							<li><a href="#"><i class="icon-remove"></i>Delete widget</a></li>
						</shiro:hasRole>
					</ul>
				</div>
				<!--/.well -->
			</div>
			
			<!--/span-->
			<div class="span9">
				<div class="row-fluid">
					<h1 id="widget_name">Widget name</h1>
					<p id="upload-info" class="upload-info">no upload info
						available</p>
				</div>
				
				<div class="row-fluid">
						<div id="widget-preview"></div>

						<p id="widget-stats-bar" class="label">
							<span id="widget-usage"> <i
								class="icon-download icon-white"></i> 3 downloads <br> <i
								class="icon-share-alt icon-white"></i>16 embeds<br>
							</span> 
							average rating:<span id="widget-rating"></span><br/>
							<shiro:authenticated>
							your rating:<span id="rating-module"></span>
							</shiro:authenticated>
							<shiro:notAuthenticated>
							Login to rate
							</shiro:notAuthenticated>
						</p>
				</div>

				<div class="row-fluid">
						<h6>Descripiton:</h6>
						<dl id="widget-description">Lorem Ipsum is simply dummy text
							of the printing and typesetting industry. Lorem Ipsum has been
							the industry's standard dummy text ever since the 1500s, when an
							unknown printer took a galley of type and scrambled it to make a
							type specimen book. It has survived not only five centuries, but
							also the leap into electronic typesetting, remaining essentially
							unchanged. It was popularised in the 1960s with the release of
							Letraset sheets containing Lorem Ipsum passages, and more
							recently with desktop publishing software like Aldus PageMaker
							including versions of Lorem Ipsum.
						</dl>
						<shiro:authenticated><a id="edit-widget-information" href="#">edit</a></shiro:authenticated>
						<h6>Tagged as:</h6>
						<div id="widget-tags"></div>
						<shiro:authenticated><a id="add-tag">add tag</a></shiro:authenticated>

						<h6>Useful for:</h6>
						<div id="widget-useful-for">
							
						</div>
						<shiro:authenticated><a id="add-affordance">add affordance</a></shiro:authenticated>
				</div>
				
				<div class="row-fluid">				
                    <h6>Related widgets</h6>
					<ul id="related-widgets" class="thumbnails"></ul>
				</div>

				<div class="row-fluid">
					<div id="user-reviews">
						<h6>User reviews</h6>
						<shiro:authenticated><p id="write-a-review-anchor">
							<a href="#write-a-review">Write a review</a>
						</p></shiro:authenticated>
						<div id="user-reviews-list"></div>
					</div>
					<div class="span4">&nbsp;</div>
				</div>
			</div>				


				<%@ include file='components/footer.jsp'%>

		</div>
		<!--/row-->
		<hr>
	</div>


</body>
</html>