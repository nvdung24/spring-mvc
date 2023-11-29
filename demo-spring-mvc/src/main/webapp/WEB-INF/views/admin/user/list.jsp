<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="userURL" value="/home/user/list" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Sach User</title>
</head>
<body>
	<div class="main-content">
		<form action="#" id="formSubmit" method="get">

			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
								chủ</a></li>
					</ul>
					<!-- /.breadcrumb -->
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">

							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>User Name</th>
													<th>Full Name</th>
													<th>Password</th>
													<th>Status</th>
													<th>Role</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${model.listResult}">
													<tr>
														<td>${item.userName }</td>
														<td>${item.fullName }</td>
														<td>${item.password }</td>
														<td>${item.status }</td>
														<td>${item.role }</td>
														<td><img src="" width="100px" height="100px" /></td>
														<td><a href="#" class="btn btn-warning">Edit</a> <a
															href="#" class="btn btn-danger"
															onclick="return confirm('Are you sure to delete this record?')">Delete</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-2 container-fluid">
						<a href="/home/user/save" class="btn btn-success">Create User</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>