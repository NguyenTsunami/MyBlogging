<%-- 
    Document   : contact
    Created on : Oct 2, 2020, 1:33:43 PM
    Author     : thuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="ma-5">
            <fieldset class="border-dashed border-gray">
                <legend class="bg-red px-3 py-1 rounded-2">
                    <p class="text-white ma-0">All fields are required</p>
                </legend>
                <form action="feedback" method="post">
                    <table class="pa-5" style="width: 100%;">
                        <tr>
                            <td><p class="right">Name: </p></td>
                            <td>
                                <input type="text" style="width: 100%;" required name="name"
                                       pattern="[a-zA-Z ']{1,300}" onkeydown="hideNotify()"/>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="right">Email: </p></td>
                            <td>
                                <input type="email" style="width: 100%;" required name="email"
                                       onkeydown="hideNotify()"/>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="right">Phone: </p></td>
                            <td>
                                <input type="tel" style="width: 100%;" required name="phone"
                                       pattern="\d{10,11}" onkeydown="hideNotify()"/>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="right">Company: </p></td>
                            <td>
                                <input type="text" style="width: 100%;" required name="company"
                                       pattern="[0-9a-zA-Z ,-]{1,300}" onkeydown="hideNotify()"/>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="right">Message: </p></td>
                            <td>
                                <textarea rows="5" name="mess" required style="width: 100%;" onkeydown="hideNotify()"></textarea>
                            </td>
                        </tr>
                    </table>
                    
                    <!--Notify-->
                    <p class="notify text-red text-3 italic mr-5 mb-5 mx-5">${error}</p>
                    <p class="notify text-green text-3 italic mr-5 mb-5 mx-5">${success}</p>
                    
                    <!--Submit-->
                    <input type="submit" value="send" class="rounded-2 bg-red px-3 py-1 text-white float-right mr-5 mb-5"/>
                </form>


            </fieldset>
        </div>

    </body>
</html>
