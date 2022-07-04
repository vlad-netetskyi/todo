 <%@page import="java.util.List"%>
 <%@page import="java.util.ArrayList"%>
 <%@page import="com.github.vlad.netetskyi.model.ToDoItem"%>
<html
   <body>
      <form action = "ToDoServlet" method = "POST">
         New item: <input type = "text" name = "item" />
         <input type = "submit" value = "Add" />
      </form>
      <table border="1" cellpadding="2" cellspacing="2">
      <tr>
      			<th>Name</th>
      			<th>Created at</th>
      		</tr>
		<%
          ArrayList<ToDoItem> toDoList=(ArrayList<ToDoItem>) request.getAttribute("toDoList");
          for (ToDoItem item: toDoList) {
        %>
          <tr>
            <td><%=item.title()%></td>
            <td><%=item.createdAt()%></td>
           </tr>
        <%}%>
        </table>
</body>
</html>