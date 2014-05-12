<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

    <link href="{$ASSETSURL}css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.css" rel="stylesheet" />
    <link href="{$ASSETSURL}css/bootstrap/bootstrap-modal-bs3patch.css" rel="stylesheet" />
    <link href="{$ASSETSURL}css/bootstrap/bootstrap-modal.css" rel="stylesheet" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://getbootstrap.com/2.3.2/assets/js/google-code-prettify/prettify.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js"></script>
    <script src="{$ASSETSURL}js/bootstrap-modalmanager.js"></script>
    <script src="{$ASSETSURL}js/bootstrap-modal.js"></script>
<head>
  

<script type="text/javascript">
  


function myFunction()
{
 

var x=document.getElementById("demo");

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
 
  {literal}
<style>
@charset "UTF-8";
body,img,p,h1,h2,h3,h4,h5,h6,form,table,td,ul,ol,li,fieldset { margin:0; padding:0; border:0; }
p,h1,h2,h3,h4,h5,h6,ul { margin:15px 0; }

body { background: #272822; font:14px/21px Helvetica, Arial, sans-serif; color: #DDD; margin: 0; padding: 0; height: 100% }
a { color: #ccc; text-decoration: underline; }
a:hover { color: #fb2b2b; }
h1, h2 { font-size: 26px; line-height: 28px; font-weight: normal; letter-spacing: -1px; color: #fff; }
h3 { font-size: 18px; font-weight: normal; margin: 8px 0; }
h4 { font-size: 14px; font-weight: normal; margin: 0; }
h5 { font-size: 12px; font-weight: normal; margin: 0; }
ul { margin-left: 20px; }
ol { margin-left: 36px; }
#wrapper {  margin: 0 auto; height: 100%}
#thegrid { background: url(http://localhost/ci/assets/media2/thegrid.png); width:100%; height: 100%; overflow: hidden; text-align: center;}

#kurdele{position:absolute;}
#firsat{margin:3px auto;}

#box {margin: 10px auto 0; width: 950px}
#boxtop {background: url(http://localhost/ci/assets/media2/boxtop8.png);height: 238px;width: 950px;}
#boxbot {background: url(http://localhost/ci/assets/media2/boxbot8.png);height: 362px;width: 950px;}
#left {border:#5B5246 1px solid;position: absolute;margin: 14px 0 0 96px; width:512px; height: 312px; overflow: hidden;background: url(http://localhost/ci/assets/media2/slideshow/swf0.jpg)}
#right {
  position: absolute;
  margin: 15px 0 0 610px; 
  width:200px;color:#CCCCCC; 
  text-align: center;
}
#uret{
background: url(http://localhost/ci/assets/media2/hediye.png);
background-position:center;
background-repeat:no-repeat;
height: 28px;
width: 177px;
 border: 0;
}
#oyna{
background: url(http://localhost/ci/assets/media2/oyna.png);
background-position:center;
background-repeat:no-repeat;
height: 44px;
width: 189px;
 border: 0;
}
#right small{font-size:10px; float:left; line-height: 11px;margin: 2px;}
#right small a {color:#33CCCC;}
#right>form>input {padding: 5px; border:none; height: 20px; width:180px; float:left;clear:both; font-size: 18px;font-weight: bold;color:#550000;}
#username, #pass1, #pass2 {margin-bottom: 20px}
#button {width: 125px !important; height: 29px !important; margin-left:38px; background: url(http://localhost/ci/assets/media2/register.png);color: white !important;}
#button:hover {background-position: 0 -29px;}

.clearfix:before,
.clearfix:after {content: " "; /* 1 */ display: table; /* 2 */}
.clearfix:after {clear: both;}

</style>
{/literal}
  <title>Orkun Online - 2013'ün en iyi tarayıcı oyunu!</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body style="margin:0;padding:0;">
<div id="wrapper" class="clearfix">
<div id="thegrid">

<div id="kurdele"><img src="{$ASSETSURL}media2/kurdele.png" /></div>
<div id="firsat"><img src="{$ASSETSURL}media2/firsat.gif" /></div>

<div id="box">
  <div id="boxtop"></div>
  <div id="boxbot">
    <div id="left">
      <div><img src="{$ASSETSURL}media/slideshow/mainswf1.jpg" alt=""></div>
      <div><img src="{$ASSETSURL}media/slideshow/mainswf2.jpg" alt=""></div>
      <div><img src="{$ASSETSURL}media/slideshow/mainswf3.jpg" alt=""></div>
      <div><img src="{$ASSETSURL}media/slideshow/mainswf4.jpg" alt=""></div>
      <div><img src="{$ASSETSURL}media/slideshow/mainswf5.jpg" alt=""></div>
      <div><img src="{$ASSETSURL}media/slideshow/mainswf6.jpg" alt=""></div>
    </div>

    <div id="right">

        Arkadaşın "{$isim}" <br>
        OrkunOnline oynarken ihtiyaç <br>
          duyuyor Aşağidaki hediye<br>
        üret butonuna basip ürettiğiniz
         <br>
        hediye kodunu ona yollarsaniz <br>
         eşsiz hediyeler kazanacak <br>
       
        <button id="uret" data-toggle="modal" href="#stack1" onclick="logdenetim()" > </button>
    
      Sen de OrkunOnline oynayip 
      Arkadaşinla keyifli vakit 
      geçirebilirsin.Hemen kaydolursan
       arkadaşin ve sen süper hediyelerkazanacaksınız
      
     

      <button id="oyna"> </button>

    </div>
  </div>
</div>
</div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="{$ASSETSURL}js/jquery.tubular.1.0.js"></script>
<script type="text/javascript">
  $('document').ready(function() {
    $("#left > div:gt(0)").hide();
  setInterval(function() { 
    $('#left > div:first')
    .fadeOut()
    .next()
    .fadeIn()
    .end()
    .appendTo('#left');
  },  5000);});

  $('document').ready(function() {
  var options = { videoId: 'AGDLcjAlJcE',  };
  $('#wrapper').tubular(options);
  });
</script>

<!-- Modal Definitions -->
<div id="stack1" class="modal fade" tabindex="-1" data-focus-on="input:first" style="display: none;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  </div>
  <div class="modal-body">
    <h2><p id="demo" name="code" style="color:black;"></p></h2>   
  </div>
  <div class="modal-footer">
    <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
   </div>
</div>



</body>
</html>