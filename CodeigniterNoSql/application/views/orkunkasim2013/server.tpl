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

    <!-- Site specific - CSS --> 
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/prettify.css">    
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/tables/dataTables.css">         
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/formselements/chosen.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/formselements/dropkick.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/jquery-ui-1.8.20.custom.css">        

    <!-- Common - CSS -->     
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/common.css">  
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light.css" class="style_set">
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
      <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="sweet-gray sweet-go-back-from-screen">&nbsp;</span>
          </a>
          <div class="nav-collapse">            
            <ul class="nav main_nav" role="navigation">                
             
                <li id="notification" class="styled dropdown notification">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Notification</a>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="#">                          
                       <strong>{$server.name}</strong>  
                        </a>
                    </li>
                   <li class="show_all"><a href="#">tum eklenenleri gor</a></li> 
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
                            <li><strong>{$name}</strong></li>
                          </ul>
                        </li>
                      
                           <li><a class="mn_profile" href="{$BASEURL}user/profil"><span>Profilim</span></a></li>
                            <li><a class="mn_logout" href="{$BASEURL}user/giris"><span>Guvenli çıkış </span></a></li>
                    </ul>
                </li>                          
            </ul>           
          </div>
          <h1 class="brand"><a href="{$BASEURL}user/main">Orkun Online</a></h1>                                       
        </div>
      </div>
    </div>
<div style="width:100%; height:100%;  margin-top:10px; position:fixed; ">
<iframe id="ifm" src="{$link}" style="width:100%;height:95%" >
</iframe>


 </div>    



 <!-- ===================== JS ===================== -->
    <script src="{$ASSETSURL}js/libs/jquery-1.7.2.min.js"></script>    
    <script src="{$ASSETSURL}js/libs/bootstrap.min.js"></script>   
    <script src="{$ASSETSURL}js/libs/ios-orientationchange-fix.js"></script>          
    <script src="{$ASSETSURL}js/libs/jquery-ui-1.8.20.custom.min.js"></script>
    <script src="{$ASSETSURL}js/plugins/widgets/jquery.sparkline.min.js"></script>
    <script src="{$ASSETSURL}js/common.js"></script>  

    <!-- Site specific --> 
    <script src="{$ASSETSURL}js/libs/prettify.js"></script>      
    <script src="{$ASSETSURL}js/plugins/charts/jquery.flot.min.js"></script>   
    <script src="{$ASSETSURL}js/plugins/charts/jquery.flot.resize.min.js"></script>  
    <script src="{$ASSETSURL}js/plugins/charts/jquery.flot.pie.min.js"></script>  
    <script src="{$ASSETSURL}js/plugins/charts/jquery.flot.stack.min.js"></script>  
    <script src="{$ASSETSURL}js/plugins/charts/jquery.flot.symbol.min.js"></script>            
    <!--[if lt IE 9]>      
          <script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
    <![endif]--> 
    <script src="{$ASSETSURL}js/plugins/tables/jquery.dataTables.min.js"></script>
    <script src="{$ASSETSURL}js/plugins/calendar/fullcalendar.min.js"></script>
    <script src="{$ASSETSURL}js/plugins/formselements/chosen.jquery.min.js"></script> 
    <script src="{$ASSETSURL}js/plugins/formselements/scrollability.min.js"></script> 
    <script src="{$ASSETSURL}js/plugins/formselements/jquery.dropkick-1.0.0.js"></script> 

    <script src="{$ASSETSURL}js/script.js"></script>
    <script src="{$ASSETSURL}js/specific/sparks.js"></script>
    <script src="{$ASSETSURL}js/specific/index.js"></script>

    <script >
    
var buffer = 0; //scroll bar buffer
var iframe = document.getElementById('ifm');

function pageY(elem) {
    return elem.offsetParent ? (elem.offsetTop + pageY(elem.offsetParent)) : elem.offsetTop;
}

function resizeIframe() {
    var height = document.documentElement.clientHeight;
    height -= pageY(document.getElementById('ifm'))+ buffer ;
    height = (height < 0) ? 0 : height;
    document.getElementById('ifm').style.height = height + 'px';
}

// .onload doesn't work with IE8 and older.
if (iframe.attachEvent) {
    iframe.attachEvent("onload", resizeIframe);
} else {
    iframe.onload=resizeIframe;
}

window.onresize = resizeIframe;
</script>    
</html>