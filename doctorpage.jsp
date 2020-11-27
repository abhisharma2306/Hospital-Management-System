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
        .input1{
            border-radius: 20px;
            width:350px;
            height: 50px;
            background-color:white;
            color:black;
            font-size:20px;
        }
    </style>
    <body background="doc.jpg">
        <div  style="width: 100%; height: 100px; background-color: #66d9ff; opacity: 0.8;  text-align: center">
            <table align="center">
            <tr>
                <td class="titletheme">Hospital Management System</td>
            </tr>
            </table>
        </div>
        <form action="homepage.jsp">
            <table>
                <tr>
                    <td><input type="image" src="arrow.png" alt="Submit" width="48" height="48"></td>
                </tr>
            </table>
        </form>
        <form action="doctorloginlogic.jsp">
        <div align="center">    
            <table width="25%" height="50%" align="center" border="0" pxcellpadding="10" style=" background-color:rgba(255, 255, 255, 0.5); padding: 20px;  border-radius: 7px;">
                <tr>
                    <td><p></p></td>
                    <td style="font-family: Verdana; font-size: 40px; color: #3399ff">Login Here</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-family: Verdana; font-size: 20px; color: #3399ff">DOCTOR LOGIN PANEL</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                 
                    <td style="color: red;">
                        <center>
                            <%
                               String msg=(String)request.getAttribute("MSG");
                               if(msg!=null)
                                  out.print(msg);
                            %>
                        
                        </center>
                    </td>

                <tr align="center">
                    <td style="color:white"><img src="a1.png" width="58px" height="55px"></td>                    
                    <td><input class="input1" type="text" name="dName" placeholder="Your name here" required></td>
                </tr>
                <tr><td><p></p></td></tr>
                <tr align="center">
                    <td style="color:white"><img src="a21.png" width="58px" height="55px"></td>
                    <td><input class="input1" type="password" name="dPass"  placeholder="Enter Password Here" required></td>                    
                </tr>
                <tr><td><p></p></td></tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="Login" style="border-radius: 10px;width:120px;height: 50px;background-color:#3399ff;color:white;font-size:20px;font-family: arial"></td>    
                </tr>
                <tr><td><p></p></td></tr>
                <tr><td><p></p></td></tr>
                <tr><td><p></p></td></tr>
                <tr><td><p></p></td></tr>
                
            </table>
        </div>
        </form>
</html>