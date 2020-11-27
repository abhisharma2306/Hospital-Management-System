<!DOCTYPE html>
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
            width: 250px;
            height: 80px;
            border-radius: 5px;
            font-weight: bold;
            font-family: Forte;
            background-color: #66d9ff;
            color: black;
            font-size: 35px;
            text-align: right;
            margin-right: 15px;
        }
        .a1{
            text-decoration: brown;
            color:white;
        }
       .tdtheme1 {
            background-color: blue;
            font-weight: bold;
            font-family: Forte;
            background-color: whitesmoke;
            color: black;
            font-size: 20px;
        }
        .button{
            border-radius: 10px;
            width:130px;
            height: 50px;
            background-color:white;
            color:black;
            font-size:25px;
            font-family: Forte;
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
        <div>        
            <table>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td class="tdtheme" style="margin-right: 15px;" >Login as &nbsp;</td>
                </tr>            
            </table>
        </div>
        <table width="40%" align="center" border="0"  style="  opacity: 0.9">
                <tr align="center">
                        <td><img src="Admin.png" href ="adminpage.jsp" width="100" height="100"></td>
                        <td><img src="a23.png" width="100" height="100"></td>
                        <td><img src="a22.png" width="100" height="100"></td>
                </tr>
                <tr align="center">
                    <td class="button" width="90px"><a class="al"  href ="adminpage.jsp">Admin</a></td>
                    <td class="button" width="90px"><a class="al"  href ="receptionistpage.jsp">Receptionist</a></td>
                    <td class="button" width="90px"><a class="al"  href ="doctorpage.jsp">Doctor</a></td>
                </tr>              
             </table>        
    </body>
</html>
    