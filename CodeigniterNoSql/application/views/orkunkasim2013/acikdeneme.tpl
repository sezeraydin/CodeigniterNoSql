{include file='inc/main_header.tpl'}
{include file='inc/leftmenu.tpl'}


{literal}
<script language="JavaScript">
function myTimer()
{
  
  sayfabirbak();
  sayfaikibak();
  sayfaucbak();
  sayfadrtbak();
  sayfabesbak();

}
//setTimeout("waitfor()",2000);
setInterval(function(){myTimer()},500);
</script>

{/literal}
{literal}
<script type="text/javascript">
    
     function ap(x,y) {$("#" + y).load(x);};
     function af(x,y) {$("#" + x ).ajaxSubmit({target: '#' + y});return false;};

    
    function albir(){
      ap("http://localhost/ci/index.php/user/aacagir1","enikolon1");
     }
      function aliki(){
      ap("http://localhost/ci/index.php/user/aacagir2","enikolon2");
     }
      function aluc(){
      ap("http://localhost/ci/index.php/user/aacagir3","enikolon3");
     }
      function aldrt(){
      ap("http://localhost/ci/index.php/user/aacagir4","enikolon4");
     }
      function albes(){
      ap("http://localhost/ci/index.php/user/aacagir5","enikolon5");
     }
</script>
 {/literal}

{literal}
<script type="text/javascript">
        function sayfabirbak(){
              var usr = "bir";
              var gidecekzaman = zaman1;
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aasyenile",//buradaki kontrol classina gonder; 
                           data: {"isim": usr,
                            'gelenzaman' : gidecekzaman
                           }, 
                          success: function(msg){
                          
                             if (msg=="ok") {
                             albir();
                             yenizamanbir();
                             }
                          }
                        });
            }

            function yenizamanbir(){
              var usr = "bir";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/yenizaman",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                           zaman1 = msg;
                          }
                        });
            }
              function sayfaikibak(){
              var usr = "iki";
              var gidecekzaman = zaman2;
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aasyenile",//buradaki kontrol classina gonder; 
                           data: {"isim": usr,
                            'gelenzaman' : gidecekzaman
                           }, 
                          success: function(msg){ 
                             if (msg=="ok") {
                             aliki();
                            yenizamaniki();
                             }
                          }
                        });
            }
             function yenizamaniki(){
              var usr = "iki";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/yenizaman",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                           zaman2 = msg;

                          }
                        });
            }
              function sayfaucbak(){
              var usr = "uc";
              var gidecekzaman = zaman3;
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aasyenile",//buradaki kontrol classina gonder; 
                           data: {"isim": usr,
                            'gelenzaman' : gidecekzaman
                           },  
                          success: function(msg){ 
                             if (msg=="ok") {
                             aluc();
                              yenizamanuc();
                             }
                          }
                        });
            }
              function yenizamanuc(){
              var usr = "uc";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/yenizaman",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                           zaman3 = msg;
                          }
                        });
            }
              function sayfadrtbak(){
              var usr = "drt";
              var gidecekzaman = zaman4;
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aasyenile",//buradaki kontrol classina gonder; 
                           data: {"isim": usr,
                            'gelenzaman' : gidecekzaman
                           },  
                          success: function(msg){ 
                             if (msg=="ok") {
                             aldrt();
                             yenizamandrt();
                             }
                          }
                        });
            }
              function yenizamandrt(){
              var usr = "drt";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/yenizaman",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr , 
                          success: function(msg){ 
                           zaman4 = msg;
                          }
                        });
            }
              function sayfabesbak(){
              var usr = "bes";
              var gidecekzaman = zaman5;
              //alert(gidecekzaman);
              $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aasyenile",//buradaki kontrol classina gonder; 
                          data: {"isim": usr,
                            'gelenzaman' : gidecekzaman
                           },  
                          success: function(msg){ 
                          if (msg=="ok") {
                             albes();
                           yenizamanbes();
                           }
                          }
                        });
            }

              function yenizamanbes(){
              var usr = "bes";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/yenizaman",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                           zaman5 = msg;
                          }
                        });
            }
           function kaydetbir(){
              var usr = "bir";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aapkatil",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                             if (msg=="ok") {
                              zamani_uzatbir();
                              albir();
                             }else{
                              //alert(msg);
                              $("#statusteklifbir").html(msg);
                             }
                          }
                        });
            }

            
            function kaydetiki(){
              var usr = "iki";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aapkatil",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                             if (msg=="ok") {
                              zamani_uzatiki();
                              aliki();
                             }else{
                             $("#statusteklifiki").html(msg);
                             }
                          }
                        });
            }
              
               function kaydetc(){
                
              var usr = "uc";
              $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aapkatil",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msgi){ 

                             if (msgi=="ok") {
                              zamani_uzatuc();
                              aluc();
                              }else{
                              $("#statusteklifc").html(msgi);
                             }
                          }
                        });
            }
              
                 function kaydetdrt(){
              var usr = "dort";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aapkatil",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                            if (msg=="ok") {
                              zamani_uzatdrt();
                              aldrt();
                               }else{
                              $("#statusteklifdrt").html(msg);
                             }
                          }
                        });
            }
              
                 function kaydetbes(){
              var usr = "bes";
             $.ajax({ 
                          type: "POST", 
                          url: "http://localhost/ci/index.php/acikartirma_controler/aapkatil",//buradaki kontrol classina gonder; 
                          data: "isim="+ usr, 
                          success: function(msg){ 
                             if (msg=="ok") {
                              zamani_uzatbes();
                              albes();
                            }else{
                               $("#statusteklifbes").html(msg);
                             }
                          }
                        });
            }
              
        
</script>
 {/literal}
 {literal}
 <script language="javascript"> 
    //birinci aa için
    var sayilacak_saat1='{/literal}{$saatbir}{literal}'; 
    var sayilacak_dakika1='{/literal}{$dakikabir}{literal}'; 
    var sayilacak_saniye1='{/literal}{$saniyebir}{literal}'; 
    //ikinci aa için
    var sayilacak_saat2='{/literal}{$saatiki}{literal}'; 
    var sayilacak_dakika2='{/literal}{$dakikaiki}{literal}'; 
    var sayilacak_saniye2='{/literal}{$saniyeiki}{literal}';
   //ucuncu aa için
    var sayilacak_saat3='{/literal}{$saatuc}{literal}'; 
    var sayilacak_dakika3='{/literal}{$dakikauc}{literal}'; 
    var sayilacak_saniye3='{/literal}{$saniyeuc}{literal}'; 
//dortduncu aa için
    var sayilacak_saat4='{/literal}{$saatdrt}{literal}'; 
    var sayilacak_dakika4='{/literal}{$dakikadrt}{literal}'; 
    var sayilacak_saniye4='{/literal}{$saniyedrt}{literal}'; 
//beşinci aa için
    var sayilacak_saat5='{/literal}{$saatbes}{literal}'; 
    var sayilacak_dakika5='{/literal}{$dakikabes}{literal}'; 
    var sayilacak_saniye5='{/literal}{$saniyebes}{literal}'; 
   

    var teklif_verildiginde_uzayacak_dakika=300; // burada kaç dakika uzatmak istiyorsak onu ekleriz


    var zaman1=(sayilacak_saat1*3600 )+(sayilacak_dakika1*60 )+(sayilacak_saniye1*1)+1;

    var zaman2=(sayilacak_saat2*3600 )+(sayilacak_dakika2*60 )+(sayilacak_saniye2*1)+1;

    var zaman3=(sayilacak_saat3*3600 )+(sayilacak_dakika3*60 )+(sayilacak_saniye3*1)+1;

    var zaman4=(sayilacak_saat4*3600 )+(sayilacak_dakika5*60 )+(sayilacak_saniye4*1)+1;

    var zaman5=(sayilacak_saat5*3600 )+(sayilacak_dakika5*60 )+(sayilacak_saniye5*1)+1;
    
 //var zaman3 = sayilacak_saniye+1;
    //var zaman = zaman1 + zaman2 + zaman3 ;
    // var zaman=(23*3600 )+(02*60 )+57+1; //burada kaçinci dakikada başlayacaği yazar.
    //buradadan veri tabanindan gelen deger olmasi gerekiyor.

    function tmzaman(){

      geri_say();
      ikincisay();
      ucuncusay();
      drtsay();
      bessay();
    }
    function ikincisay(){

    zaman2=zaman2-1; //birer düşmeye başlar
    kalan_saat2=Math.floor(zaman2/3600 );
    kalan_dakika2=Math.floor((zaman2%3600 )/60 ); 

      kalan_saniye2=zaman2%60; 

       //ikincisi için  başlangiç yeri..
    var yeni_zaman2=""; 
    if(kalan_dakika2>0 || kalan_saniye2>0 || kalan_saat2>0 ){ //hala sifirlanmamişsa
    yeni_zaman2=kalan_saat2+":"+kalan_dakika2+":"+kalan_saniye2; 
    if(kalan_dakika2==0 && kalan_saat2==0 && kalan_saniye2>0 ){
    yeni_zaman2="<font style='font-size:18px;color:red;'>"+yeni_zaman2+"</font>";} 
    }else{ 
    yeni_zaman2="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    document.getElementById('kalan_zaman2' ).innerHTML=yeni_zaman2; 

    if(zaman2>0 ){setTimeout("ikincisay();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
    if(zaman2==0 ){document.getElementById('teklif_ver_butonu2' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.


    }

     function ucuncusay(){

     zaman3=zaman3-1; //birer düşmeye başlar
     kalan_saat3=Math.floor(zaman3/3600 );
     kalan_dakika3=Math.floor((zaman3%3600 )/60 ); 

     kalan_saniye3=zaman3%60; 

       //ikincisi için  başlangiç yeri..
    var yeni_zaman3=""; 
    if(kalan_dakika3>0 || kalan_saniye3>0 || kalan_saat3>0 ){ //hala sifirlanmamişsa
    yeni_zaman3=kalan_saat3+":"+kalan_dakika3+":"+kalan_saniye3; 
    if(kalan_dakika3==0 && kalan_saat3==0 && kalan_saniye3>0 ){
    yeni_zaman3="<font style='font-size:18px;color:red;'>"+yeni_zaman3+"</font>";} 
    }else{ 
    yeni_zaman3="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    document.getElementById('kalan_zamanc' ).innerHTML=yeni_zaman3; 

    if(zaman3>0 ){setTimeout("ucuncusay();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
    if(zaman3==0 ){document.getElementById('teklif_ver_butonu3' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.


    }

     function drtsay(){

     zaman4=zaman4-1; //birer düşmeye başlar
    kalan_saat4=Math.floor(zaman4/3600 );
     kalan_dakika4=Math.floor((zaman4%3600 )/60 ); 

      kalan_saniye4=zaman4%60; 

       //ikincisi için  başlangiç yeri..
    var yeni_zaman4=""; 
    if(kalan_dakika4>0 || kalan_saniye4>0 || kalan_saat4>0 ){ //hala sifirlanmamişsa
    yeni_zaman4=kalan_saat4+":"+kalan_dakika4+":"+kalan_saniye4; 
    if(kalan_dakika4==0 && kalan_saat4==0 && kalan_saniye4>0 ){
    yeni_zaman4="<font style='font-size:18px;color:red;'>"+yeni_zaman4+"</font>";} 
    }else{ 
    yeni_zaman4="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    document.getElementById('kalan_zamand' ).innerHTML=yeni_zaman4; 

    if(zaman4>0 ){setTimeout("drtsay();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
    if(zaman4==0 ){document.getElementById('teklif_ver_butonu4' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.


    }
        function bessay(){

       zaman5=zaman5-1; //birer düşmeye başlar
      kalan_saat5=Math.floor(zaman5/3600 );
     kalan_dakika5=Math.floor((zaman5%3600 )/60 ); 

      kalan_saniye5=zaman5%60; 
   

       //ikincisi için  başlangiç yeri..
    var yeni_zaman5=""; 
    if(kalan_dakika5>0 || kalan_saniye5>0 || kalan_saat5>0 ){ //hala sifirlanmamişsa
    yeni_zaman5=kalan_saat5+":"+kalan_dakika5+":"+kalan_saniye5; 
    if(kalan_dakika5==0 && kalan_saat5==0 && kalan_saniye5>0 ){
    yeni_zaman5="<font style='font-size:18px;color:red;'>"+yeni_zaman5+"</font>";} 
    }else{ 
    yeni_zaman5="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    document.getElementById('kalan_zamanb' ).innerHTML=yeni_zaman5; 

    if(zaman5>0 ){setTimeout("bessay();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
    if(zaman5==0 ){document.getElementById('teklif_ver_butonu5' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.


    }
    function geri_say(){ 
     
        zaman1=zaman1-1; //birer düşmeye başlar
     
    kalan_saat1=Math.floor(zaman1/3600 ); 
    kalan_dakika1=Math.floor((zaman1%3600 )/60 ); 
    

    kalan_saniye1=zaman1%60; 
  
   // her biri için ayri ayri ilme yapacak...
   //birincini başlangiç yeri..
    var yeni_zaman1=""; 
    if(kalan_dakika1>0 || kalan_saniye1>0 || kalan_saat1>0 ){ //hala sifirlanmamişsa
    yeni_zaman1=kalan_saat1+":"+kalan_dakika1+":"+kalan_saniye1; 
    if(kalan_dakika1==0 && kalan_saat1==0 && kalan_saniye1>0 ){
    yeni_zaman1="<font style='font-size:18px;color:red;'>"+yeni_zaman1+"</font>";} 
    }else{ 
    yeni_zaman1="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    document.getElementById('kalan_zaman' ).innerHTML=yeni_zaman1; 

    if(zaman1>0 ){setTimeout("geri_say();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
    if(zaman1==0 ){document.getElementById('teklif_ver_butonu1' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.
   //fonksiyon geri_say sonu 

//birincinin bitiş yeri...


    }//fonksiyon geri_say sonu 

//ikincisi bitiş yeri...
    function zamani_uzatbir(){ 
//zaman1=zaman1+(teklif_verildiginde_uzayacak_dakika*60 ); // zaman bitmeden teklif gelirse. belirlenen sureye kadar zaman uzatilir.
//var currentdate = new Date();
//var datetime =  currentdate.getHours() + ":" 
//+ currentdate.getMinutes() + ":" + currentdate.getSeconds();
//var zamanyeni=(currentdate.getHours()*3600 )+(currentdate.getMinutes()*60 )+(currentdate.getSeconds()*1)+1;

zaman1 =  18000;
  // alert('Teklif verildi, Başarilar..' ); 
  $("#statusteklifbir").html("Teklif verildi, Başarilar..");
  }//fonksiyon zamani_uzat sonu 

   function zamani_uzatiki(){ 
//zaman2=zaman2+(teklif_verildiginde_uzayacak_dakika*60 ); // zaman bitmeden teklif gelirse. belirlenen sureye kadar zaman uzatilir.
  // alert('Teklif verildi, Başarilar..' ); 
  zaman2 =  18000;
    $("#statusteklifiki").html("Teklif verildi, Başarilar..");
  }//fonksiyon zamani_uzat sonu 
   function zamani_uzatuc(){ 
    
//zaman3=zaman3+(teklif_verildiginde_uzayacak_dakika*60 ); // zaman bitmeden teklif gelirse. belirlenen sureye kadar zaman uzatilir.
  // alert('Teklif verildi, Başarilar..' ); 
  zaman3 =  18000;
    $("#statusteklifc").html("Teklif verildi, Başarilar..");
  }//fonksiyon zamani_uzat sonu 
   function zamani_uzatdrt(){ 
    zaman4 =  18000;
//zaman4=zaman4+(teklif_verildiginde_uzayacak_dakika*60 ); // zaman bitmeden teklif gelirse. belirlenen sureye kadar zaman uzatilir.
  // alert('Teklif verildi, Başarilar..' ); 
    $("#statusteklifdrt").html("Teklif verildi, Başarilar..");
  }//fonksiyon zamani_uzat sonu 
   function zamani_uzatbes(){ 
//zaman5=zaman5+(teklif_verildiginde_uzayacak_dakika*60 ); // zaman bitmeden teklif gelirse. belirlenen sureye kadar zaman uzatilir.
  // alert('Teklif verildi, Başarilar..' ); 
  zaman5 =  18000;
    $("#statusteklifbes").html("Teklif verildi, Başarilar..");
  }//fonksiyon zamani_uzat sonu 
  window.onload=tmzaman; 
</script> 
 {/literal}


 <div class="span9">
          <div class="row-fluid">
        
    
            <div class="aapkolon" id="enikolon1">
                    <header>
                      <h4 style="color:#020302; margin-top:10px; margin-left:10px;"> <strong>{$hediyeadibir}</strong></h4>
                   </header>
                    <section class="group">   
                        <div class="toplam2" >
                          <img src="{$ASSETSURL}img/sample/gallery/hedef.jpg" style="width:250px; height:245px; margin:8px;">
                        </div>
                    
                   <div style="background-color:#d5d5d5;  margin: 260px 5px 10px 8px; padding: 5px;
    border-radius: 10px;  ">
                                 
        <b > En yüksek teklif : {$talepolankisibir}</b>
                          <b style="text-align:left;">{$simdikifiyatbir}P</b>   
                     

                   </div>
                 
                  <center style="height:40px;"> 
                      <label style="background-color:#d5d5d5; margin: 8px 5px 10px 8px;  padding:5px; border-radius: 10px; ">  <a id='kalan_zaman' style='font-size:16px;'></a>  </label>
                  </center>
                  <input type="button" class="btn btn-primary btn-lg btn-block" id='teklif_ver_butonu1' value="Arttir  (5 AAP)"  data-toggle="modal" href="#teklifbir" style="margin:0px;">

       
                    </section>
                
            </div>


              <div class="aapkolon" id="enikolon2">
                    <header>
                      <h4 style="color:#020302; margin-top:10px; margin-left: 10px;"><strong>{$hediyeadiiki} </strong> </h4>
                   </header>
                    <section class="group">   
                        <div class="toplam2" >
                          <img src="{$ASSETSURL}img/sample/gallery/hedef.jpg" style="width:250px; height:245px; margin:8px;">
                        </div>
                    
                   <div style="background-color:#d5d5d5;  margin: 260px 5px 10px 8px; padding: 5px;
    border-radius: 10px; ">
                                 
        <b > En yüksek teklif : {$talepolankisiiki}  {$simdikifiyatiki}P</b>
                     

                   </div>
                 
                    <center style="height:40px;"> 
                      <label style="background-color:#d5d5d5; margin: 8px 5px 10px 8px; padding:5px; border-radius: 10px; "> <a id='kalan_zaman2' style='font-size:16px;'></a>  </label>
                  </center>
             <input type="button" class="btn btn-primary btn-lg btn-block" id='teklif_ver_butonu2' value="Arttir  (5 AAP)"  data-toggle="modal" href="#teklifiki" style="margin:0px;">

       
                    </section>
                
            </div>

               <div class="aapkolon" id="enikolon3">
                    <header>
                      <h4 style="color:#020302; margin-top:10px; margin-left: 10px;"> <strong>{$hediyeadiuc}</strong> </h4>
                   </header>
                    <section class="group">   
                        <div class="toplam2" >
                          <img src="{$ASSETSURL}img/sample/gallery/hedef.jpg" style="width:250px; height:245px; margin:8px;">
                        </div>
                    
                   <div style="background-color:#d5d5d5;  margin: 260px 5px 10px 8px; padding: 5px;
    border-radius: 10px; ">
                                
        <b > En yüksek teklif : {$talepolankisiuc}
                             {$simdikifiyatuc}P</b>
                     

                   </div>
                 
                    <center style="height:40px;"> 
                      <label style="background-color:#d5d5d5; margin: 8px 5px 10px 8px; padding:5px; border-radius: 10px; "> <a id='kalan_zamanc' style='font-size:16px;'></a>  </label>
                  </center>
                <input type="button" class="btn btn-primary btn-lg btn-block" id='teklif_ver_butonu3' value="Arttir  (5 AAP)"  data-toggle="modal" href="#teklifc" style="margin:0px;"> 

       
                    </section>
                
            </div>

               <div class="aapkolon" id="enikolon4">
                    <header>
                      <h4 style="color:#020302; margin-top:10px; margin-left: 10px; "><strong> {$hediyeadidrt}</strong> </h4>
                   </header>
                    <section class="group">   
                        <div class="toplam2" >
                          <img src="{$ASSETSURL}img/sample/gallery/hedef.jpg" style="width:250px; height:245px; margin:8px;">
                        </div>
                    
                   <div style="background-color:#d5d5d5;  margin: 260px 5px 10px 8px; padding: 5px;
    border-radius: 10px; ">
                                  
        <b > En yüksek teklif : {$talepolankisidrt}
                            {$simdikifiyatdrt}P</b>
                     

                   </div>
                 
                 <center style="height:40px;"> 
                      <label style="background-color:#d5d5d5; margin: 8px 5px 10px 8px; padding:5px; border-radius: 10px; "><a id='kalan_zamand' style='font-size:16px;'></a>  </label>
                  </center>
                 <input type="button" class="btn btn-primary btn-lg btn-block" id='teklif_ver_butonu4' value="Arttir  (5 AAP)"  data-toggle="modal" href="#teklifdrt" style="margin:0px;"> 


       
                    </section>
                
            </div>

               <div class="aapkolon" id="enikolon5">
                    <header>
                      <h4 style="color:#020302; font-size: 26; margin-top:10px; margin-left: 10px;">&nbsp;&nbsp; <strong>{$hediyeadibes}</strong> </h4>
                   </header>
                    <section class="group">   
                        <div class="toplam2" >
                          <img src="{$ASSETSURL}img/sample/gallery/hedef.jpg" style="width:250px; height:245px; margin:8px;">
                        </div>
                    
                   <div style="background-color:#d5d5d5;  margin: 260px 5px 10px 8px; padding: 5px;
    border-radius: 10px; ">
         
                <table >
                    <tr>
                      <td>En yüksek teklif: {$talepolankisibes}</td>
                      <td style="text-align:right;">{$simdikifiyatbes}P</td>
                    </tr>
                   
                  </table>
                 </div>
                   <center style="height:40px;"> 
                      <label style="background-color:#d5d5d5; margin: 8px 5px 10px 8px; padding:5px; border-radius: 10px; "> <a id='kalan_zamanb' style='font-size:16px;'></a>  </label>
                  </center>
                  <input type="button" class="btn btn-primary btn-lg btn-block" id='teklif_ver_butonu5' value="Arttir  (5 AAP)"  data-toggle="modal" href="#teklifbes" style="margin:0px;"> 

       
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

<!--modellara  çalişacak artik beşinci aap için-->
    <div id="teklifbes" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">{$hediyeadibes}</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                      
                   <h4> {$hediyeadibes}  acik artirma işleminme katilmak işleminiz gerçekleşsin mi ?</h4> <br/>
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
                  <button onclick="kaydetbes()" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
                  
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusteklifbes"></span>
      </div> 
    </div>
<!--model beşinci hediye bitiş bitis -->
<!--modellara  çalişacak artik beşinci aap için-->
    <div id="teklifdrt" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">{$hediyeadidrt}</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                      
                   <h4>{$hediyeadidrt}  acik artirma işleminme katilmak işleminiz gerçekleşsin mi ?</h4> <br/>
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
                  <button onclick="kaydetdrt()" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
                  
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusteklifdrt"></span>
      </div> 
    </div>
<!--model beşinci hediye bitiş bitis -->
<!--modellara  çalişacak artik beşinci aap için-->
    <div id="teklifiki" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">{$hediyeadiiki}</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                     
                   <h4> {$hediyeadiiki} acik artirma işleminme katilmak işleminiz gerçekleşsin mi ?</h4> <br/>
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
                  <button onclick="kaydetiki()" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
                  
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusteklifiki"></span>
      </div> 
    </div>
<!--model beşinci hediye bitiş bitis -->
<!--modellara  çalişacak artik beşinci aap için-->
    <div id="teklifbir" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">{$hediyeadibir}</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                      <h4>{$hediyeadibir} acik artirma işleminme katilmak işleminiz gerçekleşsin mi ?</h4> <br/>
                   
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
                  <button onclick="kaydetbir()" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
                  
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusteklifbir"></span>
      </div> 
    </div>
<!--model beşinci hediye bitiş bitis -->
<!--modellara  çalişacak artik beşinci aap için-->
    <div id="teklifc" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
         <li class="chat_name">{$hediyeadiuc}</li>
        </ul> 
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
                 
             
                <section class="welly form_align">
                   <h4> {$hediyeadiuc} almak için Açik artirmaya katilmak ister misiniz  ?</h4> <br/>
                   <br/>
                   <br/>
                   <span id="status"></span>
                   <br/>
                   <center>
                  <button onclick="kaydetc()" class="btn btn-success">Tamam</button>
                  <button type="button" class="btn" data-dismiss="modal">Kapat</button> 
                   </center>
                  
               
                </section>
              
      </div>
        <div class="modal-footer">        
       <span id="statusteklifc"></span>
      </div> 
    </div>
<!--model beşinci hediye bitiş bitis -->
{include file='inc/main_footer.tpl'}