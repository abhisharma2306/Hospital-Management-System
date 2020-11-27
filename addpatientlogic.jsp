<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>

<%
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");

    String pId = request.getParameter("pId");
    String fName = request.getParameter("fName");
    String lName = request.getParameter("lName");
    String age = request.getParameter("age");    
    String gender = request.getParameter("gender");
    String mStatus = request.getParameter("mStatus");
    String date = request.getParameter("date");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String phoneNo = request.getParameter("phoneNo");
    String wardNo = request.getParameter("wardNo");
    String bedNo = request.getParameter("bedNo");
    
        PreparedStatement st2 = con.prepareStatement("insert into addpatient values(?,?,?,?,?,?,?,?,?,?,?,?)");
        st2.setString(1,pId);
        st2.setString(2,fName);
        st2.setString(3,lName);
        st2.setString(4,age);
        st2.setString(5,gender);
        st2.setString(6,mStatus);
        st2.setString(7,date);
        st2.setString(8,address);
        st2.setString(9,city);
        st2.setString(10,phoneNo);
        st2.setString(11,wardNo);        
        st2.setString(12,bedNo);        
        
        st2.executeUpdate();

        int click = JOptionPane.showConfirmDialog(null,"Patient Added....\n do you want to add more patients");
        
        if(click==0)
        {
            //JOptionPane.showConfirmDialog(null,"Patient Added....");
            response.sendRedirect("addpatients.jsp");
        }
       else
        {
            //JOptionPane.showConfirmDialog(null,"Patient Not Added....");
            response.sendRedirect("patientdetails.jsp");
        }
        con.close();
%>