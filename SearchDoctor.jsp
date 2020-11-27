<%@page import ="java.sql.*"%>

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
        .button1 {
            background-color: #b3e6ff;
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
        hr.new4 {
                  border: 2px solid black;
                  width: 100%;
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
            <table align="">
                    <tr><td></td></tr>
                    <tr><td></td></tr>

                <tr class="tdtheme">
                    <td style="border-radius: 10px; padding: 15px;">Search Doctors</td>
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
<%
    String dId= request.getParameter("dId");
    
if(dId == null)
{
    %>
                    <form>            
                        <table width="100%" align="center" border="0" pxcellpadding="10" style="border:inset; background-color: #ffffff; border-radius: 10px">
                            <tr align="center" bgcolor="black">
                                <td colspan="4" style="color:white">Search Doctors</td>
                            </tr>
                            <tr><td><p></p></td></tr>
                            <tr align="center">
                                <td style="color:black; font-size: 20px ">Doctor ID</td>                    
                                <td><input class="input1" type="text" name="dId" placeholder="Enter Id here"  required></td>
                                <td><button class="button1" type="submit" formaction="SearchDoctorLogic.jsp">Search</button></td>
                                
                            </tr>
                            
                            <tr><td><p></p></td></tr>
                            
                            <tr align="center">
                                <td style="color:black; font-size: 20px">First Name</td>                    
                                <td><input class="input1" type="text" name="fName" ></td>                                   
                                <td style="color:black; font-size: 20px">Last Name</td>                    
                                <td><input class="input1" type="text" name="lName" ></td>               
                            </tr>
                            
                            <tr><td><p></p></td></tr>

                            <tr align="center">
                                <td style="color:black; font-size: 20px">Age</td>
                                <td><input class="input1" type="age" name="age" ></td>
                                <td style="color:black; font-size: 20px" align="center">GENDER</td>
                                <td align="center" colspan="2" style="color:black"> 
                                MALE
                                <input type="radio" value="m" name="gender"> 
                                FEMALE
                                <input type="radio" value="f" name="gender"> 
                                </td>
                            </tr>
                            <tr><td><p></p></td></tr>
                
                            <tr>
                                <td style="color:black; font-size: 20px" align="center">Marital Status</td>
                                <td align="center"><select class="input1" name="mStatus" id="marital_status">
                                    <option value="">--- Select ---</option>
                                    <option value="Single">Single</option>
                                    <option value="Married">Married</option>
                                    <option value="Widowed">Widowed</option>
                                    <option value="Separated">Separated</option>
                                    <option value="Divorced">Divorced</option>
                                    </select>
                                </td>
                                <td style="color:black; font-size: 20px" align="center">Date</td><td align="center"><input class="input1" type="date" id="date" name="date"></td>
                            </tr>
                            
                            <tr><td><p></p></td></tr>
                            
                            <tr align="center">
                                <td  style="color:black; font-size: 20px">Address</td>
                                <td colspan="4"><textarea class="input2" name="address" ></textarea></td>                    
                             </tr>
                
                            <tr><td><p></p></td></tr>
                
                            <tr align="center">                    
                                <td style="color:black; font-size: 20px">City</td>
                                <td><input class="input1" type="text" name="city" ></td>     
                    
                                <td style="color:black; font-size: 20px">Phone no.</td>                                        
                                <td><input class="input1" type="tel" id="phone" name="phoneNo"  ></td>
                            </tr>
                            
                            <tr><td><p></p></td></tr>
            
                        </table>
                    </form>   
<%}
else
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
    Statement st = con.createStatement();
    String q1 = "select * from AddDoctor where dId= '"+ dId+"'";
    ResultSet rs = st.executeQuery(q1);
if(rs.next())
{
//out.println("<hr><h1>"+rs.getString("city")+"</h1><hr>");
%>

<form action="addpatientlogic.jsp">            
                        <table width="100%" align="center" border="0" pxcellpadding="10" style="border:inset; background-color: #ffffff; border-radius: 10px">
                            <tr align="center" bgcolor="black">
                                <td colspan="4" style="color:white" >Search Doctors</td>
                            </tr>
                            <tr><td><p></p></td></tr>
                            <tr align="center">
                                <td style="color:black; font-size: 20px ">Patient ID</td>                    
                                <td><input class="input1" type="text" name=dId" value='<%= dId %>' required></td>
                                <td><button class="button1" type="submit" formaction="SearchDoctorLogic.jsp">Search</button></td>
                                
                            </tr>
                            
                            <tr><td><p></p></td></tr>
                            
                            <tr align="center">
                                <td style="color:black; font-size: 20px">First Name</td>                    
                                <td><input class="input1" type="text" name="fName" value="<%=rs.getString("fName")%>" ></td>                                   
                                <td style="color:black; font-size: 20px">Last Name</td>                    
                                <td><input class="input1" type="text" name="lName" value="<%=rs.getString("lName")%>" ></td>               
                            </tr>
                            
                            <tr><td><p></p></td></tr>

                            <tr align="center">
                                <td style="color:black; font-size: 20px">Age</td>
                                <td><input class="input1" type="age" name="age" value="<%=rs.getString("age")%>" ></td>
                                <td style="color:black; font-size: 20px" align="center">GENDER</td>
                                <%
                                String gen = rs.getString("gender");
                                if(gen.equals("m"))
                                {
                                    %>
                                    
                                        <td align="center" colspan="2" style="color:black"> 
                                MALE
                                <input type="radio" value="m" checked = "true"  name="gender"> 
                                FEMALE
                                <input type="radio" value="f"   name="gender"> 
                                </td>
                            
                                    <%
                                }
                                else
                                {
                            %>
                            
                                <td align="center" colspan="2" style="color:black"> 
                                MALE
                                <input type="radio" value="m" name="gender"> 
                                FEMALE
                                <input type="radio" value="f"  checked = "true"  name="gender"> 
                                </td>
                            
                            <%
                                }
                                %>
                            </tr>
                            <tr><td><p></p></td></tr>
                
                            <tr>
                                <td style="color:black; font-size: 20px" align="center">Marital Status</td>
                                <td align="center"><select class="input1" name="mStatus" id="marital_status" value="<%=rs.getString("mStatus")%>">
                                   
                                   <%
                                   String mStatus = rs.getString("mStatus");
                                   String ss[] ={"Single","Married","Widowed","Separated","Divorced"};
                                   for(int i =0; i<5;i++)
                                   {
                                       if(ss[i].equals(mStatus))
                                       {
                                           %>
                                           <option value="<%=ss[i]%>" selected="selected"><%=ss[i]%></option>
                                    
                                           <%
                                       }
                                       else{
                                       %>
                                           <option value="<%=ss[i]%>" ><%=ss[i]%></option>
                                       
                                       <%
                                       }
                                       
                                       
                                   }
                                   
                                   %>     
                                    </select>
                                </td>
                                <td style="color:black; font-size: 20px" align="center">Date</td><td align="center"><input class="input1" type="date" id="date" name="date" value="<%=rs.getString("date")%>"  ></td>
                            </tr>
                            
                            <tr><td><p></p></td></tr>
                            
                            <tr align="center">
                                <td  style="color:black; font-size: 20px">Address</td>
                                <td colspan="4"><textarea class="input2" name="address"  ><%=rs.getString("address")%></textarea></td>                    
                             </tr>
                
                            <tr><td><p></p></td></tr>
                
                            <tr align="center">                    
                                <td style="color:black; font-size: 20px">City</td>
                                <td><input class="input1" type="text" name="city"  value="<%=rs.getString("city")%>" ></td>     
                    
                                <td style="color:black; font-size: 20px">Phone no.</td>                                        
                                <td><input class="input1" type="tel" id="phone" name="phoneNo"  value="<%=rs.getString("phoneNo")%>"  ></td>
                            </tr>
                            
                            <tr><td><p></p></td></tr>
                        </table>
                    </form>   
  
<%
}
else
{
out.println("<h1>Record not Found</h1>");
}
con.close();
%>
                  

                    <%
}
%>
                </div>          
    </body>
</html>