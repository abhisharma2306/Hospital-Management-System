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
    
    String rName = request.getParameter("rName");
    String rPass = request.getParameter("rPass");
    
    PreparedStatement st = con.prepareStatement("select * from receptionistlogin where rName =? and rPass =?");
    st.setString(1,rName);
    st.setString(2,rPass);
    
    ResultSet rs = st.executeQuery();
    
    if(rs.next())
    {
        response.sendRedirect("receptionistmenu.jsp");
    }
    else
    {
        request.setAttribute("MSG", "Invalid ID or Password");
        request.getRequestDispatcher("receptionistpage.jsp").forward(request, response);
    } 
%>
    
    </body>
    
</html>