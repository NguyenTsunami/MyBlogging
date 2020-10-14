<%-- 
    Document   : index
    Created on : Sep 16, 2020, 10:04:39 PM
    Author     : thuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Blogs</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./css/style.css" />
        <link href="https://fonts.googleapis.com/css2?family=Nova+Mono&display=swap" rel="stylesheet">
    </head>
    <body>
        <!--Header-->
        <div>
            <!--Banner-->
            <div class="container">
                <p class="pt-2 pl-5 text-9 mt-0 mb-7">my blogs</p>
            </div>

            <!--Navigation-->
            <div class="container navigation">
                <ul class="list-reset my-0 pt-2 pb-0 ml-5 h-6 flex flex-row">
                    <li class="text-white mx-7 navlink ${main eq null || main eq 'detail' ? 'active' : ''}">
                        <a href="homepage?main=detail" class="text-white in-underline">Home</a>
                    </li>
                    <li class="text-white mx-7 navlink ${main eq 'contact' ? 'active' : ''}">
                        <a href="homepage?main=contact" class="text-white in-underline">Contact</a>
                    </li>
                </ul>
            </div>
        </div>

        <!--Content-->
        <div class="container flex">
            <!--Left--> 
            <div class="left ma-7">
                <c:if test="${main eq null || main eq 'detail'}">
                    <jsp:include page="detail.jsp"/>
                </c:if>
                <c:if test="${main eq 'contact'}">
                    <jsp:include page="contact.jsp"/>
                </c:if>
            </div>

            <!--Right-->  
            <div class="right ma-7">
                <!--Category-->
                <p class="text-4 ml-4">Categories</p><hr>
                <!--List category-->
                <div class="mt-4">
                    <c:forEach var="category" items="${categoryList}">
                        <div class="ml-4">
                            <btn class="collapsible flex items-center pa-0">
                                <img src="images/img01.jpg"/>
                                <p class="inline text-3 mx-3 my-2">${category}</p>
                            </btn>
                            <div class="collap-content">
                                <ul>
                                    <c:forEach var="blog" items="${da.getBlogsViaCategory(category)}">
                                        <li>
                                            <a class="in-underline text-3 text-gray" href="homepage?main=detail&id=${blog.id}">${blog.title}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <!--Footer-->
        <footer class="footer"> 
            <div class="container flex">
                <div class="left ma-7">
                    <hr>
                    <ul class="text-2">
                        <c:forEach var="blog" items="${top3}">
                            <a class="in-underline text-black" href="homepage?main=detail&id=${blog.id}">
                                <li>
                                    <p class="inline text-black font-bold">${blog.title} </p>
                                    <p class="inline text-gray italic">Posted on ${blog.datepub}</p>
                                </li>
                            </a>
                        </c:forEach>
                    </ul>
                </div>
                <div class="right ma-7"></div>
            </div>
        </footer>

        <script src="js/script.js"></script>
    </body>
</html>
