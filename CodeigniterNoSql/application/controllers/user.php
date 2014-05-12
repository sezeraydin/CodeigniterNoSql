<?php

class User extends CI_Controller
{


		public function __construct()
       {
    

        parent::__construct();
      
        $this->load->model('user_model');
        $this->load->model('gift_model');
        $this->load->model('mail');
      	$this->load->model('log_model');

       }
		function index(){
			echo "bye bye world";
		}


	function aacagir1(){

			//acik artirma bölümüne ilk olarak gerekliv veri almam gerekli bunlar benim için gerekli olan ürünün adi,ürünün fiyati 
			//ürünün artiştan sonraki fiyati.son olarakta son talepte bulunan kişi..
			 $this->load->model('acikartirma_model');
		     $deger=$this->acikartirma_model->aapverileri();
		     $this->smarty->assign('hediyeadi',$deger["1"]["adi"]);
		     $this->smarty->assign('talepolankisi',$deger["1"]["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["1"]["simdikifiyat"]);
		      $simdikisaat =  strtotime("now") ;
				if ($simdikisaat > $deger["1"]["starih"]) {
					
					$this->smarty->assign('sonkalan',"Acik artirma sonuclandi");
				} 

					$this->smarty->assign('kalan',"kalan_zaman");
				
				
				
				$this->smarty->assign('kolon',"enikolon1");
				$this->smarty->assign('modal',"teklifbir");

			$this->smarty->view("denenem.tpl");
	}

	function aacagir2(){

			//acik artirma bölümüne ilk olarak gerekliv veri almam gerekli bunlar benim için gerekli olan ürünün adi,ürünün fiyati 
			//ürünün artiştan sonraki fiyati.son olarakta son talepte bulunan kişi..
			 $this->load->model('acikartirma_model');
		     $deger=$this->acikartirma_model->aapverileri();
		     $this->smarty->assign('hediyeadi',$deger["2"]["adi"]);
		     $this->smarty->assign('talepolankisi',$deger["2"]["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["2"]["simdikifiyat"]);
			
		     	$simdikisaat =  strtotime("now") ;
				if ($simdikisaat > $deger["2"]["starih"]) {
					
					$this->smarty->assign('sonkalan',"Acik artirma sonuclandi");
				} 
					$this->smarty->assign('kalan',"kalan_zaman2");
				
				

		     $this->smarty->assign('kolon',"enikolon2");
		     $this->smarty->assign('modal',"teklifiki");

			$this->smarty->view("denenem.tpl");
	}

	function aacagir3(){

			//acik artirma bölümüne ilk olarak gerekliv veri almam gerekli bunlar benim için gerekli olan ürünün adi,ürünün fiyati 
			//ürünün artiştan sonraki fiyati.son olarakta son talepte bulunan kişi..
			 $this->load->model('acikartirma_model');
		     $deger=$this->acikartirma_model->aapverileri();
		      $this->smarty->assign('hediyeadi',$deger["3"]["adi"]);
		     $this->smarty->assign('talepolankisi',$deger["3"]["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["3"]["simdikifiyat"]);
				

		     $simdikisaat =  strtotime("now") ;
				if ($simdikisaat > $deger["3"]["starih"]) {
					
					$this->smarty->assign('sonkalan',"Acik artirma sonuclandi");
				} 
					$this->smarty->assign('kalan',"kalan_zamanc");
				
				

				$this->smarty->assign('kolon',"enikolon3");
				$this->smarty->assign('modal',"teklifc");
			$this->smarty->view("denenem.tpl");
	}

	function aacagir4(){

			//acik artirma bölümüne ilk olarak gerekliv veri almam gerekli bunlar benim için gerekli olan ürünün adi,ürünün fiyati 
			//ürünün artiştan sonraki fiyati.son olarakta son talepte bulunan kişi..
			 $this->load->model('acikartirma_model');
		     $deger=$this->acikartirma_model->aapverileri();
		     $this->smarty->assign('hediyeadi',$deger["4"]["adi"]);
		     $this->smarty->assign('talepolankisi',$deger["4"]["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["4"]["simdikifiyat"]);

		     $simdikisaat =  strtotime("now") ;
				if ($simdikisaat > $deger["4"]["starih"]) {
					
					$this->smarty->assign('sonkalan',"Acik artirma sonuclandi");
				} 
					$this->smarty->assign('kalan',"kalan_zamand");
				
				

		     $this->smarty->assign('kolon',"enikolon4");
		     $this->smarty->assign('modal',"teklifddrt");

			$this->smarty->view("denenem.tpl");
	}

	function aacagir5(){

			//acik artirma bölümüne ilk olarak gerekliv veri almam gerekli bunlar benim için gerekli olan ürünün adi,ürünün fiyati 
			//ürünün artiştan sonraki fiyati.son olarakta son talepte bulunan kişi..
			 $this->load->model('acikartirma_model');

			 if(FIRELOG) flog("işlemler başladi...");
		     $deger=$this->acikartirma_model->aapverileri();if(FIRELOG) flog($deger);
		      $this->smarty->assign('hediyeadi',$deger["5"]["adi"]);
		     $this->smarty->assign('talepolankisi',$deger["5"]["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["5"]["simdikifiyat"]);
				$simdikisaat =  strtotime("now") ;
				if(FIRELOG) flog("şimdiki saat".$simdikisaat);
				if(FIRELOG) flog("ssistemden gelen saat".$deger["5"]["starih"]);
				if ($simdikisaat > $deger["5"]["starih"]) {
					
					$this->smarty->assign('sonkalan',"Acik artirma sonuclandi");
					if(FIRELOG) flog("zaman geçmiş kardeş");
				}


				$this->smarty->assign('kalan',"kalan_zamanb");
				$this->smarty->assign('kolon',"enikolon5");
				$this->smarty->assign('modal',"teklifbes");

			$this->smarty->view("denenem.tpl");
	}
	function yazdeger(){
		$this->load->model('acikartirma_model');

					$deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);
				    $starih = $deger["starih"]; if(FIRELOG) flog($starih);//açik artirmadaki ilk veriyi aldik. bu veritabaninda kaydolan saat. yani teklifin biteceği saat.
				    $dene3 = date("H:i:s",$starih);if(FIRELOG) flog($dene3);
				    $dosya = fopen("dosya.txt","w"); 
					$veri_yazdir=$starih;
					fwrite($dosya, $veri_yazdir);
					fclose($dosya);

	}
	function zamanbak(){


		$this->load->model('acikartirma_model');


		 $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);
	    $starih = $deger["starih"]; if(FIRELOG) flog($starih);//açik artirmadaki ilk veriyi aldik. bu veritabaninda kaydolan saat. yani teklifin biteceği saat.
	    $dene3 = date("H:i:s",$starih);if(FIRELOG) flog($dene3);


		$dosya = fopen("dosya.txt","r"); // bu dosynin içine bak
     
			   while(!feof($dosya))
			        {
			        $satir = fgets($dosya, 255);// dosyayi oku..
					         if ($satir==$starih) {
					              echo "arana deger ayni";
					               
					               
					            }else{
					            echo "aranan deger farkli";
					            }

      			 }

      	fclose($dosya);
       

	    $teklifverileceksaat =  strtotime("now") ;if(FIRELOG) flog($teklifverileceksaat);//bu kullanicinin o anki saatini verir.
	    $dene = date("H:i:s",$teklifverileceksaat);if(FIRELOG) flog($dene);

  		
  		
  		$diff = $starih - $teklifverileceksaat;// aradaki saniye farki :)
  			
  		$saat =  floor($diff/3600);if(FIRELOG) flog($saat);
  		$dakika = floor(($diff%3600 )/60 );if(FIRELOG) flog($dakika);
  		$saniye=$diff%60; if(FIRELOG) flog($saniye);

		$this->smarty->assign("saat",$saat);
		$this->smarty->assign("dakika",$dakika);
		$this->smarty->assign("saniye",$saniye);

		     $this->smarty->assign('fiyat',$deger["fiyat"]);
		     $this->smarty->assign('talepolankisi',$deger["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["simdikifiyat"]);

		//$this->smarty->view("denenem.tpl");
			//bitiş yeri

	}
function puzzleaap($denemegelendeger){
		
			
			//gelen puzzle degeri hangi kısımda oldugunu gosterecek.
			//if(FIRELOG) flog($id);
			$qid= $_SESSION['login'];if(FIRELOG) flog($qid);//kullanici adi
			//$qid = "osman";
			$deger=$this->gift_model->puzzledegeral();  if(FIRELOG) flog($deger); //tum puzzle isimlerini al vetum degerler
           	$son = $this->gift_model->kullanilanpuzzlevarmi($qid,$deger); if(FIRELOG) flog($son);  //isimle degeri gondererek hangi puzzlelin kullandigini tespit eder ve sadece adlari alinir.
           	$a = $this->gift_model->kullanilanpuzzlesayi($qid,$deger); if(FIRELOG) flog($a);  //kullanilan puzzle sayisi
            if(FIRELOG) flog($son[$denemegelendeger]["adi"]);//kullanilan puzzlelar
         	$sayi= $this->gift_model->puzzlesayisi();
            for ($i=1; $i < $sayi; $i++) { 
            			if ($deger[$i]==$son[$denemegelendeger]["adi"]) {
            				 if(FIRELOG) flog("aradigimiz puzz adi :".$deger[$i]);
            				 	$tmsonuc= $this->gift_model->genel($deger[$i]);if(FIRELOG) flog($tmsonuc["songun"]); // verilen puzzle tum ozellikleri burada olur..
		  		 					//burada tarih bilgileri alinir.	
            				 	$tarih = date("d.m.Y");  if(FIRELOG) flog($tarih);
            				 	$ilk = strtotime($tmsonuc["songun"]);if(FIRELOG) flog($ilk);
            					$son = strtotime($tarih);if(FIRELOG) flog($son);
            						if ($son > $ilk  ) {
            								if(FIRELOG) flog("tarih geçmiş bu yüzden donuşturulecektir");
            								$this->smarty->assign('aapmesaj',"tarih geçmiş bu yüzden donuşturulecektir");
            								$this->smarty->view('puzzletalep.tpl');

            						}else{
            								if(FIRELOG) flog("tarih geçmemiş bu yüzden donuşturulmeyecektir");
            								$this->smarty->assign('aapmesaj',"tarih geçmemiş bu yüzden donuşturulmeyecektir");
            								$this->smarty->view('puzzletalep.tpl');
            						}
            			}
            }
		}

		function puzzletalep($denemegelendeger){
			
			//$id = $this->input->post('deneme');//gelen puzzle degeri hangi kısımda oldugunu gosterecek.
			//if(FIRELOG) flog($id);
			$qid = "osman";if(FIRELOG) flog($qid);

			$deger=$this->gift_model->puzzledegeral();  if(FIRELOG) flog($deger); //tum puzzle isimlerini al
           	$son = $this->gift_model->kullanilanpuzzlevarmi($qid,$deger); if(FIRELOG) flog($son);  //isimle degeri gondererek hangi puzzlelin kullandigini tespit eder
           	$a = $this->gift_model->kullanilanpuzzlesayi($qid,$deger); if(FIRELOG) flog($a);  //kullanilan puzzle sayisi
            if(FIRELOG) flog($son[$denemegelendeger]["adi"]);//kullanilan puzzlelar
         	$sayi= $this->gift_model->puzzlesayisi();
            for ($i=1; $i <= $sayi; $i++) { 
            			if ($deger[$i]==$son[$denemegelendeger]["adi"]) {
            				 if(FIRELOG) flog("aradigimiz puzz adi :".$deger[$i]);
            				 	$tmsonuc= $this->gift_model->genel($deger[$i]);if(FIRELOG) flog($tmsonuc["songun"]); // verilen puzzle tum ozellikleri burada olur..
		  		 					//burada tarih bilgileri alinir.	
            				 	$tarih = date("d.m.Y");  if(FIRELOG) flog($tarih);
            				 	$ilk = strtotime($tmsonuc["songun"]);if(FIRELOG) flog($ilk);
            					//$son = strtotime($tarih);if(FIRELOG) flog($son);
            					$son = "11.01.2013";//bu veriş silinecek
            						if ($son > $ilk  ) {
            							if(FIRELOG) flog("puzzle talep etten geldik..");
            								$this->puzzleaap();//gelen degerle birlikte gonderilecek boylece hangi puyzzle oldugu tanimlanmis olur.
            						}else{
            								if(FIRELOG) flog("tarih geçmemiş devam ediliyor");
            										for ($t=0; $t < $tmsonuc["en"] ; $t++) { 
            													for ($b=0; $b < $tmsonuc["boy"] ; $b++) { 
            															 for ($x=0; $x < $a; $x++) { //puzzeli parçalari tam mi yoksa eksik mi.
            															  		$nokta=$t.".".$b;if(FIRELOG) flog($nokta);
            															  		$tmhediyesonuc= $this->gift_model-> puzzletmdegeral($qid,$deger[$i]); // hediye olarak kazanilan tum parçalari çekiyor	  		
				  																			if ($tmhediyesonuc[$nokta] != null) {
				  																							 if(FIRELOG) flog("aradigim deger bu ");
				  																					}else{
				  																						 if(FIRELOG) flog("bu deger yoksa  direk çik çunku puzzle eksikleri var");
				  																						 exit();
				  																					}
		  																		
		  																					 }

		  																					 if(FIRELOG) flog("tebrikler puzzleli tamaladiniz admine ekleme mesaji iletildi en kısa zamanda eklenecektir.");
		  																					 $this->gift_model->puzzledegerds($qid,$deger[$i]);

            													}
            										}

            						}
            			}
            }
		}

	
	function login(){
	   	
			$id = $this->input->post('isim');if(FIRELOG) flog($id);
			$pass = $this->input->post('sifre');if(FIRELOG) flog($pass);
			$hatirlama = $this->input->post('hatir');if(FIRELOG) flog($hatirlama);
			if(FIRELOG) flog("girşi işlemleri başladi ");

			//if ($hatirlama==true) {
				//burada cookie ve ve3ri tabani kontrol edilecek
			//	setcookie ("kullanici", "", time() - 3600);
			//}
			// $id = $_POST["isim"];if(FIRELOG) flog($id);

             //$pass = $_POST["sifre"];if(FIRELOG) flog($pass);

			/*if ($this->aktivecontrol()==true) {
				
			}else{

			}*/
			$ip = $_SERVER['REMOTE_ADDR'];
			$zaman = microtime();

			//$logtut = "Tarih: " . $zaman . " <br /> Ip: " . $ip . " <br /> Host: " . $host . " <br /> Tarayici: " . $_SERVER['HTTP_USER_AGENT'] . " <br /> Nerden geldi: " . $nerden . " <br /><hr><br />";
			if($id != "" && $pass != ""){	
				if(FIRELOG) flog("veriler bos degil");
				$passmd= md5($pass);
				if($this->user_model->login($id,$passmd)==true){
					$deger= 5;
					$this->gift_model->puanekle($id,$deger);
					$this->log_model->kaydet($ip,$zaman,$id);
					
					//redirect('/user/main');
					echo "ok";
				}else{

					if(FIRELOG) flog("şifre veya kullanici adi yanliş");
				  //	print_r("hata oluştu");//hata sayfasina yonlendirecek
					 $hata="giriş işlemlerinde hata oluştu.Adinizi ve şifrenizi kontrol edin.";
					 echo "giriş işlemlerinde hata oluştu.Adinizi ve şifrenizi kontrol edin.";
				     //$this->giris($hata);
				  }
				   
			}else{
					 $hata="Bos veri girilemez";
					 echo "Bos veri girilemez";
				     //$this->giris($hata);
				   //print_r("Bos veri girilemez!");//hatasayfasina yonlendir
				}
		}
function adbak($username){
	 	if(FIRELOG) flog("adbak ");
				// Buraya model gonder kodlarını ekliyoruz
				if($this->user_model->vbcontrolad($username)==true){
				//isim var
					if(FIRELOG) flog(" isim var");
					return true;
				}else{
				//yok
					return false;
				}


	 }
	 	 function emailbak($mail){
	 		//	$deger ="$mail";
	 			$deger="\"".$mail."\"";
	 			if(FIRELOG) flog($deger);
				// Buraya model gonder kodlarını ekliyoruz
				if($this->user_model->vbcontrolemail($deger)==true){
				//email var
					if(FIRELOG) flog("email var");
					return true;
				}else{
				//email yok
					return false;
				}


	 }
	
  	function register(){
		
		    $veri["login"] = $this->input->post('isim');if(FIRELOG) flog($veri["login"]);
		    $veri["email"] = $this->input->post('email');if(FIRELOG) flog($veri["email"]);

		    $sifre= $this->input->post('sifre');if(FIRELOG) flog($sifre);
		    $veri["pass"] = md5($sifre);

		   $network = $this->input->post('network');if(FIRELOG) flog($veri["login"]);
		    if ($network==null) {
		    	$veri["network"]="direk kayit olmus";
		    } else {
		    	$veri["network"]= $network;
		    }
		    $banner = $this->input->post('banner');if(FIRELOG) flog($veri["login"]);
		    if ($network==null) {
		    	$veri["banner"]="direk kayit olmus";
		    } else {
		    	$veri["banner"]= $banner;
		    }
		    $kampanya = $this->input->post('kampanya');if(FIRELOG) flog($veri["login"]);
		    if ($network==null) {
		    	$veri["kampanya"]="direk kayit olmus";
		    } else {
		    	$veri["kampanya"]= $kampanya;
		    }
		    
		     $landingpage = $this->input->post('landingpage');if(FIRELOG) flog($veri["login"]);
		    if ($network==null) {
		    	$veri["landingpage"]="direk kayit olmus";
		    } else {
		    	$veri["landingpage"]= $landingpage;
		    }
		    //bu kisim davetiye sayfasindan gelecektir.
			  $daveteden = $this->input->post('daveteden');if(FIRELOG) flog($veri["login"]);
		    if ($network==null) {
		    	$veri["daveteden"]="kimse davet etmedi";
		    } else {
		    	$veri["daveteden"]= $daveteden;
		    }
			 if (isset( $_GET["id"])){
					$this->input->get_cookie("referer", $_GET["id"], time()+(60*60*24*30), "/","orkunonline.com" );
					
				}
 				
				if(FIRELOG) flog(" login konrtolu burada");
 	 			if($veri["login"] != ""  ){
					if(FIRELOG) flog(" lisim alani bos degilse");//isim alani bos degilse
						if($veri["email"] != ""){
								if(FIRELOG) flog(" email bos degilse");// email bos degilse
										if ( filter_var($veri["email"], FILTER_VALIDATE_EMAIL) ) {

											       	if($sifre != ""){
															if(FIRELOG) flog(" pass bos degilse ");//pass bos degilse 
															//tum işlemleri yap
																if ($this->adbak($veri["login"])==false) {
																	if(FIRELOG) flog(" ad kullanilir");//ad kullanilir

																		if ($this->emailbak($veri["email"])==false) {
																				 if($this->user_model->register($veri)==true){
																						$this->mail->register($veri["email"],$veri["login"]);
																						$this->gift_model->hediyekayit($veri["login"]);
																						$this->mail->hesapactive($veri["email"],$veri["login"]);
																						if(FIRELOG) flog("şuan registerdan user mainde gitmek uzere");
																						session_start();
																						$_SESSION['login']=$veri["login"];if(FIRELOG) flog($_SESSION['login']);
																						//redirect('/user/main');
																						echo "ok";

																					}else{
																						if(FIRELOG) flog("hata oluştu");
																						//echo '<script>alert("hatali olustu");</script>';
																						//redirect('/user/giris');

																						//$hata="boyle bir kullaci var..";
																						echo "boyle bir kullaci var..";
																						//$this->giris($hata);
																					  }
																		}else{
																			//email kulllailmis
																			if(FIRELOG) flog("bu email kullanilmiş");
																			//$hata="Bu Email kullamistir";
																			echo "Bu Email kullamistir";

														                    //$this->giris($hata);
																		}
																}else{
																	//$hata="Bu ad kullamistir";
														            //$this->giris($hata);
														            echo "Bu ad kullamistir";
																	//ad kullanildiginda 
																}
														}else{
														//sadece şifre bos diye mesaj ver
														echo "Sifre bos Birakilamaz";
														//$hata="Sifre bos Birakilamaz";
														//$this->giris($hata);
														}

											        } else {

											        echo "gecersir bir email kullandiniz"; 

											        }

									
						}else{
								if($sifre == ""){
											//sadece email ve şifre bos diye mesaj ver
											//$hata="Email ve Sifre bos Birakilamaz";
											echo "Email ve Sifre bos Birakilamaz";
									        //$this->giris($hata);
											}else{
											//sadece email bos
											echo "Email bos bırakılamaz";
											//$hata="Email bos bırakılamaz";
											//$this->giris($hata);
											}
						}

				}else{
					if(FIRELOG) flog("iism alani bos");
				//isim alani bos
						if($veri["email"] == ""){
							//email bos
							if(FIRELOG) flog("email alani bos");
							if($sifre == ""){
								if(FIRELOG) flog("sifre alanida bos");
												//tumalanlar bos diye mesaj ver
												//$hata="Sifre,Email ve İsim alani  bos Birakilamaz";
												echo "Sifre,Email ve İsim alani  bos Birakilamaz";
												//$this->giris($hata);
												}else{

											echo "Email ve İsim alani  bos Birakilamaz";
												//$hata="Email ve İsim alani  bos Birakilamaz";
												//$this->giris($hata);
												}
						}else{
						//email bos degil
									if($sifre == ""){
												//sadece isim ve şifre bos diye mesaj ver
												//$hata="Sifre ve isim bos Birakilamaz";
												echo "Sifre ve isim bos Birakilamaz";
												//$this->giris($hata);
												}else{
												//sadece isim alani bos diye mesaj at
												//$hata="İsim bos Birakilamaz";
												echo "İsim bos Birakilamaz";
									            //$this->giris($hata);
												}
						}
				   	}
            
				
			
	 }

function reset($user,$key){
	 
	 //buraya şifre sifirlama sonrasi kontru burad ayapilacak...
	 if($this->user_model->vbcontrolad($user)==true){
					// buradan login yardimi ile kişinin tüm bilgilerini aliyorum
				
      		 $deger=$this->user_model->kisibilgisi($user); if(FIRELOG) flog($deger);
			 $this->mail->pass_reminder($deger['email'], $user, $deger['rev'] );

				  echo 'ok';
				}else{
					echo 'hata';
				}
                

}
function active($active){

	//aktive için kontroler gelecek..


}
 function changepassword(){  
				 $this->load->model('user_model');
				$user = $this->input->post('isim');


				if($this->user_model->vbcontrolad($user)==true){
					// buradan login yardimi ile kişinin tüm bilgilerini aliyorum
				
      			 $deger=$this->user_model->kisibilgisi($user); if(FIRELOG) flog($deger);
				 $this->mail->pass_reminder($deger['email'], $user, $deger['rev'] );

				  echo 'ok';
				}else{
					echo 'hata';
				}
                
               
				}
function main(){ 
			
			if(FIRELOG) flog("user mainin içinde");
			$servers= $this->config->item('servers');
		
			$qid = $_SESSION['login'];if(FIRELOG) flog($qid);
			
			//slider için yazilar gelecek
			$yazi1="merhaba orkun online hos geldininiz";
			$this->smarty->assign("yazi1",$yazi1);
			$yazi2="tekrar merhaba ikinci slidera da hosgeldiniz";
			$this->smarty->assign("yazi2",$yazi2);
			$yazi3="tekrar merhaba ucuncu slidera da hosgeldiniz";
			$this->smarty->assign("yazi3",$yazi3);

			$baslik1="HEDİYELER VE OSMAN ABİ..";
			$this->smarty->assign("baslik1",$baslik1);
			$baslik2="DAVETİYELER VE FIRSATLAR..";
			$this->smarty->assign("baslik2",$baslik2);
			$baslik3="DUYURULAR VE OYUN HAKINDA";
			$this->smarty->assign("baslik3",$baslik3);

			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);
			
			$deger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$deger["aap"]);

		//	$this->smarty->view('mainpage.tpl');
			if (!isset($_SESSION['login']) || $_SESSION != 1) {
				$this->smarty->view('mainpage.tpl');
				}
			
			
			
	 }

	 function profil(){

			$this->load->model('user_model');
	 		$this->load->model('gift_model');
	 		$qid = $_SESSION['login'];if(FIRELOG) flog($qid);
			//gravatar kullanimi burada başlar
	 		$kisibilgileri = $this->user_model->kisibilgisi($qid);
	 		$mail = $kisibilgileri["email"]; //buraya veri tabanindan kullanicinin emaili gelecek
            $mail = md5(trim(strtolower($mail))); // Boşlukları silip ardından md5 liyoruz. 
            $resim = "http://www.gravatar.com/avatar/".$mail;
            $this->smarty->assign('resim',$resim);
			// gravatar biter
        
			// burada tum puzzlarin ozellikleri alinacak
			$puzzlelar = $this->gift_model->puzzletr(); 

			$deger=$this->gift_model->damladegeral($qid);
		
			if ($kisibilgileri["arkadassayisi"]==null) {
				$this->smarty->assign('eklenti', 0);
			}else{
				$this->smarty->assign('eklenti', $kisibilgileri["arkadassayisi"]);
			}
			
			//$this->smarty->assign('normal',$deger["normal"]);
			//$this->smarty->assign('altin',$deger["altin"]);
			//$this->smarty->assign('cevirici',$deger["cevirici"]);
			
			$this->smarty->assign('normal',"çok yakinda ");
			$this->smarty->assign('altin',"çokı yakinda");
			$this->smarty->assign('cevirici',"çok yakinda");
	 	    $qid = $_SESSION['login'];if(FIRELOG) flog($qid);
			

	 	     $deger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$deger["aap"]);
	 	    $this->smarty->assign("name",$qid);
			$this->smarty->view('profil.tpl');

	 }

	 function giris($hata){
	 		session_destroy();
	 		$this->smarty->assign("demo",$hata);
	 		$this->smarty->view('girisdenem.tpl');
	 }

	 function veritabanikontrolad(){
	 	if(isSet($_POST['isim'])){

					$username = $_POST['isim'];

					// Buraya model gonder kodlarını ekliyoruz
					if($this->user_model->vbcontrolad($username)==true){
				echo '<span style="color: red;">Kullanilamaz</span>';
				}else{
					echo 'OK';
				}

			 }

	 }
	 	 function veritabanikontrolemail(){
	 	if(isSet($_POST['email'])){

					$mail = $_POST['email'];
					$deger="\"".$mail."\"";
					if(FIRELOG) flog($deger);
				//isim alani bos
					// Buraya model gonder kodlarını ekliyoruz
					if($this->user_model->vbcontrolemail($deger)==true){
				echo '<span style="color: red;">Kullanilamaz</span>';
				}else{
					echo 'OK';
				}


	 }
	}
/*  	function sendmail(){

 		$this->load->library("email");

 		$this->email->from("osman.sert@gmail.com","osman sert");//kimden gidecegi
 		$this ->email->to("deneme@gmail.com");//kime gidecegi
 		$this ->email->cc(array("deneme3@gmail.com","deneme2@gmail.com"));//gerekli kişiler birden fazla kişiye göndereceksek array kullanilir

 		$this ->email->subject("sadece bir deneme");
 		$this ->email->message("siteni konumuna girmek isterseniz gibi ");

 		$send = $this->email->send();
 		if($send){
			// mail gönderildi

 		}else{

 			// hatavar demektir
 		}
}*/

function  controlcode(){
		

		    $veri["user"] =$_SESSION['login'];
            $veri["giftcode"] = $this->input->post('code');
            

           if($veri["user"] != "" || $veri["giftcode"] != "" ){
           		if(strlen($veri["giftcode"])=='12'){
           			echo("hesapla");

           		}else{

           			echo("hesaplama");
           		}
				  if($this->gift_model->controlcode($veri)){
				  //isset($_SERVER['HTTP_REFERER']) ? redirect($_SERVER['HTTP_REFERER']) : redirect('/');
				  //$this->load->view('');
				  	echo("kaydedildi  <br/>");
				  	$this->yonlendir();
				  }else{

				  	echo("hata oluştu");
				  }
				   
			}else{
				   echo "Bos veri girilemez!";
				}
		
 		

 }
 function codekaydet(){
			$veri["newcode"] = $this->input->post('code');

			  if($veri["newcode"] != ""  ){
			           		if(strlen($veri["newcode"])=='12'){
			           			echo(" uzunluk uygun hesapla");

			           		}else{

			           			echo("hesaplama");
			           		}
							 
							   
						}else{
							   echo "Bos veri girilemez!";
							}

 }

 function aktivecontrol(){

				if (isset($_GET['email']) && preg_match('/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/', $_GET['email']))
				{
				    $email = $_GET['email'];
				}
				if (isset($_GET['key']) && (strlen($_GET['key']) == 32))//The Activation key will always be 32 since it is MD5 Hash
				{
				    $key = $_GET['key'];
				}


				if (isset($email) && isset($key))
				{

				    // Update the database to set the "activation" field to null

				    //$query_activate_account = "UPDATE members SET Activation=NULL WHERE(Email ='$email' AND Activation='$key')LIMIT 1";
					//couchdb update yapilacak
				   
				    //$result_activate_account = mysqli_query($dbc, $query_activate_account) ;

				    // Print a customized message:
				    if (mysqli_affected_rows($dbc) == 1)//if update query was successfull
				    {
				    return true;

				    } else
				    {
				       return false;

				    }

				  

				} else {
				       return false;
				}


 }

function trhkontrol(){
		  $this->load->model('gift_model');
          $son = $this->gift_model->kullanilanpuzzlevarmi($qid,$deger);//isimle degeri gondererek hangi puzzlelin kullandigini tespit eder
          if(FIRELOG) flog($son);
          $a = $this->gift_model->kullanilanpuzzlesayi($qid,$deger);//kullanilan puzzle sayisi
          if(FIRELOG) flog($a);

}
function davet(){ 
			
			$servers= $this->config->item('servers');
		
			$qid = $_SESSION['login'];
			
			$this->smarty->assign("name",$qid);
			
			$deger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$deger["aap"]);

			$this->smarty->assign('servers',$servers);
			$this->smarty->assign("mail","");
			$this->smarty->assign("adi","");
			$this->smarty->assign("mesaj","");
			$this->smarty->assign("hatamesaj","buraya kodu girerek kazanma sansinizi artira bilirsiniz.");
		
			
				$this->smarty->view('davet.tpl');
			
			
			
			
	 }

	
	 function hediyeler(){ 
			$this->load->model('gift_model');
			$servers= $this->config->item('servers');
			$se = 0;
			$qid = $_SESSION['login'];
			// burada tum puzzlarin ozellikleri alinacak
			$puzzlelar = $this->gift_model->puzzletr(); 
			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);
			$deger=$this->gift_model->damladegeral($qid);
			$this->smarty->assign('normal',$deger["normal"]);
			$this->smarty->assign('normalmesaj',"");
			$this->smarty->assign('altin',$deger["altin"]);
			$this->smarty->assign('altinmesaj',"");
			$this->smarty->assign('cevirici',$deger["cevirici"]);
			$this->smarty->assign('ceviricimesaj',"");

	          $aapdeger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$aapdeger["aap"]);
		 //  $puzzle=$this->gift_model->puzzletr();
		   //if(FIRELOG) flog($puzzle);
		  

		// puzzle ile ilgili islemler burada yapilir
		  $deger=$this->gift_model->puzzledegeral();//tum puzzle isimlerini al
          if(FIRELOG) flog($deger);
        
          $son = $this->gift_model->kullanilanpuzzlevarmi($qid,$deger);//isimle degeri gondererek hangi puzzlelin kullandigini tespit eder
          if(FIRELOG) flog($son);
          $a = $this->gift_model->kullanilanpuzzlesayi($qid,$deger);//kullanilan puzzle sayisi
          if(FIRELOG) flog($a);
          for ($i=0; $i < $a; $i++) { 
                    if(FIRELOG) flog($son[$i]["adi"]);//kullanilan puzzlelar
                     $adlar[$i]=$son[$i]["adi"];
          }
		  for ($i=0; $i <$a; $i++) { //tum ozellikleri al
		  		$tmsonuc[$i]= $this->gift_model->genel($adlar[$i]); // verilen puzzle tum ozellikleri burada olur..
		  		 if(FIRELOG) flog($tmsonuc[$i]["songun"]);
		  		 if(FIRELOG) flog($tmsonuc[$i]["kolaylik"]);
		  		 $en[$i]=$tmsonuc[$i]["en"];
		  		 $boy[$i]=$tmsonuc[$i]["boy"];
		  		 $denemeler[$i]=$tmsonuc[$i]["songun"];
		  		 
		  }
			  $this->smarty->assign("en",$en);
			  $this->smarty->assign("boy",$boy);
			  $this->smarty->assign("trh",$denemeler); if(FIRELOG) flog($denemeler);


		  for ($i=0; $i <$a; $i++) { 
		  		$tmhediyesonuc[$i]= $this->gift_model-> puzzletmdegeral($qid,$son[$i]["adi"]); // hediye olarak kazanilan tum parçalari çekiyor	  		
		  		 }
		  		 $this->smarty->assign("tmhediyesonuc",$tmhediyesonuc);
		//------bitis-----------

		  	
			$this->smarty->assign('sayi',$a);//kactane puzzle ekrana basilmasi gerektigini yazacak..
			//$this->smarty->assign('sonuc',$puzzle);
			$this->smarty->assign("tmpzzl",$tmsonuc);
			$this->smarty->assign("ad",$adlar);
			$this->smarty->view('hediyeler.tpl');
			
	 }

	 function damlalar(){ 
			$this->load->model('gift_model');
			$qid = $_SESSION['login'];
	
			$deger=$this->gift_model->damladegeral($qid);
			$this->smarty->assign('normal',$deger["normal"]);
			$this->smarty->assign('normalmesaj',"");
			$this->smarty->assign('altin',$deger["altin"]);
			$this->smarty->assign('altinmesaj',"");
			$this->smarty->assign('cevirici',$deger["cevirici"]);
			$this->smarty->assign('ceviricimesaj',"");

	        $aapdeger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$aapdeger["aap"]);
	
			$this->smarty->view('damla.tpl');
			
	 }
	  function puzzledeger(){
	     	$user = $_SESSION['login'];
		   $this->load->model('gift_model');
        	
          $deger=$this->gift_model->puzzledegeral();//tum puzzle isimlerini al
          if(FIRELOG) flog($deger);
        
          $son = $this->gift_model->kullanilanpuzzlevarmi($user,$deger);//isimle degeri gondererek hangi puzzlelin kullandigini tespit eder
          if(FIRELOG) flog($son);
          $a = $this->gift_model->kullanilanpuzzlesayi($user,$deger);//kullanilan puzzle sayisi
          if(FIRELOG) flog($a);
          for ($i=0; $i < $a; $i++) { 
                    if(FIRELOG) flog($son[$i]["adi"]);//kullanilan puzzlelar

	      }

	}

			function lnk($isim){

			  $this->smarty->assign("davetsayisi","5.");
			  $this->smarty->assign("kimdengeldi",$isim);
			  $this->smarty->view('davetiye.tpl');

			}

	function acikartirma(){

			//buradan ilk olarak acik artirmada verilecek hediyenin ozellikleri cekilir..
	 		// ismi, gercek fiyati , tarih gelir..
			date_default_timezone_set('Europe/Istanbul');
			$qid = $_SESSION['login'];
			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);
			$this->load->model('acikartirma_model');
			$deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);

			// birinici acik artirma icin saatler...
			$starih = $deger["1"]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
			$this->smarty->assign("tmbir",$starih);
			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.
			if(FIRELOG) flog(date("H:i:s",$starih));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff = $starih - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat =  floor($diff/3600);if(FIRELOG) flog($saat);
  			$dakika = floor(($diff%3600 )/60 );if(FIRELOG) flog($dakika);
  			$saniye=$diff%60; if(FIRELOG) flog($saniye);

			$this->smarty->assign("saatbir",$saat);
			$this->smarty->assign("dakikabir",$dakika);
			$this->smarty->assign("saniyebir",$saniye);
			$adi1= $deger["1"]["adi"];if(FIRELOG) flog($adi1);
			$this->smarty->assign("hediyeadibir",$adi1);
			$this->smarty->assign('fiyatbir',$deger["1"]["fiyat"]);if(FIRELOG) flog($deger["1"]["fiyat"]);
		    $this->smarty->assign('talepolankisibir',$deger["1"]["talipolan"]);if(FIRELOG) flog($deger["1"]["talipolan"]);
		    $this->smarty->assign('simdikifiyatbir',$deger["1"]["simdikifiyat"]);if(FIRELOG) flog($deger["1"]["simdikifiyat"]);
			//bitiş yeri


			// ikinci acik artirma icin saatler...
			$starih2 = $deger["2"]["starih"];if(FIRELOG) flog($starih2);//serverin nson tarihi
			
			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.
			if(FIRELOG) flog(date("H:i:s",$starih2));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff2 = $starih2 - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat2 =  floor($diff2/3600);if(FIRELOG) flog($saat2);
  			$dakika2 = floor(($diff2%3600 )/60 );if(FIRELOG) flog($dakika2);
  			$saniye2=$diff2%60; if(FIRELOG) flog($saniye2);

			$this->smarty->assign("saatiki",$saat2);
			$this->smarty->assign("dakikaiki",$dakika2);
			$this->smarty->assign("saniyeiki",$saniye2);
			$adi2= $deger["2"]["adi"];if(FIRELOG) flog($adi2);
			$this->smarty->assign("hediyeadiiki",$adi2);
			$this->smarty->assign('fiyatiki',$deger["2"]["fiyat"]);if(FIRELOG) flog($deger["2"]["fiyat"]);
		    $this->smarty->assign('talepolankisiiki',$deger["2"]["talipolan"]);if(FIRELOG) flog($deger["2"]["talipolan"]);
		    $this->smarty->assign('simdikifiyatiki',$deger["2"]["simdikifiyat"]);if(FIRELOG) flog($deger["2"]["simdikifiyat"]);
			//bitiş yeri


			// ucuncu acik artirma icin saatler...
			$starih3 = $deger["3"]["starih"];if(FIRELOG) flog($starih3);//serverin nson tarihi
			
			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.
			if(FIRELOG) flog(date("H:i:s",$starih3));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff3 = $starih3 - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat3 =  floor($diff3/3600);if(FIRELOG) flog($saat3);
  			$dakika3 = floor(($diff3%3600 )/60 );if(FIRELOG) flog($dakika3);
  			$saniye3=$diff3%60; if(FIRELOG) flog($saniye3);

			$this->smarty->assign("saatuc",$saat3);
			$this->smarty->assign("dakikauc",$dakika3);
			$this->smarty->assign("saniyeuc",$saniye3);
			$adi3= $deger["3"]["adi"];if(FIRELOG) flog($adi3);
			$this->smarty->assign("hediyeadiuc",$adi3);
			$this->smarty->assign('fiyatuc',$deger["3"]["fiyat"]);if(FIRELOG) flog($deger["3"]["fiyat"]);
		    $this->smarty->assign('talepolankisiuc',$deger["3"]["talipolan"]);if(FIRELOG) flog($deger["3"]["talipolan"]);
		    $this->smarty->assign('simdikifiyatuc',$deger["3"]["simdikifiyat"]);if(FIRELOG) flog($deger["3"]["simdikifiyat"]);
			//bitiş yeri

			// dort acik artirma icin saatler...
			$starih4 = $deger["4"]["starih"];if(FIRELOG) flog($starih4);//serverin nson tarihi
			
			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.
			if(FIRELOG) flog(date("H:i:s",$starih4));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff4 = $starih4 - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat4 =  floor($diff4/3600);if(FIRELOG) flog($saat4);
  			$dakika4 = floor(($diff4%3600 )/60 );if(FIRELOG) flog($dakika4);
  			$saniye4=$diff4%60; if(FIRELOG) flog($saniye4);

			$this->smarty->assign("saatdrt",$saat4);
			$this->smarty->assign("dakikadrt",$dakika4);
			$this->smarty->assign("saniyedrt",$saniye4);
			$adi4= $deger["4"]["adi"];if(FIRELOG) flog($adi4);
			$this->smarty->assign("hediyeadidrt",$adi4);
			$this->smarty->assign('fiyatdrt',$deger["4"]["fiyat"]);if(FIRELOG) flog($deger["4"]["fiyat"]);
		    $this->smarty->assign('talepolankisidrt',$deger["4"]["talipolan"]);if(FIRELOG) flog($deger["4"]["talipolan"]);
		    $this->smarty->assign('simdikifiyatdrt',$deger["4"]["simdikifiyat"]);if(FIRELOG) flog($deger["4"]["simdikifiyat"]);
			//bitiş yeri

			// ucuncu acik artirma icin saatler...
			$starih5 = $deger["5"]["starih"];if(FIRELOG) flog($starih5);//serverin nson tarihi
			
			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.
			if(FIRELOG) flog(date("H:i:s",$starih5));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff5 = $starih5 - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat5 = floor($diff5/3600);if(FIRELOG) flog($saat5);
  			$dakika5 = floor(($diff5%3600 )/60 );if(FIRELOG) flog($dakika5);
  			$saniye5=$diff5%60; if(FIRELOG) flog($saniye5);

			$this->smarty->assign("saatbes",$saat5);
			$this->smarty->assign("dakikabes",$dakika5);
			$this->smarty->assign("saniyebes",$saniye5);
			$adi5= $deger["5"]["adi"];if(FIRELOG) flog($adi5);
			$this->smarty->assign("hediyeadibes",$adi5);
			$this->smarty->assign('fiyatbes',$deger["5"]["fiyat"]);if(FIRELOG) flog($deger["5"]["fiyat"]);
		    $this->smarty->assign('talepolankisibes',$deger["5"]["talipolan"]);if(FIRELOG) flog($deger["5"]["talipolan"]);
		    $this->smarty->assign('simdikifiyatbes',$deger["5"]["simdikifiyat"]);if(FIRELOG) flog($deger["5"]["simdikifiyat"]);


		    $deger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$deger["aap"]);
			//bitiş yeri


			 $dosya = fopen("dosya.txt","r"); // bu dosynin içine bak
      		 while(!feof($dosya))
              {
                  $satir = fgets($dosya, 255);if(FIRELOG) flog($satir);// dosyayi oku..
              }
              $this->smarty->assign('randomdeger',$satir);
		   // $this->smarty->view('acikdeneme.tpl');
			 $this->smarty->view('aciklama.tpl');
		

	}	
	/* function acikartirma(){ 
			
			//buradan ilk olarak acik artirmada verilecek hediyenin ozellikleri cekilir..
	 		// ismi, gercek fiyati , tarih gelir..
			
			date_default_timezone_set('Europe/Istanbul');
			$qid = $_SESSION['login'];
			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);

			//saat ve dakika  saniye almak için kullanilir.

				$this->load->model('acikartirma_model');
		        $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);
			    $starih = $deger["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi

			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.

    	   
			if(FIRELOG) flog(date("H:i:s",$starih));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff = $starih - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat =  floor($diff/3600);if(FIRELOG) flog($saat);
  			$dakika = floor(($diff%3600 )/60 );if(FIRELOG) flog($dakika);
  			$saniye=$diff%60; if(FIRELOG) flog($saniye);

			$this->smarty->assign("saat",$saat);
			$this->smarty->assign("dakika",$dakika);
			$this->smarty->assign("saniye",$saniye);
			//bitiş yeri
				


			$deger=$this->gift_model->appdegeral($qid);//acik artirma puanini ogrenmeye yarar.
			$this->smarty->assign("aap",$deger["aap"]);

			//acik artirma bölümüne ilk olarak gerekliv veri almam gerekli bunlar benim için gerekli olan ürünün adi,ürünün fiyati 
			//ürünün artiştan sonraki fiyati.son olarakta son talepte bulunan kişi..
			 $this->smarty->assign('fiyat',$deger["fiyat"]);
		     $this->smarty->assign('talepolankisi',$deger["talipolan"]);
		     $this->smarty->assign('simdikifiyat',$deger["simdikifiyat"]);
		
			
			$this->smarty->view('acikdeneme.tpl');

		}	*/
	function arkadas(){ 
			
			$servers= $this->config->item('servers');
		
			$qid = $_SESSION['login'];
			
			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);
		
			if (!isset($_SESSION['login']) || $_SESSION != 1) {
				$this->smarty->view('arkadas.tpl');
				}
		 }


	 function referans(){ 
			
			$servers= $this->config->item('servers');
		
			$qid = $_SESSION['login'];
			
			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);
		
			if (!isset($_SESSION['login']) || $_SESSION != 1) {
				$this->smarty->view('referanslar.tpl');
				}
			
			
			
	 }
			
	 
}
