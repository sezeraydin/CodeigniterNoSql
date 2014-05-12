{include file='inc/main_header.tpl'}
{include file='inc/leftmenu.tpl'}



{literal}
<script language="JavaScript">
function waitfor()
{
ap("http://localhost/ci/index.php/user/genelbak","enikolon");
}
setTimeout("waitfor()",6000);
</script>

{/literal}
{literal}
<script type="text/javascript">
    
     function ap(x,y) {$("#" + y).load(x);};
     function af(x,y) {$("#" + x ).ajaxSubmit({target: '#' + y});return false;};

    
    function al(){
      ap("http://localhost/ci/index.php/user/aacagir","enikolon");
     }

</script>
 {/literal}

{literal}
<script type="text/javascript">
    
           function kaydet(){
              var usr = "sevgi";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aapkatil",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                             if (msg=="ok") {
                              zamani_uzat();
                              al();
                             }else{
                              alert(msg);
                             }
                          }
                        });
            }
              
        
</script>
 {/literal}
 {literal}
 <script language="javascript"> 
    
    var sayilacak_saat='{/literal}{$saat}{literal}'; 
    var sayilacak_dakika='{/literal}{$dakika}{literal}'; 
    var sayilacak_saniye='{/literal}{$saniye}{literal}'; 
    var teklif_verildiginde_uzayacak_dakika=300; // burada kaç dakika uzatmak istiyorsak onu ekleriz


    var zaman=(sayilacak_saat*3600 )+(sayilacak_dakika*60 )+(sayilacak_saniye*1)+1;
    
 //var zaman3 = sayilacak_saniye+1;
    //var zaman = zaman1 + zaman2 + zaman3 ;
    // var zaman=(23*3600 )+(02*60 )+57+1; //burada kaçinci dakikada başlayacaği yazar.
    //buradadan veri tabanindan gelen deger olmasi gerekiyor.
    function geri_say(){ 
     
    zaman=zaman-1; //birer düşmeye başlar
    kalan_saat=Math.floor(zaman/3600 ); 
   
    kalan_dakika=Math.floor((zaman%3600 )/60 ); 
    kalan_saniye=zaman%60; 
   
    var yeni_zaman=""; 
    if(kalan_dakika>0 || kalan_saniye>0 || kalan_saat>0 ){ //hala sifirlanmamişsa
    yeni_zaman=kalan_saat+":"+kalan_dakika+":"+kalan_saniye; 
    if(kalan_dakika==0 && kalan_saat==0 && kalan_saniye>0 ){
    yeni_zaman="<font style='font-size:18px;color:red;'>"+yeni_zaman+"</font>";} 
    }else{ 
    yeni_zaman="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    document.getElementById('kalan_zaman' ).innerHTML=yeni_zaman; 

    if(zaman>0 ){setTimeout("geri_say();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
    if(zaman==0 ){document.getElementById('teklif_ver_butonu' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.
    }//fonksiyon geri_say sonu 

    function zamani_uzat(){ 
zaman=zaman+(teklif_verildiginde_uzayacak_dakika*60 ); // zaman bitmeden teklif gelirse. belirlenen sureye kadar zaman uzatilir.
   alert('Teklif verildi, Başarilar..' ); 
  }//fonksiyon zamani_uzat sonu 
  window.onload=geri_say; 
</script> 
 {/literal}
 <div class="span9">
          <div class="row-fluid">
        
    
            <div class="kolon" id="enikolon">
                    <header>
             <h3 style="color:white;"> Hediye puzzle adi: ACIK ARTİRMA HEDİYELERİ <br> son bitis tarihi : 12.05.2014<h3 id="id"></h3></h3>
                    </header>
                    <section class="group">   
                        <div class="toplam1">
                             <div class="puzzlecont puzz-4-5">
                            </div>
                       </div>
                      <hr><hr>
                  <center> 
                      <label>  Ürünün Gerçek  Fİyati : {$fiyat}P <br>
                      Ürünün AAP  Fİyati : {$simdikifiyat}P </label><hr>
                      <label>  Süre :<a id='kalan_zaman' style='font-size:16px;'></a>  </label>
                      <hr>
                      <label>  isim : {$talepolankisi}</label>
                  </center><hr>
                  <input type="button" class="btn btn-primary btn-lg btn-block" id='teklif_ver_butonu' value="Acik Artirmaya Katil" onclick="kaydet();"> 

       
                    </section>
                
            </div>

        <br>
        <br><br>
       
           
            <div style="clear:both;"></div>
            <br><br>                 
          
            </div>                  
          </div><!--/row-->
           
          
        </div><!--/span-->
      </div><!--/row-->      
     

    </div>


{include file='inc/main_footer.tpl'}