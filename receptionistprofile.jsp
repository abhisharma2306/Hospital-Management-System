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
                    <td style="border-radius: 10px">Receptionist Profile</td>
                </tr> 
            </table>
        </div>
        
            
                <div  style="width:100%;height: 100%; border-radius: 20px">
                    <form action="addpatientlogic.jsp">            
                        <table width="100%" align="center" border="0" pxcellpadding="10" style="border:inset; background-color: #ffffff; border-radius: 10px">
                            <tr align="center" bgcolor="black">
                                <td colspan="4" style="color:white" ></td>
                            </tr>
                            <tr><td><p></p></td></tr>
                            
                            
                            <tr><td><p></p></td></tr>
                            
                            <tr align="center">
                                <td style="color:black; font-size: 20px">First Name : </td>                    
                                <td><input class="input1" type="text" name="fName" placeholder="Enter first name here"  required></td> 
                    
                                <td style="color:black; font-size: 20px">Last Name : </td>                    
                                <td><input class="input1" type="text" name="lName" placeholder="Enter last name here"  required></td>               
                            </tr>
                            
                            <tr><td><p></p></td></tr>

                            <tr align="center">
                                <td style="color:black; font-size: 20px">Age : </td>
                                <td><input class="input1" type="age" name="age" placeholder="Enter age here" required></td>
                                <td style="color:black; font-size: 20px" align="center">GENDER : </td>
                                <td align="center" colspan="2" style="color:black"> 
                                MALE
                                <input type="radio" value="m" name="gender"> 
                                FEMALE
                                <input type="radio" value="f" name="gender"> 
                                </td>
                            </tr>
                            <tr><td><p></p></td></tr>
                
                            <tr>
                                <td style="color:black; font-size: 20px" align="center">Maritial Status : </td>
                                <td align="center"><select class="input1" name="mStatus" id="marital_status">
                                    <option value="">--- Select ---</option>
                                    <option value="Single">Single</option>
                                    <option value="Married">Married</option>
                                    <option value="Widowed">Widowed</option>
                                    <option value="Separated">Separated</option>
                                    <option value="Divorced">Divorced</option>
                                    </select>
                                </td>
                                <td style="color:black; font-size: 20px" align="center">Date of Joining : </td><td align="center"><input class="input1" type="date" id="date" name="date"></td>
                            </tr>
                            
                            <tr><td><p></p></td></tr>
                            
                            <tr align="center">
                                <td  style="color:black; font-size: 20px">Address : </td>
                                <td colspan="4"><textarea class="input2" name="address" placeholder="Enter Address Here" required></textarea></td>                    
                             </tr>
                
                            <tr><td><p></p></td></tr>                                           
                            <tr align="center">
                                <td colspan="4" ><button align="center" class="button" type="submit" input class="input1" type="submit" value="Add" style="border-radius: 20px;width:120px;height: 50px;background-color:black;color:white;font-size:20px;font-family: arial">Add</button></td>    
                            </tr>              
                        </table>
                    </form>    
                </div>          
    </body>
</html>