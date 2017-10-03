
<%@ page import="main.java.model.user.User" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	User user = (User) request.getAttribute("userInfo");
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Dashboard v.4</title>

    <link href="html-design/css/bootstrap.min.css" rel="stylesheet">
    <link href="html-design/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="html-design/css/animate.css" rel="stylesheet">
    <link href="html-design/css/style.css" rel="stylesheet">

</head>

<body class="top-navigation">

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
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
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
                            <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>
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
                                    <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>
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
                                    <div class="font-bold text-navy">44% <i class="fa fa-level-up"></i> <small>Rapid pace</small></div>
                                </div>
                                <div class="col-md-6">
                                    <h1 class="no-margins">206,120</h1>
                                    <div class="font-bold text-navy">22% <i class="fa fa-level-up"></i> <small>Slow pace</small></div>
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
                                        <small class="pull-right text-muted">Last message:  Mon Jan 26 2015 - 18:39:23</small>
                                            Chat room panel
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
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="#">Config option 1</a>
                                        </li>
                                        <li><a href="#">Config option 2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                    <div class="wrapper wrapper-content animated fadeInRight">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a2.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>John Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a1.jpg">
                                                                <div class="m-t-xs font-bold">CEO</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Alex Johnatan</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a3.jpg">
                                                                <div class="m-t-xs font-bold">Marketing manager</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Monica Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a4.jpg">
                                                                <div class="m-t-xs font-bold">Sales manager</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Michael Zimber</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a5.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Sandra Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a6.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Janet Carton</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a1.jpg">
                                                                <div class="m-t-xs font-bold">CEO</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Alex Johnatan</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a2.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>John Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a3.jpg">
                                                                <div class="m-t-xs font-bold">Marketing manager</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Monica Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a4.jpg">
                                                                <div class="m-t-xs font-bold">Sales manager</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Michael Zimber</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a5.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Sandra Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a6.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Janet Carton</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                            </a>
                                    
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a1.jpg">
                                                                <div class="m-t-xs font-bold">CEO</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>Alex Johnatan</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="contact-box">
                                                        <a href="profile.html">
                                                        <div class="col-sm-4">
                                                            <div class="text-center">
                                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a2.jpg">
                                                                <div class="m-t-xs font-bold">Graphics designer</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <h3><strong>John Smith</strong></h3>
                                                            <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                                            <address>
                                                                <strong>Twitter, Inc.</strong><br>
                                                                795 Folsom Ave, Suite 600<br>
                                                                San Francisco, CA 94107<br>
                                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                                            </address>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
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



    <!-- Mainly scripts -->
    <script src="html-design/js/jquery-2.1.1.js"></script>
    <script src="html-design/js/bootstrap.min.js"></script>
    <script src="html-design/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="html-design/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="html-design/js/inspinia.js"></script>
    <script src="html-design/js/plugins/pace/pace.min.js"></script>

    <!-- Flot -->
    <script src="html-design/js/plugins/flot/jquery.flot.js"></script>
    <script src="html-design/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="html-design/js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="html-design/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Peity -->
    <script src="html-design/js/plugins/peity/jquery.peity.min.js"></script>
    <!-- Peity demo -->
    <script src="html-design/js/demo/peity-demo.js"></script>


    <script>
        $(document).ready(function() {


            var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
            var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];

            var data1 = [
                { label: "Data 1", data: d1, color: '#17a084'},
                { label: "Data 2", data: d2, color: '#127e68' }
            ];
            $.plot($("#flot-chart1"), data1, {
                xaxis: {
                    tickDecimals: 0
                },
                series: {
                    lines: {
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 1
                            }, {
                                opacity: 1
                            }]
                        },
                    },
                    points: {
                        width: 0.1,
                        show: false
                    },
                },
                grid: {
                    show: false,
                    borderWidth: 0
                },
                legend: {
                    show: false,
                }
            });

            var lineData = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                    {
                        label: "Example dataset",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,1)",
                        pointColor: "rgba(220,220,220,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(220,220,220,1)",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    },
                    {
                        label: "Example dataset",
                        fillColor: "rgba(26,179,148,0.5)",
                        strokeColor: "rgba(26,179,148,0.7)",
                        pointColor: "rgba(26,179,148,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(26,179,148,1)",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    }
                ]
            };

            var lineOptions = {
                scaleShowGridLines: true,
                scaleGridLineColor: "rgba(0,0,0,.05)",
                scaleGridLineWidth: 1,
                bezierCurve: true,
                bezierCurveTension: 0.4,
                pointDot: true,
                pointDotRadius: 4,
                pointDotStrokeWidth: 1,
                pointHitDetectionRadius: 20,
                datasetStroke: true,
                datasetStrokeWidth: 2,
                datasetFill: true,
                responsive: true,
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            var myNewChart = new Chart(ctx).Line(lineData, lineOptions);

        });
    </script>

</body>

</html>
