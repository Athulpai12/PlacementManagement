<!DOCTYPE html>
<html>
    <head>
    	<title>Placement Portal</title>
    	<meta charset="UTF-8">
        <meta http-equiv="Cache-Control" content="no-store" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/dc/a0/54/dca0545b-bcdb-9c2a-b580-300221da1eda/source/512x512bb.jpg">
        <link href="css/font-face.css" rel="stylesheet" media="all">
        <link href="framework/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="framework/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="framework/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="framework/animsition/animsition.min.css" rel="stylesheet" media="all">
        <link href="framework/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
        <link href="css/theme.css" rel="stylesheet" media="all">
        
        <script src="framework/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="framework/bootstrap-4.1/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/loadsearch.js"></script>
        <script type="text/javascript" src="js/jquery.cookie.min.js"></script>
        <script type="text/javascript" src="js/typeahead.min.js"></script>
        <script src="js/bootstrap3-typeahead.min.js"></script>          
    </head>
    <body class="animsition">
         <div class="page-wrapper">
            <aside class="menu-sidebar d-none d-lg-block">
                <div class="logo"<div class="logo" style="background-color: white;">>
                    <a href="dashboard.html">
                        <img src="images/icon/PES_logo.png" alt="Placements" class="Left-corner-img" />
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li>
                                <a class="js-arrow" href="dashboard.html"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            </li>
                             <li>
                                <a href="profile.html"><i class="fas fa-user"></i>Profile</a>
                            </li>
                            <li>
                                <a href="analytics.html"><i class="fas fa-chart-bar"></i>Analytics</a>
                            </li>
                            <li>
                                <a href="form.html"><i class="far fa-check-square"></i>Forms</a>
                            </li>
                            <li>
                                <a href="info.html"><i class="fas fa-comments"></i>Feedback</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <div class="page-container">
                <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <form class="form-header" action="search.php" method="GET">
                                    <input class="au-input au-input--xl" type="text" name="search" id="student_search_data" class="typeahead" data-provide="typeahead" autocomplete="off" placeholder="Search" />
                                    <button class="au-btn--submit" id="student_search_data_submit" type="submit">
                                        <i class="zmdi zmdi-search"></i>
                                    </button>
                                </form>
                                <div class="header-button">      
                                    <div class="account-wrap">
                                        <div class="account-item clearfix js-item-menu">
                                            <div class="image">
                                                <img id="user_photo_poster" />
                                            </div>
                                            <div class="content">
                                                <a class="js-acc-btn" id="header_dropdown_name_hyperlink" href="#">John Doe</a>
                                            </div>
                                            <div class="account-dropdown js-dropdown">
                                                <div class="info clearfix">
                                                    <div class="image">
                                                        <a href="#">
                                                            <img id="user_photo_dropdown"/>
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <h5 class="name">
                                                            <span id="header_dropdown_name">User</span>
                                                        </h5>
                                                        <span id="header_dropdown_email">user@mail.com</span>
                                                    </div>
                                                </div>
                                                <div id="logout" class="account-dropdown__footer">
                                                    <a href="../logout.php">
                                                        <i class="zmdi zmdi-power"></i>Logout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12" id="columndiv">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <script src="framework/animsition/animsition.min.js"></script>
        <!-- Main JS-->
        <script src="js/main.js"></script>
    </body>
</html>