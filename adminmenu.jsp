<!DOCTYPE html>
<html>
    <style>
     .titletheme{
            font-size: 70px;
            color: black;
            font-family: Forte;
            text-align: left;
            font-weight: bold;
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
        width: 53px;
        height: 100px;
        font-weight: bold;
        border-radius: 0px;
        font-family: Forte;
        background-color: #66d9ff;
        color: black;
        font-size: 40px;
        alignment-adjust: central;
        
        }

        .a1{
            text-decoration: black;
            color:white;
        }
        .button{
            background-color: black;
            color: white;
            font-weight: bold;
            width: 100%;
            border-radius: 10px;
            height: 40px;
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
                <tr>
                    <td  class="tdtheme" style="border-radius: 5px"><img src="Admin.png" style="width: 50px; height: 50px">Admin Portal</td>                
                </tr> 
            </table>
        </div>

        <form>
            <table align="right"><tr><td style="align: right"><button class="button" type="submit" formaction="adminlogout.jsp">LOGOUT</button></td></tr></table>

            <table style="width: 100%; height: 100px; border-spacing: 20px;">
                <tr align="center">
                <td class="tdtheme1" rowspan="4" style="width: 60px; height: 100px; border-radius: 10px; opacity: 0.7">Welcome to Admin Portal</td>
                
                <td class="tdtheme1" style="opacity: 0.8; padding: 15px;"><img src="pd.png" width="80" height="80" ><a href="patientdetails.jsp">Patient Details</a></td>
                
                <td class="tdtheme1" style="opacity: 0.8; padding: 15px;"><img src="dd.png" width="80" height="80"><a href="doctordetails.jsp">Doctor Details</a></td>
                
            </tr>
            <tr>
            </tr>
            <tr align="center">
                <td class="tdtheme1" style="opacity: 0.8; width: 53px; padding: 15px;"><img src="re.png" width="80" height="80"><a href="2.png">Receptionist</a></td>                                
            
                <td class="tdtheme1" style="opacity: 0.8; padding: 15px;"><img src="appo.png" width="80" height="80"><a href="appointment.png">Appointments</a></td>
            
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>            
        </table>
                    </form>
    </body>
</html>