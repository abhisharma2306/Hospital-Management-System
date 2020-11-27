<!DOCTYPE html>
<html>
    <style>
        .titletheme{
            font-size: 60px;
            font-family: Forte;
            font-weight: bold;
            color: black;
            border-radius: 5px;
        }
        .tdtheme{
            font-size: 30px;
            font-family: Forte;
            color: black;
            background-color: #66d9ff;  
            border-radius: 0px;
        }
        .tdtheme1{
            font-size: 30px;
            font-family: Forte;
            color: black;
        }
        .button {
            background-color: black;
            color: white;
            width: 100%;
            border-radius: 10px;
            height: 80px;
            font-size: 25px;

        }
        .button1 {
            background-color: white;
            color: black;
            width: 100%;
            border-radius: 10px;
            height: 50px;
            font-size: 20px;

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
                    <td style="border-radius: 10px"><img src="re.png" style="width: 50px; height: 50px">  Receptionist Portal</td>
                </tr> 
            </table>
        </div>    
        <form>
            <table class="tdtheme1" style="border-spacing: 50px">                   
                <tr>
                    <td><button class="button" type="submit" formaction="receptionistprofile.jsp">Profile</button></td>                    
                </tr>    
                <tr>
                    <td><button class="button" type="submit" formaction="patientdetails.jsp">Patient Details</button></td>                    
                </tr>
                <tr>
                    <td><button class="button" type="submit" formaction="appointments.jsp">Appointments</button></td>                    
                </tr>                
                <tr>
                    <td><button class="button" type="submit" formaction="changepassword.jsp">Change Password</button></td>                    
                </tr>
                <tr>
                    <td><button class="button" type="submit" formaction="receptionistlogout.jsp">Log out</button></td>                    
                </tr>
                
        </table>
        </form>
    </body>
</html>