{include file='inc/main_header.tpl'}
{include file='inc/leftmenu.tpl'}
<script type="text/javascript">
function yonlendir()
{

              window.location = "http://localhost/ci/index.php/user/davet";
 }

 function sonuc()
{
   $("#statussonuc").html("puzzle zamani geçemediğinden dolayi çevrilme gerçekleştiremiyoruz.Sadece Zamani geçen puzzlelar AAP dönüştürülür.");
              
}
 function talep()
{
   $("#statustalep").html(" Talep Ettiğiniz Puzzle Tamamalanmadiğin dolayi işlem gerçekleştirilemiyor.");
              
}
</script>
 <div class="span9">
          <div class="row-fluid">
        
    {for $foo=0 to $sayi-1 }
        <div class="kolon">
                <header>
                   {assign var="tarih" value="{$tmpzzl[$foo]["songun"]}"}
                    <h3 style="color:white;"> Hediye puzzle adi:{$ad[$foo]} <br> bitis tarihi : {$tarih}</h3>
                </header>

                <section class="group">   
                    <div class="toplam1">
                         <div class="puzzlecont puzz-4-5">
                            
                                {for $e=0  to $en[$foo] }   
                                      
                                         {for $b=0 to  $boy[$foo]}
                                            
                                           {assign var="varolan" value="$e.$b"}
                                              
                                              {if $tmhediyesonuc[$foo][$varolan]  eq ''}
                                             
                                              {else}
                                               <div style="background-position:{math x=$e-1   equation= '-(x*100 +1)'}px
                                   {math y=$b-1   equation= '-(y*100 +1)'}px;
                                    margin:{math x=$b-1   equation= '(x*100)'}px 0 0 {math y=$e-1   equation= '(y *100)'}px">
                                    
                                 
                                  <span>{$tmhediyesonuc[$foo][$varolan]}</span>
                                       </div>

                                            {/if}
                                         {/for}
                                 {/for}
           
                     
                      </div>
  <button type="button" class="btn btn-primary btn-lg btn-block"  data-toggle="modal" href="#chat_modalpuzzle">AAP DONUSTUR</button> 
  <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" href="#chat_modaltalep">TAMAMLANANA PUZZLE TALEP ET</button>  
                    </div>

                </section>
                
            </div>

        {if $foo=='1'}
        <br>
        <br><br>
        {/if}
           
       {/for}            

            <div class="kolon">
                <header>
                  
                    <h3 style="color:white;"> Hediye puzzle adi: BASLANDİC PUZZLELİ <br> bitis tarihi : Sinirsiz <h3 id="id"></h3></h3>
                </header>

                <section class="group">   
                    <div class="toplam1">
                         <div class="puzzlecont puzz-4-5">
                            
                           

                      </div>
                      <center>
    <button type="button" class="btn btn-primary btn-lg btn-block"  data-toggle="modal" href="#chat_modalpuzzle">AAP DONUSTUR</button> 
  <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" href="#chat_modaltalep">TAMAMLANANA PUZZLE TALEP ET</button>  

                      </center>
  
                    </div>

                </section>
                
         </div>

      
                 
          
            </div>                  
          </div><!--/row-->
           
          
        </div><!--/span-->
      </div><!--/row-->      
     

    </div>

<!--modellara  çalişacak artik cevirici damla için-->
    <div id="chat_modalpuzzle" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">Puzzzle tamamlama </li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                  Puzzle Açik artirma puanina cevirme  işleminde bulundunuz.<br>
                     <br/>
                 
                 
                   <center>
                  <button  onclick="sonuc()"  class="btn btn-success">Açik Artirma Puanina Çevir</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
               
               
                </section>
              
      </div>
        <div class="modal-footer">        
      <span id="statussonuc"></span>
      </div> 
    </div>
<!--model cevirici puzlle bitis -->

<!--modellara  çalişacak artik Puzzlet alep edecek için-->
    <div id="chat_modaltalep" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">Puzzzle Talep Et</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                 Puzzle talep işleminde bulundunuz  <br/>
                 
                   <br/>
                 
                   <br/>
                   <center>
                  <button  onclick="talep() "class="btn btn-success">Puzzle Talep Et</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
               
               
                </section>
              
      </div>
        <div class="modal-footer">        
      <span id="statustalep"></span>
      </div> 
    </div>
<!--model puzzle talewp edecek bitis -->

{include file='inc/main_footer.tpl'}