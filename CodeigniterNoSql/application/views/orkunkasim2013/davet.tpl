  {include file='inc/main_header.tpl'}
  {include file='inc/leftmenu.tpl'}
 
        <div class="span9">
          <div class="row-fluid">
            <div class="span12">

                           <div class="span12 no_space form_align">
                                  <div class="widget">
                                    <header>
                                      <h3 style="color:white;">Arkadaşin için kod uretme </h3>
                                      <ul class="toggle_content">                         
                                          <li class="arrow"><a href="#">Toggle Content</a></li>
                                      </ul>
                                    </header>
                                    <section class="welly group">  
                        <h2> http://localhost/ci/index.php/user/lnk/{$name}</h2><br>
                          <p>BU LİNKİ ARKADAŞİNA GÖNDEREREK KOD URETE BİLİRSİN.</p>
                                  </section>
                                  </div>                  
                              </div>

                               <div class="span12 no_space form_align">
                                  <div class="widget">
                                    <header>
                                      <h3 style="color:white;">Davetiye gondererek puan kazana bilirsiniz </h3>
                                      <ul class="toggle_content">                         
                                          <li class="arrow"><a href="#">Toggle Content</a></li>
                                      </ul>
                                    </header>
                                    <section class="welly group">  
                               <button data-toggle="modal" href="#chat_modal" class="btn btn-success">Kod ekle </button><br><br> <h4>{$hatamesaj}</h4>
                                  </section>
                                  </div>                  
                              </div>

              <div class="span12 no_space form_align">
                  <div class="widget">
                    <header>
                      <h3 style="color:white;">Davetiye gondererek puan kazana bilirsiniz </h3>
                      <ul class="toggle_content">                         
                          <li class="arrow"><a href="#">Toggle Content</a></li>
                      </ul>
                    </header>
                    <section class="welly group">                         
                        
                          <input type='hidden' name="issubmit" value="1">
                              <!-- Tabs -->
                              <div id="wizard" class="swMain">
                                <ul>
                                  <li><a href="#step-1">
                                        <label class="stepNumber">1</label>
                                        <span class="stepDesc">
                                           Arkadaşinin bilgileri<br />
                                        </span>
                                    </a></li>
                               
                                
                                </ul>
                                <div id="step-1" style="height:345px;"> 
                                    <h2 class="StepTitle"> Arkadaşini bilgilerini buraya gir</h2>
                                    <table cellspacing="3" cellpadding="3" align="center">
                                       <form action="{$BASEURL}davetcontrol/arkadavet" method="POST">
                                        <tr>
                                              <td align="center" colspan="3">&nbsp;</td>
                                        </tr>        
                                        <tr>
                                              <td align="right">AD </td>
                                              <td align="left">
                                                <input type="text" id="username" name="username" value="" class="txtBox">
                                                <p>{$adi}</p>
                                              </td>
                                              <td align="left"><span id="msg_username"></span>&nbsp;</td>
                                        </tr>
                                       <tr>
                                              <td align="right">Email :</td>
                                              <td align="left">
                                                
                                                <input type="email" class="txtBox"   name="email" id="email"/>
                                                <p>{$mail}</p>
                                              </td>
                                              <td align="left"><span id="msg_email"></span>&nbsp;</td>
                                        </tr>
                                         <tr>
                                              <td align="right">Mesaj: </td>
                                              <td align="left">
                                                <textarea name="address" id="address" class="txtBox" rows="3"></textarea>
                                                <p>{$mesaj}</p>
                                               </td>
                                              <td align="left"><span id="msg_username"></span>&nbsp;</td>
                                        </tr>
                                           <tr>
                                              <td align="right"></td>
                                              <td align="left">
                                            <button class="btn btn-success">Gonder</button>
                                              </td>
                                              
                                        </tr>
                                         </form> 
                                   </table>               
                                </div>
                             
                            
                              </div>
                        <!-- End SmartWizard Content -->      
                       
                        
                    </section>
                  </div>                  
              </div>
                             
                
            </div>                  
          </div><!--/row-->
        
        </div><!--/span-->
      </div><!--/row-->      
     
    </div><!--/.fluid-container-->

<div id="bottom">
Copyright &copy; Pollen Games Limited 2012 <br />All rights reserved.
</div>
     <!-- ===================== CHAT - Modal ===================== -->
    <div id="chat_modal" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">BURAYA ARKADAŞİNDAN ALDİGİN KOD GİRİLECEK</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                  <form class="formClass" action="{$BASEURL}davetcontrol/controlcode" method="POST" >
                    KOD :  <input value="" class="validate[required] text-input" type="text" name="code" id="req" />
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                 <input class="btn btn-inverse" type="submit" value=" ARKADAŞİNDAN GELEN KODU GONDER"/>
                  </form>  
                </section>
              
      </div>
        <div class="modal-footer">        
      
      </div> 
    </div>
 

    <!-- ===================== JS ===================== -->
    <script src="{$ASSETSURL}js/libs/jquery-1.7.2.min.js"></script>    
    <script src="{$ASSETSURL}js/libs/bootstrap.min.js"></script>   
    <script src="{$ASSETSURL}js/libs/ios-orientationchange-fix.js"></script>      
    <script src="{$ASSETSURL}js/libs/jquery-ui-1.8.20.custom.min.js"></script>      
    <script src="{$ASSETSURL}js/common.js"></script>                 
    
    <!-- Site specific - JS -->     
    <script src="{$ASSETSURL}js/plugins/formswizard/jquery.smartWizard-2.0.min.js"></script>
    <script src="{$ASSETSURL}js/plugins/filevalidation/languages/jquery.validationEngine-en.js"></script>  
    <script src="{$ASSETSURL}js/plugins/filevalidation/jquery.validationEngine.js"></script>  >
    <script src="{$ASSETSURL}js/script.js"></script>
    <script src="{$ASSETSURL}js/specific/forms_wizard.js"></script>
    <script src="{$ASSETSURL}js/specific/file_validation.js"></script>

          <script type="text/javascript">
            
  $(document).ready(function(){

                      $("#req").change(function() { 

                        var usr = $("#sifre").val();

                          if(usr.length >= 6)
                          {
                            $("#status").html(' sifre kısa...');
                        }
                         });
                    });


      </script>
  </body>
</html>