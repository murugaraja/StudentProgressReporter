<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.rec.studentdetails.pojo.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Upload File Response</title>
</head>
<body>
	<%-- Using JSP EL to get message attribute value from request scope --%>
	<h2>${requestScope.message}</h2>

	<form action="AttendanceReportSender" method="get">

		<TABLE border="1">
			<c:forEach items="${attendance}" var="student">
				<tr>
					<td><c:out value="${student.name}" /></td>
					<td><c:out value="${student.rollNo}" /></td>
					<td><c:out value="${student.presents}" /></td>
					<td><c:out value="${student.absents}" /></td>
					<td><c:out value="${student.mailId}" /></td>
					<td><c:out value="${student.phoneNo}" /></td>
					<td><c:out value="${student.attendancePercentage}" /></td>

					<td><c:out value="${Student.totalStudents}" /></td>
				</tr>
			</c:forEach>
		</TABLE>
		
Send report as: 
	SMS<input type="checkbox" name="SMS" value="SMS">
	Mail<input type="checkbox" name="Mail" value="Mail">
	<input type="submit" value="Sumbit"> 
	</form>
</body>
</html>