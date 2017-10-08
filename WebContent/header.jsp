<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="header">
      <h1>Welcome</h1>
    </jsp:attribute>
    <jsp:attribute name="footer">
      <p id="copyright">Copyright 1927, Future Bits When There Be Bits Inc.</p>
    </jsp:attribute>
    <jsp:body>
        <div id="wrapper">
       	 <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="#" class="navbar-brand">Inspinia</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a aria-expanded="false" role="button" href="layouts.html"> Back to main Layout page</a>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                    <li><a href="">Menu item</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>

            <c:if test="${statusSignup == 'success'}">
                <div class="alert alert-success">
                    <strong>Success!</strong> Indicates a successful or positive action.
                </div>
            </c:if>
            <div class="wrapper wrapper-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-success pull-right">Monthly</span>
                                    <h5>Views</h5>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">386,200</h1>
                                    <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i>
                                    </div>
                                    <small>Total views</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-info pull-right">Annual</span>
                                    <h5>Orders</h5>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">80,800</h1>
                                    <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i>
                                    </div>
                                    <small>New orders</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-primary pull-right">Today</span>
                                    <h5>Vistits</h5>
                                </div>
                                <div class="ibox-content">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <h1 class="no-margins">$ 406,420</h1>
                                            <div class="font-bold text-navy">44% <i class="fa fa-level-up"></i> <small>Rapid pace</small>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <h1 class="no-margins">206,120</h1>
                                            <div class="font-bold text-navy">22% <i class="fa fa-level-up"></i> <small>Slow pace</small>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Monthly income</h5>
                                    <div class="ibox-tools">
                                        <span class="label label-primary">Updated 12.2015</span>
                                    </div>
                                </div>
                                <div class="ibox-content no-padding">
                                    <div class="flot-chart m-t-lg" style="height: 55px;">
                                        <div class="flot-chart-content" id="flot-chart1"></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="ibox float-e-margins">
                                <div class="ibox chat-view">
                                    <div class="ibox-title">
                                        <small class="pull-right text-muted">Last message:  Mon Jan 26 2015 - 18:39:23</small> Chat room panel
                                    </div>


                                    <div class="ibox-content">

                                        <div class="row">

                                            <div class="col-md-9 ">
                                                <div class="chat-discussion">

                                                    <div class="chat-message left">
                                                        <img class="message-avatar" src="img/a1.jpg" alt="">
                                                        <div class="message">
                                                            <a class="message-author" href="#"> Michael Smith </a>
                                                            <span class="message-date"> Mon Jan 26 2015 - 18:39:23 </span>
                                                            <span class="message-content">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="chat-message right">
                                                        <img class="message-avatar" src="img/a4.jpg" alt="">
                                                        <div class="message">
                                                            <a class="message-author" href="#"> Karl Jordan </a>
                                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                                            <span class="message-content">
                                                            Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover.
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="chat-message right">
                                                        <img class="message-avatar" src="img/a2.jpg" alt="">
                                                        <div class="message">
                                                            <a class="message-author" href="#"> Michael Smith </a>
                                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                                            <span class="message-content">
                                                            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="chat-message left">
                                                        <img class="message-avatar" src="img/a5.jpg" alt="">
                                                        <div class="message">
                                                            <a class="message-author" href="#"> Alice Jordan </a>
                                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                                            <span class="message-content">
                                                            All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                                                                It uses a dictionary of over 200 Latin words.
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="chat-message right">
                                                        <img class="message-avatar" src="img/a6.jpg" alt="">
                                                        <div class="message">
                                                            <a class="message-author" href="#"> Mark Smith </a>
                                                            <span class="message-date">  Fri Jan 25 2015 - 11:12:36 </span>
                                                            <span class="message-content">
                                                            All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                                                                It uses a dictionary of over 200 Latin words.
                                                            </span>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class="col-md-3">
                                                <div class="chat-users">


                                                    <div class="users-list">
                                                        <div class="chat-user">
                                                            <img class="chat-avatar" src="img/a4.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Karl Jordan</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <img class="chat-avatar" src="img/a1.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Monica Smith</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <span class="pull-right label label-primary">Online</span>
                                                            <img class="chat-avatar" src="img/a2.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Michael Smith</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <span class="pull-right label label-primary">Online</span>
                                                            <img class="chat-avatar" src="img/a3.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Janet Smith</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <img class="chat-avatar" src="img/a5.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Alice Smith</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <img class="chat-avatar" src="img/a6.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Monica Cale</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <img class="chat-avatar" src="img/a2.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Mark Jordan</a>
                                                            </div>
                                                        </div>
                                                        <div class="chat-user">
                                                            <span class="pull-right label label-primary">Online</span>
                                                            <img class="chat-avatar" src="img/a3.jpg" alt="">
                                                            <div class="chat-user-name">
                                                                <a href="#">Janet Smith</a>
                                                            </div>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="chat-message-form">

                                                    <div class="form-group">

                                                        <textarea class="form-control message-input" name="message" placeholder="Enter message text"></textarea>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-warning pull-right">Data has changed</span>
                                    <h5>User activity</h5>
                                </div>
                                <div class="ibox-content">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <small class="stats-label">Pages / Visit</small>
                                            <h4>236 321.80</h4>
                                        </div>

                                        <div class="col-xs-4">
                                            <small class="stats-label">% New Visits</small>
                                            <h4>46.11%</h4>
                                        </div>
                                        <div class="col-xs-4">
                                            <small class="stats-label">Last week</small>
                                            <h4>432.021</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="ibox-content">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <small class="stats-label">Pages / Visit</small>
                                            <h4>643 321.10</h4>
                                        </div>

                                        <div class="col-xs-4">
                                            <small class="stats-label">% New Visits</small>
                                            <h4>92.43%</h4>
                                        </div>
                                        <div class="col-xs-4">
                                            <small class="stats-label">Last week</small>
                                            <h4>564.554</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="ibox-content">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <small class="stats-label">Pages / Visit</small>
                                            <h4>436 547.20</h4>
                                        </div>

                                        <div class="col-xs-4">
                                            <small class="stats-label">% New Visits</small>
                                            <h4>150.23%</h4>
                                        </div>
                                        <div class="col-xs-4">
                                            <small class="stats-label">Last week</small>
                                            <h4>124.990</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-lg-12">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Hot Profile </h5>
                                </div>
                                <div class="ibox-content">
                                    <div class="row" id="row-hot-profile">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
            <div class="footer">
                <div class="pull-right">
                    10GB of <strong>250GB</strong> Free.
                </div>
                <div>
                    <strong>Copyright</strong> Example Company &copy; 2014-2015
                </div>
            </div>

        </div>
    	</div>
    </jsp:body>
</t:genericpage>