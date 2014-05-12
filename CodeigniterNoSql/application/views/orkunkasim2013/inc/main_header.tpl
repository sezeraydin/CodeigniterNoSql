<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="us-EN">
<head>
<title>Orkun Online Test</title>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- ===================== CSS ===================== -->    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>  
    <link rel="stylesheet" href="{$ASSETSURL}css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/bootstrap/bootstrap-responsive.min.css">    
    <link href="{$ASSETSURL}css/bootstrap/responsive.css" rel="stylesheet" />
  <!-- main styles -->
     
    <link rel="stylesheet" href="{$ASSETSURL}css/main.css" rel="stylesheet" />
    <!-- Site specific - CSS --> 
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/prettify.css">    
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/tables/dataTables.css">         
    <link rel='stylesheet' href='{$ASSETSURL}css/theme_light/calendar/fullcalendar.css' />
    <link rel='stylesheet' href='{$ASSETSURL}css/theme_light/calendar/fullcalendar.print.css' media='print' /> 
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/formselements/chosen.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/formselements/dropkick.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/jquery-ui-1.8.20.custom.css">        
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/filevalidation/validationEngine.jquery.css">  
    <!-- Common - CSS -->     
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/common.css">  
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light.css" class="style_set">
    <link rel="stylesheet" href="{$ASSETSURL}css/yardimci.css">
     <link rel="stylesheet" href="{$ASSETSURL}css/acikartirma.css">
    
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 
	<link rel="stylesheet" type="text/css" href="{$ASSETSURL}css/ls_layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<body>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="sweet-gray sweet-go-back-from-screen">&nbsp;</span>
          </a>
          <div class="nav-collapse">            
            <ul class="nav main_nav" role="navigation">                
                
              <!--  <li id="chat" class="styled chat">
                  <a data-toggle="modal" href="#chat_modal">Chat<span class="info">5</span></a>     
                </li>-->
                <li id="notification" class="styled dropdown notification">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Notification</a>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="#">                          
                          En son bu {$tarihi} giris yaptiniz..
                                                 
                        </a>
                    </li>
                   <li class="show_all"><a href="#">Butun bildirimler</a></li> 
                  </ul>
                </li>                          
            </ul> 
            <ul class="main_nav nav pull-right"> 
                          
                    <li id="profile" class="styled dropdown profile">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Profile</a>
                        <ul class="dropdown-menu top_menu">                        
                            <li class="profile group">
                              <img src="{$ASSETSURL}img/general/user_1.jpg" width="50" height="50" alt="User">
                              <ul>
                                <li><strong> {$name}</strong></li>
                                <li><span style="color:red;">{$aap}</span></li>
                              </ul>
                            </li>
                          
                            <li><a class="mn_profile" href="{$BASEURL}user/profil"><span>Profilim</span></a></li>
                            <li><a class="mn_logout" href="{$BASEURL}user/giris"><span>Guvenli çıkış </span></a></li>
                        </ul>
                  </li>                          
            </ul>           
          </div>
          <h1 class="brand"><a href="">Orkun Online</a></h1>                                       
        </div>
      </div>
    </div>

