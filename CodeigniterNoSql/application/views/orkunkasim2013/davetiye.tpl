<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Orkon online</title>

<link href="{$ASSETSURL}css/templatemo_style.css" rel="stylesheet" type="text/css" />
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.css" rel="stylesheet" />
  <link href="{$ASSETSURL}css/bootstrap/bootstrap-modal-bs3patch.css" rel="stylesheet" />
  <link href="{$ASSETSURL}css/bootstrap/bootstrap-modal.css" rel="stylesheet" />
  <script>




function myFunction()
{
 

var x=document.getElementById("demo");
//log denetleme ayni ip hangi zaman araliginda kod talep etmis

//simdiki zamani al.
//karsilastr. 18 saaat gecmısse kod uretilmesi izin ver 
// 18 saat gecmemisse hangi ip ile uretilmisse son 
var randomValue = randomString(12);
x.innerHTML=randomValue;
}

function randomString(length) {
    if ( length <= 0 ) return "";
    var getChunk = function(){
            var i; //index iterator
            rand = Math.random()*10e16; //execute random once
            bin = rand.toString(2).substr(2,10); //random binary sequence
            lcase = (rand.toString(36)+"0000000000").substr(0,10); //lower case random string
            ucase = lcase.toUpperCase(), //upper case random string
            a = [lcase,ucase]; //position them in an array in index 0 and 1
            str = ""; //the chunk string
        b = rand.toString(2).substr(2,10);
        for ( i=0; i<10; i++ )
            str += a[bin[i]][i]; //gets the next character, depends on the bit in the same position as the character - that way it will decide what case to put next
        return str;
    }
    str = ""; //the result string
    while ( str.length < length  )
        str += getChunk();
    str = str.substr(0,length);
    return str;
}
 
function koduret(){
 
  $(document).ready(function(){
      var x=document.getElementById("demo");
      var randomValue = randomString(12);
      $.ajax({ 
                type: "POST", 
                url: "{$BASEURL}uret_kontrol/kodvtekle",//buradaki kontrol classina gonder; 
                data: "isim="+ randomValue, 
                success: function(msg){ 
                    
                  x.innerHTML=randomValue;
                           
                }
              });
                         
     });
} 
function logdenetim(){
$(document).ready(function(){
  var x=document.getElementById("demo");
      var sayi= 32  ;
      $.ajax({ 
                type: "POST", 
                url: "{$BASEURL}uret_kontrol/kontrol",//buradaki kontrol classina gonder; 
                data: "isim="+ sayi, 
                success: function(msg){ 
                        
                if (msg=="koduret") {
                  koduret();
                }else{
                   
                  x.innerHTML=msg;
                }
                 }
              });
                         
     });

}


</script>

</head>
<body>

<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
		<div id="site_title">
            <h1><a href="http://www.orkunonline.com" target="_parent"><strong>ORKUN ONLİNE</strong></a></h1>
        </div>
    </div>
</div>

<div id="templatemo_main_wrapper">
	<div id="templatemo_main">
		<div id="templatemo_main_top">
        
        	<div id="templatemo_content">
        
    		<div class="post_section">
            
            	<div class="post_date">
                	<span>{$davetsayisi} davet</span>
            	</div>	
<div class="post_content">
                
                    <h2>OrkunOnline Oyun kodu</h2>

                    
                   <img src="{$ASSETSURL}images/templatemo_image_01.jpg" alt="oyna"  />
                    
              		<h3>
		<p> Orkun Online Hosgeldiniz</p><br/>
		<p> {$kimdengeldi} orkunOnline'da senin yardimima ihtiyac duyuyor</p><br/>
		<p> Ona yardim etmek istersen yan taraftaki kod gosteri tiklayarak,Oradan cikan kodu arkadasina gonderek kazanmasini saglaya bilirsin.</p><br/>
<p> Eger kayit olursan arkadasin daha fazla kazanacaktir..</p><br/>
		</h3> 
		</div>
              
            </div>
                
           
        
       	  </div>
            
          
          <div id="templatemo_sidebar">
            	
               <div class="cleaner_h40"></div>
               <div id="ads">
			   <br/>
			   <br/><br/>
                	<a href="{$BASEURL}user/giris"><img src="{$ASSETSURL}images/oyna.png" alt="banner 1" /></a><br/><br/>
                    <br/><br/><br/><br/>
                    <a href="#"><img src="{$ASSETSURL}images/kodgoster.jpeg" alt="banner 2" class="demo" data-toggle="modal" href="#stack1"  onclick="logdenetim()" /></a>
                </div>
                
            </div>
        
        	<div class="cleaner"></div>
            
        </div>
        
    </div>
    
    <div id="templatemo_main_bottom"></div>
    
</div>

<div id="templatemo_footer">

    Copyright © 2048 <a href="#">Pollan games</a>   
</div>
<!-- Modal Definitions -->
<div id="stack1" class="modal fade" tabindex="-1" data-focus-on="input:first" style="display: none;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  </div>
  <div class="modal-body">
    <h2><p id="demo" name="code"></p></h2>   
  </div>
  <div class="modal-footer">
    <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
   </div>
</div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://getbootstrap.com/2.3.2/assets/js/google-code-prettify/prettify.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js"></script>
    <script src="{$ASSETSURL}js/bootstrap-modalmanager.js"></script>
    <script src="{$ASSETSURL}js/bootstrap-modal.js"></script>
</body>
</html>
