<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details</title>
    <!-- Latest compiled and minified CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->

</head>

<body>

<div class="container mt-5">
    <div class="row">
        <div class="col col-md-6">
            <div class="d-flex flex-row justify-content-between mb-3">
                <h3 class="fs-3">User Detail</h3>
            </div>
            <hr>
            <ul class="list-group mb-3">
                <li class="list-group-item list-group-item-secondary">User Detail</li>
                <li class="list-group-item">ID: ${user.id}</li>
                <li class="list-group-item">Email: ${user.email}</li>
                <li class="list-group-item">Full Name: ${user.fullName}</li>
                <li class="list-group-item">Address: ${user.address}</li>
            </ul>
            <a class="btn btn-success" href="/admin/user">Back</a>
        </div>
    </div>
</div>

<script src="/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</body>
</html>