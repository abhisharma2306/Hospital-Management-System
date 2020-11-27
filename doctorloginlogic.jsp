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
    
    String dName = request.getParameter("dName");
    String dPass = request.getParameter("dPass");
    
    PreparedStatement st = con.prepareStatement("select * from doctorlogin where dName =? and dPass =?");
    st.setString(1,dName);
    st.setString(2,dPass);
    
    ResultSet rs = st.executeQuery();
    
    if(rs.next())
    {
        response.sendRedirect("doctormenu.jsp");
    }
    else
    {
        request.setAttribute("MSG", "Invalid ID or Password");
        request.getRequestDispatcher("doctorpage.jsp").forward(request, response);
    } 
%>
    
    </body>
    
</html>