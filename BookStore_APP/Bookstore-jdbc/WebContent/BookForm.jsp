<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books Store Application</title>
    <style>
        #bookform {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
        }

        #bookform td, #bookform th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #bookform tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #bookform tr:hover {
            background-color: #ddd;
        }

        #bookform th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }

        .block {
            display: block;
            width: 100%;
            padding: 5px 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            text-align: center;
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
		<c:if test="${book != null}">
		<form action="update" method="post">
			</c:if>
			<c:if test="${book == null}">
			<form action="insert" method="post">
				</c:if>
				<table id="bookform">
					<caption>
						<h2>
							<c:if test="${book != null}">
								Edit Book
							</c:if>
							<c:if test="${book == null}">
								Add New Book
							</c:if>
						</h2>
					</caption>
					<c:if test="${book != null}">
						<input type="hidden" name="id" value="<c:out value='${book.id}' />"/>
					</c:if>
					<tr>
						<th>Title:</th>
						<td>
							<input type="text" name="title" size="45"
								   value="<c:out value='${book.title}' />"
								   required/>
						</td>
					</tr>
					<tr>
						<th>Author:</th>
						<td>
							<input type="text" name="author" size="45"
								   value="<c:out value='${book.author}' />"
								   required/>
						</td>
					</tr>
					<tr>
						<th>Price:</th>
						<td>
							<input type="text" name="price" size="45"
								   value="<c:out value='${book.price}' />"
								   required/>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<button class="block" type="submit">Save</button>
						</td>
					</tr>
				</table>
			</form>
	</div>
</body>
</html>
