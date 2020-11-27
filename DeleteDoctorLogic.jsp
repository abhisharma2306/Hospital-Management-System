<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    
    String dId = request.getParameter("dId");
    
        PreparedStatement st1 = con.prepareStatement("select * from AddDoctor where dId =?");
        st1.setString(1,dId);
        ResultSet rs = st1.executeQuery();
    
        if(rs.next())
        {
        
        PreparedStatement st = con.prepareStatement("delete from AddDoctor where dId =?");
        st.setString(1,dId);
        
        st.executeUpdate();
        
        JOptionPane.showMessageDialog(null,"Doctor Deleted Successfully .....");
        response.sendRedirect("deletedoctor.jsp");
        
        }
        else
        {
        
            JOptionPane.showMessageDialog(null,"No Doctor with ID- "+dId+" Present");
            response.sendRedirect("deletedoctor.jsp");
        }
        con.close();
%>
    