<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
 <t:genericpage bodyClass="gray-bg">
     <jsp:attribute name="header">
         <title>Homepage</title>
     </jsp:attribute>
     <jsp:attribute name="footer">
        
     </jsp:attribute>
     <jsp:body>
         <div class="loginColumns animated fadeInDown">
             <div class="row">

                 <div class="col-md-6">
                     <h2 class="font-bold">Welcome to IN+</h2>

                     <p>
                         Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.
                     </p>

                     <p>
                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                     </p>

                     <p>
                         When an unknown printer took a galley of type and scrambled it to make a type specimen book.
                     </p>

                     <p>
                         <small>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</small>
                     </p>

                 </div>
                 <div class="col-md-6">
                     <div class="ibox-content">
                         <c:if test="${statusLogin == 'invalid'}">
                             <p style="color: red;">Email or password is incorrect</p>
                         </c:if>
                         <form class="m-t" role="form" action="signin" method="POST">
                             <div class="form-group">
                                 <input type="text" class="form-control" name="username" placeholder="Username" required="">
                             </div>
                             <div class="form-group">
                                 <input type="password" class="form-control" name="password" placeholder="Password" required="">
                             </div>
                             <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                             <a href="#">
                                 <small>Forgot password?</small>
                             </a>

                             <p class="text-muted text-center">
                                 <small>Do not have an account?</small>
                             </p>
                             <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>
                         </form>
                         <p class="m-t">
                             <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small>
                         </p>
                     </div>
                 </div>
             </div>
             <hr/>
             <div class="row">
                 <div class="col-md-6">
                     Copyright Example Company
                 </div>
                 <div class="col-md-6 text-right">
                     <small>© 2014-2015</small>
                 </div>
             </div>
         </div>
     </jsp:body>
 </t:genericpage>