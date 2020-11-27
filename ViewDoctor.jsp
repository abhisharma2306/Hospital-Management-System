<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <style>
        .titletheme{
            font-size: 60px;
            font-family: Forte;
            font-weight: bold;
            background-color: #66d9ff;
            color: black;
            border-radius: 5px;
        }
        .tdtheme
        {
        width: 250px;
        height: 80px;
        font-weight: bold;
        border-radius: 100px;
        font-family: Forte;
        background-color: #66d9ff;
        color: black;
        text-align: right; 
        font-size: 30px;
        
        }
        .tdtheme1
        {
        width: 250px;
        height: 80px;
        font-weight: bold;
        border-radius: 100px;
        font-family: Forte;
        color: black;
        text-align: right; 
        font-size: 30px;
        
        }
        .button {
            background-color: white;
            color: black;
            width: 100%;
            border-radius: 10px;
            height: 40px;
            font-size: 20px;

        }
        .input1{
            border-radius: 15px;
            width:350px;
            height: 50px;
            background-color:white;
            color:black;
            font-size:20px;
        }
        .input2{
            border-radius: 20px;
            width:85%;
            height: 50px;
            background-color:white;
            color:black;
            font-size:20px;
        }
    </style>
    <body background="o.jpg">
        <div  style="width: 100%; height: 100px; background-color: #66d9ff; opacity: 0.8;  text-align: center">
            <table align="center">
                <tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr>
                    <td class="titletheme">Hospital Management System</td>
                </tr>                
            </table>
        </div>
        <div>
            <table>
                    <tr><td></td></tr>
                    <tr><td></td></tr>

                <tr class="tdtheme">
                    <td style="border-radius: 10px; padding: 15px;">View Patients</td>
                </tr> 
            </table>
        </div>
        
            <form>
                <table class="tdtheme1" style="border-spacing: 50px; width: 100%">                   
                    <tr>
                        <td><button class="button" type="submit" formaction="adddoctor.jsp">Add Doctors</button></td>                    

                        <td><button class="button" type="submit" formaction="deletedoctor.jsp">Delete Doctors</button></td>                    

                        <td><button class="button" type="submit" formaction="updatedoctor.jsp">Update Doctors</button></td>                    

                        <td><button class="button" type="submit" formaction="SearchDoctor.jsp">Search Doctors</button></td>                    

                        <td><button class="button" type="submit" formaction="ViewDoctor.jsp">View Doctors</button></td>  

                        <td><button class="button" type="submit" formaction="adminlogout.jsp">Logout</button></td>
                    </tr>
                </table>                                
            </form>
                <div  style="width:100%;height: 100%; border-radius: 20px">
                        <table width="100%" align="center" border="1" pxcellpadding="10" style="border:inset; background-color: #ffffff; border-radius: 10px">
                            <tr align="center" bgcolor="black">
                                <td colspan="12" style="color:white" >All Doctors</td>
                            </tr>
                            
                            
                            <tr class="button" style="text-align: center; font-family: calibri">
                                <td><b>DoctorId</b></td>
                                    <td><b>First name</b></td>
                                    <td><b>Last name</b></td>
                                    <td><b>Age</b></td>
                                    <td><b>Gender</b></td>
                                    <td><b>Marital Status</b></td>
                                    <td><b>Date</b></td>
                                    <td><b>Address</b></td>
                                    <td><b>City</b></td>
                                    <td><b>Phone No.</b></td>
                                </tr>


                                <%
                                    try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
                                    PreparedStatement pst = con.prepareStatement("SELECT * FROM AddDoctor");
                                    ResultSet rs = pst.executeQuery();
                                    while(rs.next()){
                                    %>
                                        <tr style="text-align: center; font-family: calibri">
                                            <td><%=rs.getString("dId") %></td>
                                            <td><%=rs.getString("fName") %></td>
                                            <td><%=rs.getString("lName") %></td>
                                            <td><%=rs.getString("age") %></td>
                                            <td><%=rs.getString("gender") %></td>
                                            <td><%=rs.getString("mStatus") %></td>
                                            <td><%=rs.getString("date") %></td>
                                            <td><%=rs.getString("address") %></td>
                                            <td><%=rs.getString("city") %></td>
                                            <td><%=rs.getString("phoneNo") %></td>
                                        </tr>
                                        <%
                                            }
                                con.close();
                                } catch (Exception e) {
                                e.printStackTrace();
                                }
                                %>

                            
                            
                            
                        </table>
                </div>         
    </body>
</html>