<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="us-EN">
<head>
<title>Orkun Online Test</title>
    <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    <meta name="description" content="">
    <meta name="author" 
    <!-- ===================== CSS ===================== -->    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>  
    <link rel="stylesheet" href="{$ASSETSURL}css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/bootstrap/bootstrap-responsive.min.css">    

    <!-- Site specific - CSS --> 
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/prettify.css">    
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/tables/dataTables.css">         
    <link rel='stylesheet' href='{$ASSETSURL}css/theme_light/calendar/fullcalendar.css' />
    <link rel='stylesheet' href='{$ASSETSURL}css/theme_light/calendar/fullcalendar.print.css' media='print' /> 
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/formselements/chosen.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/formselements/dropkick.css">
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/jquery-ui-1.8.20.custom.css">        

    <!-- Common - CSS -->     
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light/common.css">  
    <link rel="stylesheet" href="{$ASSETSURL}css/theme_light.css" class="style_set">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 
    
  
  <link rel="stylesheet" type="text/css" href="{$ASSETSURL}css/ls_layout.css">
  <link rel="stylesheet" type="text/css" href="{$ASSETSURL}css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<body>
  <style type="text/css">
.modal-wide {
    width:750px;
    height:600px;
}
.modal-exwide{
    width:700px;
    height:550px;
}
  </style>
  {literal}
<script type="text/javascript">
          function sorgula(){
              //var usr = "bes";
              var usr = $('#sifredegistir').val();
             if(usr.length >= 1) {
             $.ajax({ 
                                      type: "POST", 
                                      url: "http://localhost/ci/index.php/user/changepassword",//buradaki kontrol classina gonder; 
                                      data: "isim="+ usr, 
                                      success: function(msg){ 
                                         if (msg=="ok") {
                                          $("#statusteklif").html("Şifre değiştirme maili adresinize gönderilmiştir.");
                                        }else{

                                           $("#statusteklif").html("Böyle bir kullanıcı adı bulunamadı.");
                                         }
                                      }
                                    });
             }else{
                   $("#statusteklif").html("Bos veri sorgulanamaz.");
             }
             
            }


             function login(){
              var usr = $('#loginisim').val();
              var sifre = $('#loginsifre').val();
              var chck = document.getElementById("remember").checked;

             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/user/login",//buradaki kontrol classina gonder; 
                           data: {"isim": usr,
                            'sifre' : sifre,
                            'hatir' : chck
                           }, 
                          success: function(msg){
                            if (msg=="ok") {
                              window.location = "http://localhost/ci/index.php/user/main";
                               //   $("#statusmesaj").html(msg);
                             }else{
                                 $("#statusmesaj").html(msg);
                             }
                          }
                        });
            }
              
        function register(){
              var usr = $('#registerisim').val();
              var sifre = $('#registersifre').val();
              var email = $('#email').val();
              
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/user/register",//buradaki kontrol classina gonder; 
                           data: {"isim": usr,
                            'sifre' : sifre,
                            'email': email
                             }, 
                          success: function(msg){
                            if (msg=="ok") {
                             window.location = "http://localhost/ci/index.php/user/main";
                                // $("#statusmesaj").html(msg);
                             }else{
                                 $("#statusmesaj").html(msg);
                             }
                          }
                        });
            }
</script>
 {/literal}
 
      <script type="text/javascript">
            
                $(document).ready(function(){

                      $("#registerisim").change(function() { 

                        var usr = $("#registerisim").val();
                        
                          if(usr.length >= 4)
                          {
                          $("#status").html(' Kontrol ediliyor...');

                          $.ajax({ 
                          type: "POST", 
                          url: "{$BASEURL}user/veritabanikontrolad",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 

                          $("#status").ajaxComplete(function(event, request, settings){ 

                          if(msg == 'OK') { 
                                  $(this).html(' <font color="green">Kullanilabilir</font> ');

                              }  else { 
                                $(this).html(msg);
                                }
                              });}});}
                          else
                          {

                          $("#status").html('Kısa');
                          }

                        });});

                //-->
              $(document).ready(function(){

                      $("#email").change(function() { 

                        var usr = $("#email").val();
                    
                        if(usr.length >= 3)
                          {
                          $("#statusa").html(' Kontrol ediliyor...');

                          $.ajax({ 
                          type: "POST", 
                          url: "{$BASEURL}user/veritabanikontrolemail",//buradaki kontrol classina gonder; 
                          data: "email="+ usr, 
                          success: function(msg){ 
                        
                       $("#statusa").ajaxComplete(function(event, request, settings){ 

                          if(msg == 'OK')
                              { 
                                  
                                   $(this).html(' <font color="green">Kullanilabilir</font> ');
                                
                                  
                              } 
                                else 
                                { 
                                $(this).html(msg);
                                }
                              });}});}
                          else
                          {

                          $("#statusa").html('email gir');
                          }

                        });});
   $(document).ready(function(){

                      $("#registersifre").change(function() { 

                        var usr = $("#registersifre").val();

                          if(usr.length >= 4)
                          {
                            $("#statusb").html(' kullanilabilir...');
                        }
                          else
                          {

                          $("#statusb").html('Kullanilamaz, sifre kisa');
                          }

                        });});

  


      </script>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="sweet-gray sweet-go-back-from-screen">&nbsp;</span>
          </a>
          
          <h1 class="brand"><a href="index.html">Orkun Online</a></h1>                                       
        </div>
      </div>
    </div>
<div id="content"><!-- buraya giris saydasinda ki video ve giris tusu bulunur-->
      <div id="head"><!-- baslik kısminin ustundeki div buraya gelecek buraya kadar eksik yok -->
      </div>
      <div class="main_content row-fluid">
                         <!-- içerik kısmı bşlar-->
                     <div class="widget" style="background-color:#505050">
                          <header>
                            <h2> <center>{$demo}</center></h2>
                            
                          </header>
                          <section class="group" style="border:0">
                                      <center>
                                     <video width="1090" height="740" autoplay>
                                    <source src="{$ASSETSURL}OrkunOnline.mp4" type="video/mp4">
                                    <source src="movie.ogg" type="video/ogg">
                                   
                                  </video>
                                      
                                          </center>
                                      <center>
                             <img src="{$ASSETSURL}img/oyna.png" alt="Smiley face" width="210" height="112" data-toggle="modal" href="#static">  
                                       </center>                           
                          </section>
                        </div>
      
        </div>                  
  </div><!--/content bitis-->
       <div id="bottom">
    Copyright &copy; Pollen Games Limited 2012 <br />All rights reserved.
    </div>
  
  <!-- Modal Definitions (tabbed over for <pre>) -->
  <div id="static" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false" style="width:810px;" >
          <div class="modal-dialog modal-exwide" style="width:800px; height:520px;">
               <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>Kullanıcı Girişi</h3>
                    </div>
                <div class="modal-body" >
                         <div  id="myCarousel" class="carousel slide" style="width:330px; height:350px; float:left;"> 
                                          <!-- <img  src="{$ASSETSURL}nature-photo.png" alt="deneme" />-->


                             <div id="slider">
                                  <input type="radio" id="button-1" name="controls" />
                                  <input type="radio" id="button-2" name="controls" checked />
                                  <input type="radio" id="button-3" name="controls" />
                                  <input type="radio" id="button-4" name="controls" />
                                  <input type="radio" id="button-5" name="controls" />
                                  <label for="button-1" class="arrows" id="arrow-1">&#x25BB;</label>
                                  <label for="button-2" class="arrows" id="arrow-2">&#x25BB;</label>
                                  <label for="button-3" class="arrows" id="arrow-3">&#x25BB;</label>
                                  <label for="button-4" class="arrows" id="arrow-4">&#x25BB;</label>
                                  <label for="button-5" class="arrows" id="arrow-5">&#x25BB;</label>

                            <div id="slides">
                              <div class='tk-museo-sans'>
                                <span id="image-1"> 
                                  
                                </span>
                                <span id="image-2"> 
                                
                                </span>
                                <span id="image-3">
                                  
                                </span>
                                <span id="image-4"> 
                                
                                </span>
                                <span id="image-5"> 
                                
                                </span>
                              </div>
                            </div>
                             </div>



                         </div> 
                        <div style="width:400px; height:350px; float:right; ">
                             <div id="myText" >
                                 <div class="modal-body ">
                                          <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab1" data-toggle="tab">KAYIT OL </a></li>
                                            <li><a href="#tab2" data-toggle="tab">GİRİŞ SAYFASI</a></li>
                                          </ul>
                                   <div class="tab-content">
                                          <div class="tab-pane active" id="tab1">
                                            
                                                 <label> Kullanıcı Adı</label>
                                                 <input type="text" class="span2"  name="registerisim" id="registerisim"/><span id="status"></span><br/>
                                                 <label> Email</label>
                                                 <input type="email" class="span2"   name="email" id="email"/><span id="statusa"></span><br/>
                                                 <label> Şifre</label>
                                          <input type="password" class="span2"  name="registersifre" id="registersifre"/><span id="statusb"></span><br/>
                                                 <button type="submit" class="btn btn-success" id="gonder" onclick="register()" >Kayıt</button>
                                                 <button type="reset" class="btn">Temizle</button>
                                      
                                          </div></br>
                                          <div class="tab-pane" id="tab2">
                                             
                                                 <label> Kullanıcı Adı:</label>
                                                 <input type="text" class="span3" name="loginisim" id="loginisim"  /><br/>
                                                 <label> Şifre</label>
                                                 <input type="password" class="span3" name="loginsifre" id="loginsifre" /><br/>
                                               <br/>
                                              <button type="submit" class="btn btn-success" onclick="login()">Giriş</button>
                                               <button type="reset" class="btn btn-success">Temizle</button><br/>

                                              <br/><br/><br/>
                                               <label>
                                               <!-- <input type="checkbox"> Hatirla Beni-->
        <input type="checkbox" class="remember" name="remember" id="remember" value="1" tabindex="3">
                 Hatirla Beni &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-success" data-toggle="modal" href="#stack2">Sifremi unuttum..</button>
                                                
                                               </label> 
                                              
                                          </div>
                                  </div>
                               </div>
                           </div> 
                           
                      </div>
                </div>
                           <div class="modal-footer">
                            <p>{$demo} </p>
                            <span id="statusmesaj"></span>
                           <!--<button class="demo btn btn-primary" data-toggle="modal" href="#stack1">sifre degistir</button> -->
                          </div>
         </div>
</div>
                

  <!-- burada başlayacak -->

<!--  <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">şifremi unuttum </h4>
  </div>
  <div class="modal-body">-->
   
     <!--   bittti -->

  <!-- Modal1 -->
  
  <div id="stack2" class="modal fade" tabindex="-1"  data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h3 id="myModalLabel">Şifre Değiştirme İşlemi</h3>
    </div>
  
    <div class="modal-body">
  
    
                
             
                   <label> Kullanıcı Adı</label>
                  <input type="text" class="span4"  name="sifredegistir" id="sifredegistir"/><br/>
                  <button class="btn btn-success"  id="InfroTextSubmit" onclick="sorgula()">ŞİFREMİ ŞİFİRLA </button>
               
    </div>
    <div class="modal-footer">
      <P>Kullanıcı adınızı bilmiyorsanız, <br>kayıt sırasında size gönderdiğimiz mail içinde arama yapabilirsiniz </P><br>
       <span id="statusteklif"></span>
    </div>
</div>

 
                                    
   
       <!-- basladi     
  </div>

  <div class="modal-footer">
   
  </div>-->

<!--  -->    

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
     <script src="{$ASSETSURL}js/plugins/formswizard/jquery.smartWizard-2.0.min.js"></script>
    <script src="{$ASSETSURL}js/plugins/filevalidation/languages/jquery.validationEngine-en.js"></script>  
    <script src="{$ASSETSURL}js/plugins/filevalidation/jquery.validationEngine.js"></script>  >            
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
      <script src="{$ASSETSURL}js/specific/forms_wizard.js"></script>
    <script src="{$ASSETSURL}js/specific/file_validation.js"></script>

</body>
</html>