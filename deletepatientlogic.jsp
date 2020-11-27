<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    
    String pId = request.getParameter("pId");
    
        PreparedStatement st1 = con.prepareStatement("select * from addpatient where pId =?");
        st1.setString(1,pId);
        ResultSet rs = st1.executeQuery();
    
        if(rs.next())
        {
        
        PreparedStatement st = con.prepareStatement("delete from addpatient where pId =?");
        st.setString(1,pId);
        
        st.executeUpdate();
        
        JOptionPane.showMessageDialog(null,"Patient Deleted Successfully .....");
        response.sendRedirect("patientdetails.jsp");
        
        }
        else
        {
        
            JOptionPane.showMessageDialog(null,"No patient with ID- "+pId+" Present");
            response.sendRedirect("deletepatient.jsp");
        }
        con.close();
%>
    