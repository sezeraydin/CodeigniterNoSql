<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="{$ASSETSURL}css/messi.min.css" />
<script src="{$ASSETSURL}js/messi.js"></script>
	{literal}
<style type="text/css">
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

		#thegrid { background: url(http://localhost/ci/assets/media/thegrid.png); width:100%; height: 100%; overflow: hidden; text-align: center;}
	
	
	
		#right > input{
			padding: 5px;
			border: none;
			height: 20px;
			width: 180px;
			float: left;
			clear: both;
			font-size: 18px;
			font-weight: bold;
			color: #550000;
		}

		#username, #pass1 , #pass2 {
			margin-bottom: 20px;
		}
		
		#button{
			width: 125px !important;
			height: 29px !important;
			margin-left: 38px;
			background:url(http://localhost/ci/assets/media/register.png);
			color: white !important;

		}
		#button:hover{
			background-position: 0 -29px;
		}

.clearfix:before,
.clearfix:after {content: " "; /* 1 */ display: table; /* 2 */}
.clearfix:after {clear: both;}
		
</style>{/literal}
{literal}
<script type="text/javascript">
    function register(){
              var usr = $('#username').val();
              var sifre = $('#pass1').val();
              var email = $('#email').val();
              var sifretekrar = $('#pass2').val();
         	var network = '{/literal}{$network}{literal}';//bu kisim buraya yönlediren sayfadan gelecek..
         	var banner = '{/literal}{$banner}{literal}';
         	var kampanya = '{/literal}{$kapmanya}{literal}';
         	var landingpage = '{/literal}{$landingpage}{literal}';
              if (sifre != sifretekrar) {
               new Messi("sifre farkli", {title: 'Hata mesajlari', modal: true});

              }else{
				 $.ajax({ 
				                          type: "POST", 
				                          url: "http://localhost/ci/index.php/user/register",//buradaki kontrol classina gonder; 
				                           data: {"isim": usr,
				                            'sifre' : sifre,
				                            'email': email,
				                            'network':network,
				                            'banner':banner,
				                            'kampanya':kampanya,
				                            'landingpage':landingpage
				                             }, 
				                          success: function(msg){
				                            if (msg=="ok") {
				                             window.location = "http://localhost/ci/index.php/user/main";
				                                // $("#statusmesaj").html(msg);
				                             }else{
				                                 new Messi(msg, {title: 'Hata mesajlari', modal: true});
				                             }
				                          }
                        });

              } 
           
            }
</script>
 {/literal}
	<title>Orkun Online - 2013'ün en iyi tarayıcı oyunu!</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body style="margin:0;padding:0;">
<div id="wrapper" class="clearfix">
<div id="thegrid">

<div id="box" style="margin: 30px auto 0; width: 900px">
	<div id="boxtop" style="background: url({$ASSETSURL}media/boxtop8.png);height: 238px;width: 900px;"></div>
	<div id="boxbot" style="background: url({$ASSETSURL}media/boxbot8.png);height: 363px;width: 900px;">
		<div id="left" style="border:#5B5246 1px solid;position: absolute;margin: 14px 0 0 90px; width:512px; height: 312px; overflow: hidden;background: url({$ASSETSURL}media/slideshow/swf0.jpg)">
			<div><img src="{$ASSETSURL}media/slideshow/mainswf1.jpg" alt=""></div>
			<div><img src="{$ASSETSURL}media/slideshow/mainswf2.jpg" alt=""></div>
			<div><img src="{$ASSETSURL}media/slideshow/mainswf3.jpg" alt=""></div>
			<div><img src="{$ASSETSURL}media/slideshow/mainswf4.jpg" alt=""></div>
			<div><img src="{$ASSETSURL}media/slideshow/mainswf5.jpg" alt=""></div>
			<div><img src="{$ASSETSURL}media/slideshow/mainswf6.jpg" alt=""></div>
		</div>

		<div id="right" style="position: absolute;margin: 82px 0 0 612px; width:200px;color:#CCCCCC; text-align: center;">
						
				<input type="text" id="username" name="username" />
				<input type="password" id="pass1" name="pass1" />
				<input type="password" id="pass2" name="pass2" />
				<input type="text" id="email" name="email" />
				<small style="font-size:10px; float:left; line-height: 11px;margin: 2px;">Kaydınızla beraber <a href="http://wiki.orkunonline.com/doku.php?id=kurallar:genel_is_sartlari" style="color:#33CCCC;">kullanım şartlarını</a> kabul etmiş sayılacaksınız.</small>
				<input type="submit" id="button" value="Kayıt Ol" onclick="register()" />
				<small style="font-size:10px; float:left; line-height: 11px;margin: 2px;">Zaten kayıtlıysanız <a href="http://www.orkunonline.com" style="color:#33CCCC;">giriş linki</a></small>
		

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

</body>
</html>