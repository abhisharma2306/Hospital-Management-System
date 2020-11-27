<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>


<html>
    <body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    
    String adminid = request.getParameter("adminid");
    String aPass = request.getParameter("aPass");
    
    PreparedStatement st = con.prepareStatement("select * from adminlogin where adminid =? and apass =?");
    st.setString(1,adminid);
    st.setString(2,aPass);
    
    ResultSet rs = st.executeQuery();
    
    if(rs.next())
    {
        response.sendRedirect("adminmenu.jsp");
    }
    else
    {
        request.setAttribute("MSG", "Invalid ID or Password");
        request.getRequestDispatcher("adminpage.jsp").forward(request, response);
    } 
%>
    
    </body>
    
</html>