<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>

<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");

    String dId = request.getParameter("dId");
    out.println(dId);
    String fName = request.getParameter("fName");
    out.println(fName);
    String lName = request.getParameter("lName");
    out.println(lName);
    String age = request.getParameter("age");   
    out.println(age);
    String gender = request.getParameter("gender");
    out.println(gender);
    String mStatus = request.getParameter("mStatus");
    out.println(mStatus);
    String date = request.getParameter("date");
    out.println(date);
    String address = request.getParameter("address");
    out.println(address);
    String city = request.getParameter("city");
    out.println(city);
    String phoneNo = request.getParameter("phoneNo");
    out.println(phoneNo);
    
    
//    Statement st=con.createStatement();
//
//    int i = st.executeUpdate("insert into AddDoctor(dId,fName,lName,age,gender,mStatus,date,address,city,phoneNo)values('"+dId+"','"+fName+"','"+lName+"','"+age+"','"+gender+"','"+mStatus+"','"+date+"','"+address+"','"+city+"','"+phoneNo+"')");
//    System.out.println("Data is inserted");
    
        PreparedStatement st2 = con.prepareStatement("insert into adddoctor values(?,?,?,?,?,?,?,?,?,?)");
        st2.setString(1,dId);
        st2.setString(2,fName);
        st2.setString(3,lName);
        st2.setString(4,age);
        st2.setString(5,gender);
        st2.setString(6,mStatus);
        st2.setString(7,date);
        st2.setString(8,address);
        st2.setString(9,city);
        st2.setString(10,phoneNo);     
        st2.executeUpdate();

        JOptionPane.showMessageDialog(null,"Doctor Added");
        response.sendRedirect("adddoctor.jsp");
        
//      int click = JOptionPane.showConfirmDialog(null,"Doctor Added....\n do you want to add more Doctor");
//        
//        if(i==0)
//        {
//            //JOptionPane.showConfirmDialog(null,"Patient Added....");
//            response.sendRedirect("AddDoctor.jsp");
//       }
//       else
//        {
//            //JOptionPane.showConfirmDialog(null,"Patient Not Added....");
//            response.sendRedirect("doctordetails.jsp");
//        }
        con.close();
    }
    catch(Exception e)
    {
       out.print(e);
    }
%>