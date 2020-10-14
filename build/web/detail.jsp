<%-- 
    Document   : detail
    Created on : Oct 2, 2020, 1:17:06 PM
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
        <!--Category-->
        <div class="flex flex-row justify-letf items-center italic">
            <p class="text-2 text-green">Category ${currentBlog.category} </p>
            <p class="dot mx-2"></p>
            <p class="text-2 text-black font-bold">Full Category </p>
        </div>

        <div>
            <!--Title-->
            <p class="text-5 font-bold mb-0">${currentBlog.title}</p>
            <!--Date-->
            <div class="flex flex-row justify-letf items-center italic mt-0 mb-5">
                <p class="text-2 text-gray">Posted on ${currentBlog.datepub} </p>
                <p class="dot mx-2"></p>
                <p class="text-2 text-black font-bold">Full Article </p>
            </div>
            <!--Content-->
            <div>
                <img class="float-left inline my-2 mr-5 ml-3" src="${currentBlog.img}"/>
                <p class="text-3 text-gray text-justify">${currentBlog.content}</p>
            </div>
        </div>
    </body>
</html>
