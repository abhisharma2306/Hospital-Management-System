<html>
    <style>
        .titletheme{
            font-size: 60px;
            color: black;
            font-family: Forte;
            text-align: center;
            font-weight: bold;
        }
       .tdtheme {
            width: 100%;
            height: 80px;
            border-radius: 5px;
            font-weight: bold;
            font-family: Forte;
            background-color: #66d9ff;
            color: black;
            font-size: 35px;
            text-align: right;
        }
        .input1{
            border-radius: 15px;
            width:350px;
            height: 50px;
            background-color:white;
            color:black;
            font-size:19px;
        }
        </style>
    <body background="o.jpg">
        <div  style="width: 100%; height: 100px; background-color: #66d9ff; opacity: 0.8;  text-align: center">
            <table align="center">
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr>
                <td class="titletheme">Hospital Management System</td>
            </tr>
            </table> 
        </div>
        <table>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td class="tdtheme">Change Password</td>
            </tr>            
        </table>

        <form action="changepassreceplogic.jsp">
            <table width="40%" align="center" border="0" pxcellpadding="10" style=" background-color: white; border-radius: 10px">
                <tr align="center" bgcolor="black">
                    <td  colspan="2" id=text style="color: white">CHANGE PASSWORD</td>
                </tr>
                <tr><td>
                    <p></p>
                </td></tr>
                <tr align="center">
                    <td style="color:black; font-size: 18px;"><b>ID</b></td>
                    
                    <td><input class="input1" type="text" name="id" placeholder="Enter Id here" required></td>
                </tr>
                <tr><td><p></p></td></tr>
                <tr align="center">
                    <td style="color: black; font-size: 18px;"><b>Old Password</b></td>
                    <td><input class="input1" type="password" name="oldPass" placeholder="Enter Old Password" required></td>
                </tr>
                <tr><td><p></p></td></tr>
                <tr align="center">
                    <td style="color:black; font-size: 18px;"><b>New Password</b></td>
                        <td><input class="input1" type="password" name="pass" placeholder="Enter Password Here" required></td>
                </tr>
                <tr><td><p></p></td></tr>
                <tr align="center">
                    <td style="color:black; font-size: 18px;"><b>Re-Enter New Password</b></td>
                        <td><input class="input1" type="password" name="rePass" placeholder="Enter Password Again Here" required></td>
                </tr>
                <tr><td><p></p></td></tr>
                <tr align="center">
                    <td colspan="2"><input class="input1" type="submit" value="Update" style="border-radius: 20px;width:120px;height: 50px;background-color:black;color:white;font-size:20px;font-family: arial"></td>    
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
            </table>
        </form> 
    </body>
</html>