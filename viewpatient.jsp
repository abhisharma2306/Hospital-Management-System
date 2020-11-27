<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<body>

<table border="1">
<tr>
    <td>PId</td>
    <td>First name</td>
    <td>Last name</td>
    <td>Age</td>
    <td>Gender</td>
    <td>Marital Status</td>
    <td>Date</td>
    <td>Address</td>
    <td>City</td>
    <td>Phone No.</td>
    <td>Ward No.</td>
    <td>Bed No.</td>
</tr>
        
        
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
//    PreparedStatement pst = con.prepareStatement("SELECT * FROM addpatient");
//    ResultSet rs=pst.executeQuery();         
//       
//    while(rs.next())
//    {
//        System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+" "+rs.getString(8)+" "+rs.getString(9)+" "+rs.getString(10)+" "+rs.getString(11)+" "+rs.getString(12));
//    }

    PreparedStatement pst = con.prepareStatement("SELECT * FROM addpatient");
    ResultSet rs = pst.executeQuery();
    while(rs.next()){
    %>
        <tr>
            <td><%=rs.getString("pId") %></td>
            <td><%=rs.getString("fName") %></td>
            <td><%=rs.getString("lName") %></td>
            <td><%=rs.getString("age") %></td>
            <td><%=rs.getString("gender") %></td>
            <td><%=rs.getString("mStatus") %></td>
            <td><%=rs.getString("date") %></td>
            <td><%=rs.getString("address") %></td>
            <td><%=rs.getString("city") %></td>
            <td><%=rs.getString("phoneNo") %></td>
            <td><%=rs.getString("wardNo") %></td>
            <td><%=rs.getString("bedNo") %></td>
        </tr>
        <%
            }
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</body>
</html>




<!-- if(rs.next())
    {
        pst.getString(1,pId);
        pst.getString(1,fName);
        response.sendRedirect("viewpatients.jsp");
    }
    else
    {
        request.setAttribute("MSG", "Invalid ID or Password");
        request.getRequestDispatcher("viewpatients.jsp").forward(request, response);
    } -->







<!--Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("select * from addpatient");  %>
             System.out.println("<table border=1 width=50% height=50%>");  
             out.println("<tr><th>pId</th><th>fName</th><th>lName</th><th>age</th><th>gender</th><th>mStatus</th><th>date</th><th>address</th><th>city</th><th>phoneNo</th><th>wardNo</th><th>bedNo</th><tr>");  
             while (rs.next()) 
             {  
                 String n = rs.getString("pId");  
                 String n1 = rs.getString("fName");
                 String n2 = rs.getString("age");
                 String n3 = rs.getString("gender");
                 String n4 = rs.getString("mStatus");
                 String n5 = rs.getString("date");
                 String n6 = rs.getString("address");
                 String n7 = rs.getString("city");
                 String n8 = rs.getString("phoneNo");
                 String n9 = rs.getString("wardNo");
                 String n10 = rs.getString("bedNo");
                 out.println("<tr><td>" + n + "</td><td>" + n1 + "</td><td>" + n2 + "</td><td>" + n3 + "</td><td>" + n4 + "</td><td>" + n5 + "</td><td>" + n6 + "</td><td>" + n7 + "</td><td>" + n8 + "</td><td>" + n9 + "</td><td>" + n10 + "</td></tr>");   
             }  
             out.println("</table>");  
             out.println("</html></body>");  
             con.close();  
            }-->