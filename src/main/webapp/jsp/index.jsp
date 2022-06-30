<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
   <body>
      <form action = "ToDoServlet" method = "GET">
         New item: <input type = "text" name = "item" />
         <input type = "submit" value = "Submit" />
      </form>
		<tr>
			<th>Name</th>
			<th>createdAt</th>
		</tr>
		<c:forEach var="toDoItem" items="${toDoList }">
			<tr>
				<td>${toDoItem.title }</td>
				<td>${toDoItem.createdAt }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
