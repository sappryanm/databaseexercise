<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Fly By Night Bank - Home</title>
    <link rel="stylesheet" href="site.css" />
</head>
<body>
    <header>
        <img src="img/flybynightlogo.png" alt="Fly By Night Bank" />
        <p>At Fly By Night, we treat your money as if it's our own.</p>
    </header>
    <nav>
        <ul>
        		<c:url var="homeHref" value="/" />
            <li><a href="${homeHref}">Home</a></li>
            <li><a href="#">Log In or Enroll</a></li>
            <li><a href="#">Why Fly By Night</a></li>
            <c:url var="accountListHref" value="/accountList" />
            <li><a href="${accountListHref}">Bank Account List</a></li>
        </ul>
    </nav>