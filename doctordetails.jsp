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
        .tdtheme1{
            font-size: 30px;
            font-family: Forte;
            color: black;
        }
        .button {
            background-color: white;
            color: black;
            width: 100%;
            border-radius: 10px;
            height: 80px;
            font-size: 25px;

        }
        .button1 {
            background-color: black;
            color: white;
            width: 100%;
            border-radius: 10px;
            height: 50px;
            font-size: 20px;
            align: right;
        }
        .aside
        {
            float: right
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
                    <td style="border-radius: 10px"><img src="dd.png" style="width: 50px; height: 50px">Doctor Details</td>
                </tr> 
            </table>
        </div> 
        <form action="adminmenu.jsp">
               <table align="left"><tr><td><input type="image" src="arrow.png" alt="Submit" width="48" height="48"></td></tr></table>

                <table class="tdtheme1" style="border-spacing: 50px; width: 100%">                   
                <tr>
                   <td><button class="button" type="submit" formaction="adddoctor.jsp">Add Doctor</button></td>                    

                        <td><button class="button" type="submit" formaction="deletedoctor.jsp">Delete Doctor</button></td>                    

                        <td><button class="button" type="submit" formaction="updatedoctor.jsp">Update Doctor</button></td>                    

                        <td><button class="button" type="submit" formaction="SearchDoctor.jsp">Search Doctor</button></td>                    

                        <td><button class="button" type="submit" formaction="ViewDoctor.jsp">View Doctor</button></td>  

                        <td><button class="button" type="submit" formaction="adminlogout.jsp">Logout</button></td>                   
                </tr>
                
        </table>
        </form>
    </body>
</html>