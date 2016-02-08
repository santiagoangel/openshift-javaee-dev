<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.inject.Inject" %>
<%@ page import="org.picketlink.Identity" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	if (request.getUserPrincipal() == null) {
		String index = request.getContextPath() + "/";
		response.sendRedirect(index);
	} 
	
	else {
%>

<!DOCTYPE html>
<!--[if IE 9]><html lang="en-us" class="ie9 layout-pf-alt layout-pf-alt-fixed layout-pf-alt-fixed-with-footer layout-pf-alt-fixed-inner-scroll"><![endif]-->
<!--[if gt IE 9]><!-->
<html lang="en-us" class="layout-pf-alt layout-pf-alt-fixed layout-pf-alt-fixed-with-footer layout-pf-alt-fixed-inner-scroll">
  <!--<![endif]-->
    <head>
    <title>Openshift-javaee-dev with PatternFly</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="<%= request.getContextPath() %>/dist/img/favicon.ico">
    <!-- iPad retina icon -->
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-152.png">
    <!-- iPad retina icon (iOS < 7) -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-144.png">
    <!-- iPad non-retina icon -->
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-76.png">
    <!-- iPad non-retina icon (iOS < 7) -->
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-72.png">
    <!-- iPhone 6 Plus icon -->
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-180.png">
    <!-- iPhone retina icon (iOS < 7) -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-114.png">
    <!-- iPhone non-retina icon (iOS < 7) -->
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="<%= request.getContextPath() %>/dist/img/apple-touch-icon-precomposed-57.png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/dist/css/patternfly.min.css" >
    <link rel="stylesheet" href="<%= request.getContextPath() %>/dist/css/patternfly-additions.min.css" >
    <script src="//code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.6.0/jquery.matchHeight-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/d3/3.5.0/d3.min.js"></script>
    <script src="<%= request.getContextPath() %>/dist/js/patternfly.min.js"></script>
  </head>

  <body class="cards-pf">
    <nav class="navbar navbar-pf-alt">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a href="/" class="navbar-brand">
      <h1><strong>Openshift-javaee-dev</strong></h1>
    </a>
  </div>
  <nav class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li><a href="#" target="_blank" class="nav-item-iconic nav-item-iconic-new-window"><span title="Launch" class="fa fa-external-link"></span></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right navbar-iconic">
      <li class="dropdown">
        <a class="dropdown-toggle nav-item-iconic" id="notifications" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <span title="Notifications" class="fa pficon-flag"></span>
          <span class="badge">2</span>
        </a>
        <div class="dropdown-menu infotip bottom-right">
          <div class="arrow"></div>
          <ul class="list-group">
            <li class="list-group-item">
              <span class="i pficon pficon-info"></span> Modified Datasources ExampleDS
            </li>
            <li class="list-group-item">
              <span class="i pficon pficon-info"></span> Error: System Failure
            </li>
          </ul>
          <div class="footer">
            <a>Clear Messages</a>
          </div>
        </div>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle nav-item-iconic" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <span title="Help" class="fa pficon-help"></span>
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
          <li><a href="#">Help</a></li>
          <li><a href="#">About</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle nav-item-iconic" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <span title="Username" class="fa pficon-user"></span>
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
          <li><a href="#">Preferences</a></li>
          <li><a href="#">Logout</a></li>
        </ul>
      </li>
    </ul>
  </nav>

</nav> <!--/.navbar-->

<nav class="nav-pf-vertical-alt">
  <ul class="list-group">
    <li class="list-group-item active">
      <a href="#">
        <span class="fa fa-dashboard" title="Dashboard" data-toggle="tooltip" data-placement="right"></span>
        <span class="list-group-item-value">Dashboard</span>
      </a>
    </li>
    <li class="list-group-item">
      <a href="#">
        <span class="fa fa-file-o" title="My Services" data-toggle="tooltip" data-placement="right"></span>
        <span class="list-group-item-value">My Services</span>
        <span class="badge">12</span>
      </a>
    </li>
    <li class="list-group-item">
      <a href="#">
        <span class="fa fa-file-text-o" title="My Requests" data-toggle="tooltip" data-placement="right"></span>
        <span class="list-group-item-value">My Requests</span>
        <span class="badge">2</span>
      </a>
    </li>
    <li class="list-group-item">
      <a href="#">
        <span class="fa fa-copy" title="My Items" data-toggle="tooltip" data-placement="right"></span>
        <span class="list-group-item-value">My Items</span>
      </a>
    </li>
    <li class="list-group-item list-group-item-separator hidden-sm hidden-md hidden-lg">
      <a href="#">
        <span class="fa fa-external-link" title="Launch"></span>
        <span class="list-group-item-value">Launch</span>
      </a>
    </li>
    <li class="list-group-item hidden-sm hidden-md hidden-lg">
      <a href="#">
        <span class="pficon pficon-flag" title="Notifications"></span>
        <span class="list-group-item-value">Notifications</span>
        <span class="badge notifications">2</span>
      </a>
    </li>
    <li class="list-group-item hidden-sm hidden-md hidden-lg">
      <a href="#">
        <span class="pficon pficon-help" title="Help"></span>
        <span class="list-group-item-value">Help</span>
      </a>
    </li>
     <li class="list-group-item hidden-sm hidden-md hidden-lg">
      <a href="#">
        <span class="fa fa-info-circle" title="About"></span>
        <span class="list-group-item-value">About</span>
      </a>
    </li>
    <li class="list-group-item hidden-sm hidden-md hidden-lg">
      <a href="#">
        <span class="pficon pficon-user" title="Preferences"></span>
        <span class="list-group-item-value">Preferences</span>
      </a>
    </li>
    <li class="list-group-item hidden-sm hidden-md hidden-lg">
      <a href="#">
        <span class="fa fa-sign-out" title="Log Out"></span>
        <span class="list-group-item-value">Log Out</span>
      </a>
    </li>
  </ul>
</nav>
<div class="container-fluid container-cards-pf container-pf-alt-nav-pf-vertical-alt">
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-6 col-sm-4 col-md-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status">
            <h2 class="card-pf-title">
              <span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">0</span> Ipsum
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <span class="card-pf-aggregate-status-notification"><a href="#" class="add" data-toggle="tooltip" data-placement="top" title="Add Ipsum"><span class="pficon pficon-add-circle-o"></span></a></span>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status">
            <h2 class="card-pf-title">
              <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">20</span> Amet</a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <span class="card-pf-aggregate-status-notification"><a href="#"><span class="pficon pficon-error-circle-o"></span>4</a></span>
                <span class="card-pf-aggregate-status-notification"><a href="#"><span class="pficon pficon-warning-triangle-o"></span>1</a></span>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status">
            <h2 class="card-pf-title">
              <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">9</span> Adipiscing</a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <span class="card-pf-aggregate-status-notification"><span class="pficon pficon-ok"></span></span>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status">
            <h2 class="card-pf-title">
              <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">12</span> Lorem</a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status">
            <h2 class="card-pf-title">
              <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">6</span> Dolar Sit</a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status">
            <h2 class="card-pf-title">
              <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">199</span> Consectetur</a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
              </p>
            </div>
          </div>
        </div>
      </div><!-- /row -->
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status card-pf-aggregate-status-mini">
            <h2 class="card-pf-title">
              <span class="fa fa-rebel"></span>
              <span class="card-pf-aggregate-status-count">0</span> Ipsum
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <span class="card-pf-aggregate-status-notification"><a href="#" class="add" data-toggle="tooltip" data-placement="top" title="Add Ipsum"><span class="pficon pficon-add-circle-o"></span></a></span>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status card-pf-aggregate-status-mini">
            <h2 class="card-pf-title">
              <span class="fa fa-paper-plane"></span>
              <a href="#">
                <span class="card-pf-aggregate-status-count">20</span> Amet
              </a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <span class="card-pf-aggregate-status-notification"><a href="#"><span class="pficon pficon-error-circle-o"></span>4</a></span>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status card-pf-aggregate-status-mini">
            <h2 class="card-pf-title">
              <span class="pficon pficon-cluster"></span>
              <a href="#">
                <span class="card-pf-aggregate-status-count">9</span> Adipiscing
              </a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <span class="card-pf-aggregate-status-notification"><span class="pficon pficon-ok"></span></span>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status card-pf-aggregate-status-mini">
            <h2 class="card-pf-title">
              <span class="pficon pficon-image"></span>
              <a href="#">
                <span class="card-pf-aggregate-status-count">12</span> Lorem
              </a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status card-pf-aggregate-status-mini">
            <h2 class="card-pf-title">
              <span class="fa fa-shield"></span>
              <a href="#">
                <span class="card-pf-aggregate-status-count">6</span> Dolar Sit
              </a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
          <div class="card-pf card-pf-accented card-pf-aggregate-status card-pf-aggregate-status-mini">
            <h2 class="card-pf-title">
              <span class="fa fa-rocket"></span>
              <a href="#">
                <span class="card-pf-aggregate-status-count">199</span> Consectetur
              </a>
            </h2>
            <div class="card-pf-body">
              <p class="card-pf-aggregate-status-notifications">
                <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>23</span></a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="card-pf">
            <div class="card-pf-heading">
              <h2 class="card-pf-title">
                Top Utilized Clusters
              </h2>
            </div>
            <div class="card-pf-body">
              <div class="progress-description">
                RHOS6-Controller
              </div>
              <div class="progress progress-label-top-right">
                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%;"  data-toggle="tooltip" title="95% Used">
                  <span><strong>190.0 of 200.0 GB</strong> Used</span>
                </div>
                <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%;" data-toggle="tooltip" title="5% Available">
                  <span class="sr-only">5% Available</span>
                </div>
              </div>
              <div class="progress-description">
                CFMEQE-Cluster
              </div>
              <div class="progress progress-label-top-right">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"  data-toggle="tooltip" title="50% Used">
                  <span><strong>100.0 of 200.0 GB</strong> Used</span>
                </div>
                <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="50% Available">
                  <span class="sr-only">50% Available</span>
                </div>
              </div>
              <div class="progress-description">
                RHOS-Undercloud
              </div>
              <div class="progress progress-label-top-right">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;"  data-toggle="tooltip" title="70% Used">
                  <span><strong>140.0 of 200.0 GB</strong> Used</span>
                </div>
                <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;" data-toggle="tooltip" title="30% Available">
                  <span class="sr-only">30% Available</span>
                </div>
              </div>
              <div class="progress-description">
                RHEL6-Controller
              </div>
              <div class="progress progress-label-top-right">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="76.5" aria-valuemin="0" aria-valuemax="100" style="width: 76.5%;"  data-toggle="tooltip" title="76.5% Used">
                  <span><strong>153.0 of 200.0 GB</strong> Used</span>
                </div>
                <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="23.5" aria-valuemin="0" aria-valuemax="100" style="width: 23.5%;" data-toggle="tooltip" title="23.5% Available">
                  <span class="sr-only">23.5% Available</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="card-pf">
            <div class="card-pf-heading">
              <h2 class="card-pf-title">
                Quotas
              </h2>
            </div>
            <div class="card-pf-body">
              <div class="progress-container progress-description-left progress-label-right">
                <div class="progress-description">
                  CPU
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;" data-toggle="tooltip" title="25% Used">
                    <span><strong>115 of 460</strong> MHz</span>
                  </div>
                  <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;" data-toggle="tooltip" title="75% Available">
                    <span class="sr-only">75% Available</span>
                  </div>
                </div>
              </div>
              <div class="progress-container progress-description-left progress-label-right">
                <div class="progress-description">
                  Memory
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="8 GB Used">
                    <span><strong>8 of 16</strong> GB</span>
                  </div>
                  <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="8 GB Available">
                    <span class="sr-only">50% Available</span>
                  </div>
                </div>
              </div>
              <div class="progress-container progress-description-left progress-label-right">
                <div class="progress-description">
                  Pods
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="62.5" aria-valuemin="0" aria-valuemax="100" style="width: 62.5%;" data-toggle="tooltip" title="62.5% Used">
                    <span><strong>5 of 8</strong> Total</span>
                  </div>
                  <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="37.5" aria-valuemin="0" aria-valuemax="100" style="width: 37.5%;" data-toggle="tooltip" title="37.5% Available">
                    <span class="sr-only">37.5% Available</span>
                  </div>
                </div>
              </div>
              <div class="progress-container progress-description-left progress-label-right">
                <div class="progress-description">
                  Services
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" data-toggle="tooltip" title="100% Used">
                    <span><strong>2 of 2</strong> Total</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="card-pf">
            <div class="card-pf-heading">
              <h2 class="card-pf-title">
                Quotas
              </h2>
            </div>
            <div class="card-pf-body">
              <div class="progress-container progress-description-left">
                <div class="progress-description">
                  CPU
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;" data-toggle="tooltip" title="25% Used">
                    <span class="sr-only">25% Used</span>
                  </div>
                  <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;" data-toggle="tooltip" title="75% Available">
                    <span class="sr-only">75% Available</span>
                  </div>
                </div>
              </div>
              <div class="progress-container progress-description-left">
                <div class="progress-description">
                  Memory
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="8 GB Used">
                    <span class="sr-only">50% Used</span>
                  </div>
                  <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="8 GB Available">
                    <span class="sr-only">50% Available</span>
                  </div>
                </div>
              </div>
              <div class="progress-container progress-description-left">
                <div class="progress-description">
                  Pods
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="62.5" aria-valuemin="0" aria-valuemax="100" style="width: 62.5%;" data-toggle="tooltip" title="62.5% Used">
                    <span class="sr-only">62.5% Used</span>
                  </div>
                  <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="37.5" aria-valuemin="0" aria-valuemax="100" style="width: 37.5%;" data-toggle="tooltip" title="37.5% Available">
                    <span class="sr-only">37.5% Available</span>
                  </div>
                </div>
              </div>
              <div class="progress-container progress-description-left">
                <div class="progress-description">
                  Services
                </div>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" data-toggle="tooltip" title="100% Used">
                    <span class="sr-only">100% Used</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div><!-- /row -->
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
<div class="col-md-12">
  <div class="card-pf card-pf-utilization">
    <div class="card-pf-heading">
      <p class="card-pf-heading-details">Last 30 days</p>
      <h2 class="card-pf-title">
        Utilization
      </h2>
    </div>
    <div class="card-pf-body">
      <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-4">
          <h3 class="card-pf-subtitle">CPU</h3>
          <p class="card-pf-utilization-details">
            <span class="card-pf-utilization-card-details-count">50</span>
            <span class="card-pf-utilization-card-details-description">
              <span class="card-pf-utilization-card-details-line-1">Available</span>
              <span class="card-pf-utilization-card-details-line-2">of 1000 MHz</span>
            </span>
          </p>
          <div id="chart-pf-donut-1"></div>
          <div class="chart-pf-sparkline" id="chart-pf-sparkline-1"></div>
          <script>
            var donutConfig = $().c3ChartDefaults().getDefaultDonutConfig('A');
            donutConfig.bindto = '#chart-pf-donut-1';
            donutConfig.color =  {
              pattern: ["#cc0000","#D1D1D1"]
            };
            donutConfig.data = {
              type: "donut",
              columns: [
                ["Used", 95],
                ["Available", 5]
              ],
              groups: [
                ["used", "available"]
              ],
              order: null
            };
            donutConfig.tooltip = {
              contents: function (d) {
                return '<span class="donut-tooltip-pf" style="white-space: nowrap;">' +
                  Math.round(d[0].ratio * 100) + '%' + ' MHz ' + d[0].name +
                  '</span>';
              }
            };

            var chart1 = c3.generate(donutConfig);
            var donutChartTitle = d3.select("#chart-pf-donut-1").select('text.c3-chart-arcs-title');
            donutChartTitle.text("");
            donutChartTitle.insert('tspan').text("950").classed('donut-title-big-pf', true).attr('dy', 0).attr('x', 0);
            donutChartTitle.insert('tspan').text("MHz Used").classed('donut-title-small-pf', true).attr('dy', 20).attr('x', 0);

            var sparklineConfig = $().c3ChartDefaults().getDefaultSparklineConfig();
            sparklineConfig.bindto = '#chart-pf-sparkline-1';
            sparklineConfig.data = {
              columns: [
                ['%', 10, 50, 28, 20, 31, 27, 60, 36, 52, 55, 62, 68, 69, 88, 74, 88, 95],
              ],
              type: 'area'
            };
            var chart2 = c3.generate(sparklineConfig);
          </script>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
          <h3 class="card-pf-subtitle">Memory</h3>
          <p class="card-pf-utilization-details">
            <span class="card-pf-utilization-card-details-count">256</span>
            <span class="card-pf-utilization-card-details-description">
              <span class="card-pf-utilization-card-details-line-1">Available</span>
              <span class="card-pf-utilization-card-details-line-2">of 432 GB</span>
            </span>
          </p>
          <div id="chart-pf-donut-2"></div>
          <div class="chart-pf-sparkline" id="chart-pf-sparkline-2"></div>
          <script>
            var donutConfig = $().c3ChartDefaults().getDefaultDonutConfig('A');
            donutConfig.bindto = '#chart-pf-donut-2';
            donutConfig.color =  {
              pattern: ["#3f9c35","#D1D1D1"]
            };
            donutConfig.data = {
              type: "donut",
              columns: [
                ["Used", 41],
                ["Available", 59]
              ],
              groups: [
                ["used", "available"]
              ],
              order: null
            };
            donutConfig.tooltip = {
              contents: function (d) {
                return '<span class="donut-tooltip-pf" style="white-space: nowrap;">' +
                  Math.round(d[0].ratio * 100) + '%' + ' GB ' + d[0].name +
                  '</span>';
              }
            };

            var chart3 = c3.generate(donutConfig);
            var donutChartTitle = d3.select("#chart-pf-donut-2").select('text.c3-chart-arcs-title');
            donutChartTitle.text("");
            donutChartTitle.insert('tspan').text("176").classed('donut-title-big-pf', true).attr('dy', 0).attr('x', 0);
            donutChartTitle.insert('tspan').text("GB Used").classed('donut-title-small-pf', true).attr('dy', 20).attr('x', 0);

            var sparklineConfig = $().c3ChartDefaults().getDefaultSparklineConfig();
            sparklineConfig.bindto = '#chart-pf-sparkline-2';
            sparklineConfig.data = {
              columns: [
                ['%', 35, 36, 20, 30, 31, 22, 44, 36, 40, 41, 55, 52, 48, 48, 50, 40, 41],
              ],
              type: 'area'
            };
            var chart4 = c3.generate(sparklineConfig);
          </script>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
          <h3 class="card-pf-subtitle">Network</h3>
          <p class="card-pf-utilization-details">
            <span class="card-pf-utilization-card-details-count">200</span>
            <span class="card-pf-utilization-card-details-description">
              <span class="card-pf-utilization-card-details-line-1">Available</span>
              <span class="card-pf-utilization-card-details-line-2">of 1300 Gbps</span>
            </span>
          </p>
          <div id="chart-pf-donut-3"></div>
          <div class="chart-pf-sparkline" id="chart-pf-sparkline-3"></div>
          <script>
            var donutConfig = $().c3ChartDefaults().getDefaultDonutConfig('A');
            donutConfig.bindto = '#chart-pf-donut-3';
            donutConfig.color =  {
              pattern: ["#EC7A08","#D1D1D1"]
            };
            donutConfig.data = {
              type: "donut",
              columns: [
                ["Used", 85],
                ["Available", 15]
              ],
              groups: [
                ["used", "available"]
              ],
              order: null
            };
            donutConfig.tooltip = {
              contents: function (d) {
                return '<span class="donut-tooltip-pf" style="white-space: nowrap;">' +
                  Math.round(d[0].ratio * 100) + '%' + ' Gbps ' + d[0].name +
                  '</span>';
              }
            };

            var chart5 = c3.generate(donutConfig);
            var donutChartTitle = d3.select("#chart-pf-donut-3").select('text.c3-chart-arcs-title');
            donutChartTitle.text("");
            donutChartTitle.insert('tspan').text("1100").classed('donut-title-big-pf', true).attr('dy', 0).attr('x', 0);
            donutChartTitle.insert('tspan').text("Gbps Used").classed('donut-title-small-pf', true).attr('dy', 20).attr('x', 0);

            var sparklineConfig = $().c3ChartDefaults().getDefaultSparklineConfig();
            sparklineConfig.bindto = '#chart-pf-sparkline-3';
            sparklineConfig.data = {
              columns: [
                ['%', 60, 55, 70, 44, 31, 67, 54, 46, 58, 75, 62, 68, 69, 88, 74, 88, 85],
              ],
              type: 'area'
            };
            var chart6 = c3.generate(sparklineConfig);
          </script>
        </div>
      </div>
    </div>
  </div>
</div>

      </div><!-- /row -->
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
<div class="col-xs-12 col-sm-4 col-md-4">
  <div class="card-pf card-pf-utilization">
    <h2 class="card-pf-title">
      Network
    </h2>
    <div class="card-pf-body">
      <p class="card-pf-utilization-details">
        <span class="card-pf-utilization-card-details-count">200</span>
        <span class="card-pf-utilization-card-details-description">
          <span class="card-pf-utilization-card-details-line-1">Available</span>
          <span class="card-pf-utilization-card-details-line-2">of 1300 Gbps</span>
        </span>
      </p>
      <div id="chart-pf-donut-4"></div>
      <div class="chart-pf-sparkline" id="chart-pf-sparkline-4"></div>
      <script>
        var c3ChartDefaults = $().c3ChartDefaults();

        var donutConfig = c3ChartDefaults.getDefaultDonutConfig('A');
        donutConfig.bindto = '#chart-pf-donut-4';
        donutConfig.color =  {
          pattern: ["#EC7A08","#D1D1D1"]
        };
        donutConfig.data = {
          type: "donut",
          columns: [
            ["Used", 85],
            ["Available", 15]
          ],
          groups: [
            ["used", "available"]
          ],
          order: null
        };
        donutConfig.tooltip = {
          contents: function (d) {
            return '<span class="donut-tooltip-pf" style="white-space: nowrap;">' +
              Math.round(d[0].ratio * 100) + '%' + ' Gbps ' + d[0].name +
              '</span>';
          }
        };

        var chart1 = c3.generate(donutConfig);
        var donutChartTitle = d3.select("#chart-pf-donut-4").select('text.c3-chart-arcs-title');
        donutChartTitle.text("");
        donutChartTitle.insert('tspan').text("1100").classed('donut-title-big-pf', true).attr('dy', 0).attr('x', 0);
        donutChartTitle.insert('tspan').text("Gpbs Used").classed('donut-title-small-pf', true).attr('dy', 20).attr('x', 0);

        var sparklineConfig = c3ChartDefaults.getDefaultSparklineConfig();
        sparklineConfig.bindto = '#chart-pf-sparkline-4';
        sparklineConfig.data = {
          columns: [
            ['%', 60, 55, 70, 44, 31, 67, 54, 46, 58, 75, 62, 68, 69, 88, 74, 88, 85],
          ],
            type: 'area'
        };

        var chart2 = c3.generate(sparklineConfig);
      </script>
    </div>
  </div>
</div>

      </div><!-- /row -->
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-12 col-sm-6 col-md-5">
          <div class="card-pf">
            <div class="card-pf-heading">
              <div class="dropdown card-pf-time-frame-filter">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  Last 30 Days <span class="caret"></span>
                </button>
                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                  <li><a href="#">Last 60 Days</a></li>
                  <li><a href="#">Last 90 Days</a></li>
                </ul>
              </div>
              <h2 class="card-pf-title">
                Card Title
              </h2>
            </div>
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-7">
          <div class="card-pf">
            <h2 class="card-pf-title">
              Card Title
            </h2>
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
            <div class="card-pf-footer">
              <div class="dropdown card-pf-time-frame-filter">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  Last 30 Days <span class="caret"></span>
                </button>
                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                  <li><a href="#">Last 60 Days</a></li>
                  <li><a href="#">Last 90 Days</a></li>
                </ul>
              </div>
              <p>
                <a href="#" class="card-pf-link-with-icon">
                  <span class="pficon pficon-add-circle-o"></span>Add New Cluster
                </a>
              </p>
            </div>
          </div>
        </div>
      </div><!-- /row -->
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-12 col-sm-5 col-md-5">
          <div class="card-pf">
            <h2 class="card-pf-title">
              Card Title
            </h2>
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
            <div class="card-pf-footer">
              <div class="dropdown card-pf-time-frame-filter">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  Last 30 Days <span class="caret"></span>
                </button>
                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                  <li><a href="#">Last 60 Days</a></li>
                  <li><a href="#">Last 90 Days</a></li>
                </ul>
              </div>
              <p>
                <a href="#" class="card-pf-link-with-icon">
                  <span class="pficon pficon-flag"></span>View CPU Events
                </a>
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-7 col-md-7">
          <div class="card-pf">
            <h2 class="card-pf-title">
              Card Title
            </h2>
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-6 col-sm-8 col-md-8">
          <div class="card-pf">
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
            <div class="card-pf-footer">
              <p><a href="#">Footer link</a></p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-4">
          <div class="card-pf">
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
            <div class="card-pf-footer">
              <p><a href="#">Footer link</a></p>
            </div>
          </div>
        </div>
      </div><!-- /row -->
      <div class="row row-cards-pf">
      <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
        <div class="col-xs-6 col-sm-6 col-md-6">
          <div class="card-pf">
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
          <div class="card-pf">
            <div class="card-pf-body">
              <p>[card contents]</p>
            </div>
          </div>
        </div>
      </div><!-- /row -->

</div>
<footer class="container-fluid footer-pf-alt">
  <p>&copy; 2016 Openshift-javaee-dev</p>
</footer>

<script>
  $(function() {
    // matchHeight the contents of each .card-pf and then the .card-pf itself
    $(".row-cards-pf > [class*='col'] > .card-pf .card-pf-title").matchHeight();
    $(".row-cards-pf > [class*='col'] > .card-pf > .card-pf-body").matchHeight();
    $(".row-cards-pf > [class*='col'] > .card-pf > .card-pf-footer").matchHeight();
    $(".row-cards-pf > [class*='col'] > .card-pf").matchHeight();
    // initialize tooltips
    $('[data-toggle="tooltip"]').tooltip();
  });
</script>

  </body>
</html>
<%
    }
%>
