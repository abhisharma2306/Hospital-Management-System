<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>



<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    
String pId = request.getParameter("pId");
PreparedStatement st = con.prepareStatement("select * from addpatient where pId=?");
st.setString(1,pId);
ResultSet rs = st.executeQuery();
if(rs.next())
{
    String FIRSTNAME = rs.getString(2);
   request.setAttribute("fname",FIRSTNAME);
   request.getRequestDispatcher("updatepatient.jsp").forward(request, response);
}
else{
System.out.println("invalid");
} 
%>