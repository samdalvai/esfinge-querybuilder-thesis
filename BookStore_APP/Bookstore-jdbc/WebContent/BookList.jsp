<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Books Store Application</title>
    <style>
        #bookslist {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 80%;
        }

        #bookslist td, #bookslist th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #bookslist tr:nth-child(even){background-color: #f2f2f2;}

        #bookslist tr:hover {background-color: #ddd;}

        #bookslist th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
	<div style="text-align: center;">
		<h1>Books Management</h1>
        <h2>
        	<a href="new">Add New Book</a>
        	<a href="list">List All Books</a>
        </h2>
	</div>
    <div align="center">
        <table id="bookslist">
            <caption><h2>List of Books</h2></caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th colspan="2">Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${book.id}' />">Edit</a>
                    </td>
                    <td>
                        <a href="delete?id=<c:out value='${book.id}' />">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
