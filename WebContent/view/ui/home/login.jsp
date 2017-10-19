<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
 <t:temfunc bodyClass="gray-bg">
     <jsp:attribute name="header">
         <title>Homepage</title>
     </jsp:attribute>
     <jsp:attribute name="footer">
        
     </jsp:attribute>
     <jsp:body>
         <div class="loginColumns animated fadeInDown">
             <div class="row">

                 <div class="col-md-6">
                     <h2 class="font-bold">Kết bạn bốn phương</h2>

                     <p>
                         Từ xưa đến nay tình yêu và hôn nhân vẫn là những việc lớn nhất trong cuộc đời mỗi con người. Tuy nhiên việc tìm thấy "nửa kia" thật tâm đầu ý hợp không phải lúc nào cũng là việc dễ dàng, nhất là với những chàng trai, cô gái công sở, vốn bận rộn hay phải làm việc trong môi trường hạn chế.
                     </p>

                     <p>
                         Với mục đích tạo cơ hội cho các bạn trẻ đang mong muốn tìm kiếm tình yêu gặp được ý trung nhân, một nửa của mình, henho2.com đã ra đời với mục đích đó.
                     </p>

                     <p>
                         Với mong muốn tạo ra 1 môi trường để những người độc thân có cơ hội được giao lưu, tiếp xúc với nhau nhiều hơn nữa henho2.com đã không ngường cải tiến dịch vụ và cho ra mắt nhiều phiên bản mới với nhiều tính năng hấp dẫn hơn, không đơn thuần là trang web phục vụ cho sự kiện offline mà còn mang đến cho các thành viên cơ hội giao lưu, tìm kiến bạn đời online.
                     </p>
                 </div>
                 <div class="col-md-6">
                     <div class="ibox-content">
                         <c:if test="${statusLogin == 'invalid'}">
                             <p style="color: red;">Email or password is incorrect</p>
                         </c:if>
                         <form class="m-t" role="form" action="signin" method="POST">
                             <div class="form-group">
                                 <input type="text" class="form-control" name="username" placeholder="Tên tài khoản" required="">
                             </div>
                             <div class="form-group">
                                 <input type="password" class="form-control" name="password" placeholder="Mật khẩu" required="">
                             </div>
                             <button type="submit" class="btn btn-primary block full-width m-b">Đăng nhập</button>

                             <a href="#">
                                 <small>Quển mật khẩu?</small>
                             </a>

                             <p class="text-muted text-center">
                                 <small>Không có tài khoản?</small>
                             </p>
                             <a class="btn btn-sm btn-white btn-block" href="signup">Đăng ký</a>
                         </form>
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
 </t:temfunc>