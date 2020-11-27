<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    
    String id = request.getParameter("rName");
    String oldPass = request.getParameter("rPass");
    String pass = request.getParameter("pass");
    String rePass = request.getParameter("rePass");
    
    PreparedStatement st = con.prepareStatement("select * from receptionistlogin where rName = ? and rPass=?");
    st.setString(1,id);
    st.setString(2,oldPass);
    ResultSet rs = st.executeQuery();
    
    if(rs.next())
    {
        if(pass.equals(rePass))
        {
            PreparedStatement st1 = con.prepareStatement("update receptionistlogin set rPass = ? where rName=?");
            st1.setString(1,pass);
            st1.setString(2,id);
            st1.executeUpdate();
           JOptionPane.showMessageDialog(null,"Password Updated Successfully");
           
            response.sendRedirect("receptionistmenu.jsp");
        }
        else
        {
        JOptionPane.showMessageDialog(null,"Re-entered Password doesn't match");
        response.sendRedirect("changepassword.jsp");
        }
    }
    else
    {
    JOptionPane.showMessageDialog(null,"Invalid Id or Password");
    response.sendRedirect("changepassword.jsp");
    }
%>