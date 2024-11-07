<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Coding With Sudhir</title>
<style type="text/css">
table {
	width: 95%;
	border-collapse: collapse;
	border-color: blue;
	margin: 20px;
}

div {
	display: flex;
	justify-content: space-between;
	padding: 20px;
}

td {
	text-align: center;
}

tr:nth-of-type(even) {
	background-color: gray;
}

tr, a {
	font-size: xx-large;
}

.page-link {
	display: inline-block;
	width: 30px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	border-radius: 50%; /
	background-color: #007bff;
	color: black;
	text-decoration: none;
	font-weight: bold;
	font-size: 16px;
	margin: 0 5px;
}

.page-link:hover {
	background-color: #0056b3;
	color: white;
}
</style>
</head>
<body>

	<h1 style="text-align: center;">Student Details</h1>

	<table border="1">
		<thead>
			<tr>
				<th>Roll Number</th>
				<th>Name</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${studentPage.content}">
				<tr>
					<td>${student.rollNumber}</td>
					<td>${student.name}</td>
					<td>${student.email}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div>
		<c:if test="${studentPage.hasContent()}">
			<c:if test="${studentPage.hasPrevious()}">
				<a href="/students?page=${studentPage.number - 1}">Previous</a>
			</c:if>
			<c:if test="${!studentPage.hasPrevious()}">
				<a href="#"
					style="color: #ccc; pointer-events: none; text-decoration: none;">Previous</a>
			</c:if>
			<c:forEach var="i" begin="0" end="${studentPage.getTotalPages() - 1}">
				<a href="/students?page=${i}" class="page-link">${i + 1}</a>
			</c:forEach>

			<c:if test="${studentPage.hasNext()}">
				<a href="/students?page=${studentPage.number + 1}">Next</a>
			</c:if>
			<c:if test="${!studentPage.hasNext()}">
				<a href="#"
					style="color: #ccc; pointer-events: none; text-decoration: none;">Next</a>
			</c:if>

		</c:if>
	</div>

</body>
</html>
