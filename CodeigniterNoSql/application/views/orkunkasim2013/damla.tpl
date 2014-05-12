{include file='inc/main_header.tpl'}
{include file='inc/leftmenu.tpl'}
<script type="text/javascript">


function myFunction(sayi)
{

            if (sayi!=null) {
              if (sayi>1) {
                window.location = "http://localhost/ci/index.php/davetcontrol/normaldamlacevir"; 
                 $("#statusnormal").html("Puan Eklendi");
              }else{
              
               $("#statusnormal").html("Uzgunum sadece 1 tane Normal damla var. çeviri için yetersiz arkadas davet ederek damla kazanabilirsin.");
              }
             }else{
             $("#statusnormal").html("Uzgunum sadece 1 tane Normal Damla var. çeviri için  yetersiz arkadas davet ederek damla kazanabilirsin.");
            }
      

}
function myFunctionaltin(sayi)
{

            if (sayi!=null) {

              if (sayi>1) {
                 window.location = "http://localhost/ci/index.php/davetcontrol/altindamlacevir";
                 $("#statusaltin").html("Puan Eklendi");
               }else{
                $("#statusaltin").html("Uzgunum sadece 1 tane Altin damla var. çeviri için yetersiz arkadas davet ederek damla kazanabilirsin.");
               }
             
            }else{
             $("#statusaltin").html("Uzgunum Altin damla yetersiz arkadas davet ederek damla kazanabilirsin.");
            }
    

}
function myFunctioncevirici(sayi)
{

      if (sayi!=null) {
               if (sayi>1) {
              window.location = "http://localhost/ci/index.php/davetcontrol/ceviricidamlacevir";
             $("#statuscevirici").html("Puan Eklendi");
              
              }else{
                  
              $("#statuscevirici").html("Uzgunum sadece 1 tane Cevirici damlavar. çeviri için  yetersiz arkadas davet ederek damla kazanabilirsin.");
               }
              
            }else{
             $("#statuscevirici").html("Uzgunum Ceviri Damla yetersiz arkadas davet ederek damla kazanabilirsin.");
            }
     

}
</script>



<script type="text/javascript">
            
            //puzzle puanan donusturme
                $(document).ready(function(){

                      $("#isim").click(function() { 

                        var usr = $("#isim").val();
                       $.ajax({ 
                          type: "POST", 
                          url: "{$BASEURL}user/puzzleaap",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 

                          $("#status").ajaxComplete(function(event, request, settings){ 

                          if(msg == 'OK')
                              { 
                              $(this).html(' <font color="green">Kullanilabilir</font> ');
                              } 
                                else 
                                { 
                                $(this).html(msg);
                                }
                              });}});

                        });});

                //puzzle talep etme
                  $(document).ready(function(){

                      $("#isim").change(function() { 

                        var usr = $("#isim").val();
                       $.ajax({ 
                          type: "POST", 
                          url: "{$BASEURL}user/puzzletalep",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 

                          $("#status").ajaxComplete(function(event, request, settings){ 

                          if(msg == 'OK')
                              { 
                              $(this).html(' <font color="green">Kullanilabilir</font> ');
                              } 
                                else 
                                { 
                                $(this).html(msg);
                                }
                              });}});

                        });});

</script>

 <div class="span9">
          <div class="row-fluid">
        
         
         	  <div class="widget" style="background-color:#737373;">
                    <header>
                      <h2 style="color:white">Damlalar</h2>
                      <ul class="toggle_content">
                          <li class="arrow"><a href="#">Toggle Content</a></li>
                      </ul>
                    </header>
                    <section class="welly"> 
      				     	<h4 class="titlee">Normal Damla <span style="color:blue" >-{$normal}-  : </span>

                      <button  data-toggle="modal" href="#chat_modal" class="btn btn-success"> Normal Damlayi AAP donustur</button> <span style="color:red;"> {$normalmesaj}</span>

                  </h4>
                      <div class="bs-docs-example">
                        <div class="progress">
                          <div class="bar" style="width: {$normal}%;"></div>
                        </div>
                      </div>
                      <hr>
                      <h5 class="titlee">Altin Damla  <span style="color:blue">-{$altin}-  :</span>
                        <button  data-toggle="modal" href="#chat_modalaltin" class="btn btn-success">Altin Damlayi AAP donustur</button><span style="color:red;"> {$altinmesaj}</span>
                      </h5>          
                      <div class="bs-docs-example">
                        <div class="progress progress-striped">
                          <div class="bar" style="width: {$altin}%;"></div>
                        </div>
                      </div>              
                      <hr>
                      <h5 class="titlee">cevirici Damlasi<span style="color:blue">-{$cevirici} - : </span>
                       <button  data-toggle="modal" href="#chat_modalcevir" class="btn btn-success">Cevirici Damlayi AAP donustur</button><span style="color:red;"> {$ceviricimesaj}</span>
                      </h5>         
                      <div class="bs-docs-example">
                        <div class="progress progress-striped active">
                          <div class="bar" style="width: {$cevirici}%"></div>
                        </div>
                      </div>                                                            
                     </section>
                  </div>
                 
          
            </div>                  
          </div><!--/row-->
           
          
        </div><!--/span-->
      </div><!--/row-->      
     

    </div>
<!--modellara  çalişacak artik normal damla için-->
    <div id="chat_modal" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">Normal Damla Çevirme</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                  merhaba!  <br/>{$normal} Normal damlanin  AAP cevirilecek. <br/>
                     Bununla birlikte istedigin hediyeyi uygun puanlarla kazanma sansi elde edeceksin.
                     Devam etmek istiyor musunuz ?
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
   <button onclick="myFunction({$normal})" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
               
                   </center>
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusnormal"></span>
      </div> 
    </div>
<!--model normal puzlle bitis -->
<!--modellara  çalişacak artik altin damla için-->
    <div id="chat_modalaltin" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">Altin Damla Çevirme</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                  merhaba!  <br/>{$altin} Altin damlanin  AAP cevirilecek. <br/>
                     Bununla birlikte istedigin hediyeyi uygun puanlarla kazanma sansi elde edeceksin.
                     Devam etmek istiyor musunuz ?
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
<button onclick="myFunctionaltin({$altin})" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
                  
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusaltin"></span>
      </div> 
    </div>
<!--model altin puzlle bitis -->

<!--modellara  çalişacak artik cevirici damla için-->
    <div id="chat_modalcevir" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">Altin Damla Çevirme</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                  merhaba!  <br/>{$cevirici} Cevirici damlanin  AAP cevirilecek. <br/>
                     Bununla birlikte istedigin hediyeyi uygun puanlarla kazanma sansi elde edeceksin.
                     Devam etmek istiyor musunuz ?
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
    <button onclick="myFunctioncevirici({$cevirici})" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
              
               
                </section>
              
      </div>
        <div class="modal-footer">        
      <span id="statuscevirici"></span>
      </div> 
    </div>
<!--model cevirici puzlle bitis -->
{include file='inc/main_footer.tpl'}