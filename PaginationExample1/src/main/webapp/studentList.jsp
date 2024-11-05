<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Coding With Sudhir</title>
<style type="text/css">
table {
	width: 95%;
	border-collapse: collapse;
	border-color: red;
	margin: 20px;
}

div {
	display: flex;
	justify-content: space-between;
	padding: 20px;
}
td{
text-align: center;
}
</style>
</head>
<body>

	<h2 style="text-align: center;">Student Details</h2>

	<table border="1" >
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

			<c:if test="${studentPage.hasNext()}">
				<a href="/students?page=${studentPage.number + 1}">Next</a>
			</c:if>
		</c:if>
	</div>

</body>
</html>
