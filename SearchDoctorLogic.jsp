<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>



<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    
String dId = request.getParameter("dId");
PreparedStatement st = con.prepareStatement("select * from AddDoctor where dId=?");
st.setString(1,dId);
ResultSet rs = st.executeQuery();
if(rs.next())
{
    String FIRSTNAME = rs.getString(2);
   request.setAttribute("fName",FIRSTNAME);
  request.getRequestDispatcher("SearchDoctor.jsp").forward(request, response);
}
else{
System.out.println("Record not found!");
}

   
%>