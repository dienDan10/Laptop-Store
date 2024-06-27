<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="laptopstore" />
    <meta name="author" content="Hỏi Dân IT" />
    <title>Orders</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<%@include file="../layout/header.jsp"%>
<div id="layoutSidenav">
    <%@include file="../layout/side-bar.jsp"%>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Dashboard</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active">Orders</li>
                </ol>
                <div class="row">
                    <div class="col col-sm-12 col-md-8 col-lg-6 col-xl-6 mx-auto">
                        <div class="card shadow ">
                            <div class="card-header bg-light">
                                <h3 class="fs-3 text-success text-center">Create User</h3>
                            </div>
                            <div class="card-body">
                                <%--@elvariable id="newUser" type=""--%>
                                <form:form class="form" action="/admin/user/create" method="POST"
                                           modelAttribute="newUser">
                                    <div class="row">
                                        <div class="form-group mb-3 col-6">
                                            <form:label path="email">Email</form:label>
                                            <form:input type="email" class="form-control" path="email" />
                                        </div>
                                        <div class="form-group mb-3 col-6">
                                            <form:label path="password">Password</form:label>
                                            <form:input type="password" class="form-control" path="password" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group mb-3 col-6">
                                            <form:label path="phone">Phone Number</form:label>
                                            <form:input class="form-control" path="phone" />
                                        </div>
                                        <div class="form-group mb-3 col-6">
                                            <form:label path="fullName">Full Name</form:label>
                                            <form:input class="form-control" path="fullName" />
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <form:label path="address">Address</form:label>
                                        <form:input class="form-control" path="address" />
                                    </div>
                                    <div class="row mb-3">
                                        <div class="form-group mb-3 col-6">
                                            <label>Role:</label>
                                            <select class="form-select" aria-label="Default select example">
                                                <c:forEach var="role" items="${roles}">
                                                    <option value="${role.name}">${role.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group mb-3 col-6">
                                            <label>Avatar:</label>
                                            <input type="file" class="form-control" id="avatarFile" accept=".png, .jpeg, .jpg, .webp">
                                        </div>
                                    </div>
                                    <div>
                                        <img src="" id="avatarPreview" width="100" height="100">
                                    </div>
                                    <button class="btn btn-sm btn-success">Submit</button>

                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="../layout/footer.jsp"%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>

</body>

</html>