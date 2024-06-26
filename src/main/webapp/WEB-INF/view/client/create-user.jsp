<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User form</title>
    <!-- Latest compiled and minified CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->

</head>

<body>
<div class="container mt-5">
    <div class="row">
        <div class="col col-sm-12 col-md-8 col-lg-6 col-xl-6 mx-auto">
            <div class="card shadow border-success">
                <div class="card-header bg-light">
                    <h3 class="fs-3 text-success text-center">Create User</h3>
                </div>
                <div class="card-body">
                    <%--@elvariable id="newUser" type=""--%>
                    <form:form class="form" action="/admin/user/create" method="POST"
                               modelAttribute="newUser">
                        <div class="form-group mb-3">
                            <form:label path="email">Email</form:label>
                            <form:input type="email" class="form-control" path="email" />
                        </div>
                        <div class="form-group mb-3">
                            <form:label path="password">Password</form:label>
                            <form:input type="password" class="form-control" path="password" />
                        </div>
                        <div class="form-group mb-3">
                            <form:label path="phone">Phone Number</form:label>
                            <form:input class="form-control" path="phone" />
                        </div>
                        <div class="form-group mb-3">
                            <form:label path="fullName">Full Name</form:label>
                            <form:input class="form-control" path="fullName" />
                        </div>
                        <div class="form-group mb-3">
                            <form:label path="address">Address</form:label>
                            <form:input class="form-control" path="address" />
                        </div>

                        <button class="btn btn-sm btn-success">Submit</button>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</body>
</html>