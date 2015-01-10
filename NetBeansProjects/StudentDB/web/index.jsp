<%-- 
    Document   : index
    Created on : 30 Nov, 2014, 2:51:23 PM
    Author     : arindam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/> 
        <title>Sign up</title>
        

            
       
        <%
           if(request.getParameter("btn_submit")!=null)
           {
              int id=-1;
               String name=request.getParameter("txtname").toString();
               String email=request.getParameter("txtemail").toString();
               
               Student.SaveStudent saveObj=new Student.SaveStudent();
               
               int MaxId= saveObj.MaxId();
               if (MaxId!=-1){
                   
                   id=MaxId+1;
                 
                      
                }else{id=0;
               }
               
               int result= saveObj.SaveStudentInfo(id,name,email);
               if(result==-1)
               {
                   out.print("Some error Ocured");
               }else
               {
                   out.print("Saved "+result+"  records");
               }
           }
            
            
        %>
    </head>
    <body>
        <div id="wrapper">
    
        <h1>New Student Registration</h1>
        <form id="myForm" name="regform" action="index.jsp"  method="post">
        
            <table>
                
                 <tr>
                    <td>Student Name:</td>
                    <td><input type="text" id="txtname" name="txtname" autocomplete="off" required=""/></td>                        
                </tr>
                 <tr>
                    <td>Student Mobile no:</td>
                    <td><input type="tel" id="txtmob" name="txtmob" autocomplete="off" required=""/></td>                        
                </tr> 
                <tr>
                    <td>Branch: </td>
                    <td><select>
                            <option value="0">Select</option>
                            <option value="1">CSE</option>
                             <option value="2">ETC</option>
                              <option value="3">IT</option>
                        
                        </select></td>
                    
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" id="txtadd" name="txtmob" autocomplete="off" required=""/></td>                        
                </tr> 
                <tr>
                    <td>Marks:</td>
                    <td><input type="text" id="txtmrks" name="txtmrks" autocomplete="off" required=""/></td>                        
                </tr> 
                <tr>
                    <td>Importance</td>
                    <td><input type="radio" name="rdimportance" value="Very" autocomplete="off" required=""> Very
                        <input type="radio" name="rdimportance" value="normal" autocomplete="off" required=""> Normal
                        <input type="radio" name="rdimportance" value="not" autocomplete="off" required=""> Not                        
                    </td>                        
                </tr> 
                <tr>
                    <td>Comments:</td>
                    <td><input type="text" id="txtcmnt" name="txtcmnt" autocomplete="off" required=""/></td>                        
                </tr> 
                <tr>
                    <td></td>
                    <td><input type="submit" id="btn_submit" name="btn_submit" value="Signup" ></td>                        
                </tr> 
                
            </table>
            
        </form>
        
       </div>
</body>
</html>
           
        
    

