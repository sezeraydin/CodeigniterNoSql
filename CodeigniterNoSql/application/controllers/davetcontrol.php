

<?php

class Davetcontrol extends CI_Controller
{


		public function __construct()
       {
        parent::__construct();
    
        $this->load->model('user_model');
        $this->load->model('gift_model');
        $this->load->model('davet_model');
        $this->load->model('uret_model');
     	$this->load->model('yukleme_model');

       }
		function index(){
			echo "bye bye world";
		}

		
	function normaldamlacevir(){
		     $this->load->model('gift_model');
		     $user = $_SESSION['login'];if(FIRELOG) flog($user);
		    $deger= $this->gift_model->normaldamlacevir($user);
		    if($deger==true){
		    		if(FIRELOG) flog("-davetcontrol-damla cevrildi.");
		    		$this->smarty->assign('normalmesaj',"TEBRİKLER!! Normal Damla AAP Donusturuldu.");
		    		redirect('/user/damlalar');
		    }else{
		    		if(FIRELOG) flog("-davetcontrol- hata olustu.");
		    		$this->smarty->assign('normalmesaj',"TEBRİKLER!! Normal Damla AAP Donusturuldu.");
		    		redirect('/user/damlalar');
		    }
	}
	function ceviricidamlacevir(){
		     $this->load->model('gift_model');
		     $user = $_SESSION['login'];if(FIRELOG) flog($user);
		    $deger= $this->gift_model->ceviricidamlacevir($user);
		    if($deger==true){
		    		if(FIRELOG) flog("-davetcontrol-damla cevrildi.");
		    		$this->smarty->assign('ceviricimesaj',"TEBRİKLER!! Ceviri Damla AAP Donusturuldu.");
		    		redirect('/user/damlalar');
		    }else{
		    		if(FIRELOG) flog("-davetcontrol- hata olustu.");
		    		$this->smarty->assign('ceviricimesaj',"TEBRİKLER!! Ceviri Damla AAP Donusturuldu.");
		    		redirect('/user/damlalar');
		    }
	}
    function altindamlacevir(){
		     $this->load->model('gift_model');
		     $user = $_SESSION['login'];if(FIRELOG) flog($user);
		    $deger= $this->gift_model->altindamlacevir($user);
		    if($deger==true){
		    		if(FIRELOG) flog("-davetcontrol-damla cevrildi.");
		    		$this->smarty->assign('altinmesaj',"TEBRİKLER!! Altin Damla AAP Donusturuldu.");
		    		redirect('/user/damlalar');
		    }else{
		    		if(FIRELOG) flog("-davetcontrol- hata olustu.");
		    		$this->smarty->assign('altinmesaj',"HATA OLUSTU..");
		    		redirect('/user/damlalar');
		    }
	}
	
	function hediyeler(){ 
			 $this->load->model('gift_model');
			$servers= $this->config->item('servers');
		
			$qid = $_SESSION['login'];
			
			$this->smarty->assign("name",$qid);
			$this->smarty->assign('servers',$servers);
			$deger=$this->gift_model->damladegeral($qid);
			$this->smarty->assign('normal',$deger["normal"]);
			$this->smarty->assign('altin',$deger["altin"]);
			$this->smarty->assign('cevirici',$deger["cevirici"]);
			$this->smarty->view('hediyeler.tpl');
			
			
			
			
	 }
  	function controlcode(){
		
		   $this->load->model('gift_model');
		   $this->load->model('user_model');

		   $kisi = $_SESSION['login'];if(FIRELOG) flog($kisi);
		   $this->smarty->assign("name",$kisi);

		   $aappuan=$this->gift_model->appdegeral($kisi);//acik artirma puanini ogrenmeye yarar.
		   $this->smarty->assign("aap",$aappuan["aap"]);if(FIRELOG) flog($aappuan);if(FIRELOG) flog($aappuan["aap"]);

		   $code = $this->input->post('code');if(FIRELOG) flog($code);
		 
			 if($code != "" ){// kodu tekrar kontrol et bos mu degil mi diye 
			
				 	if($this->uret_model->varmi($code)==true){//uretilen veritabaninda boyle bir kod var mi diye bakilir
				 		
				 			if($this->yukleme_model->varmi($code)==true){//kod kullanilip kullanilmadigina bakiyor
				 				//eger varsa hata ver
				 				if(FIRELOG) flog("-controlcode- Bu kod kullanılmıştır.");
				 				$this->smarty->assign("hatamesaj","Bu Kod kullanilmiş");
               			        $this->smarty->view('davet.tpl');
				 			}else{
				 				//yoksa kodkullanildi kısmına ekle 
				 				if(FIRELOG) flog("-controlcode- Bu kod kullanilmamiştir.");
				 				 $this->yukleme_model->kaydet($code,$kisi);//kod ekleme
				 				
				 				 //eger kod kaydendiyse arkadas sayisida artirilir.
				 				 $this->gift_model->arkadassayisiartir($kisi);
				 				  if(FIRELOG) flog("puan artirmaya gidiliyor...");
				 				 $this->puanartir();//puan artir fonksiyonuna git
				 				 

				 			}
				 	}else{
				 		if(FIRELOG) flog("-controlcode- Boyle bir kod yok.");
				 		$this->smarty->assign("hatamesaj"," Gecersiz kod.Tekrar deneyiniz!!!");
               			$this->smarty->view('davet.tpl');
				 	}

			}else{

				if(FIRELOG) flog("-controlcode-Bos veri girilemez.");
				$this->smarty->assign("hatamesaj"," Bos veri girilemez!!!");
               	$this->smarty->view('davet.tpl');
				}
	 }


function puanartir(){
		//
	/*
	* puan artirma şu sekilde olur
	* randomdan 4 sayi seçilir
	*	 eger sacilen sayi 1 ise hediyeyi puzzle olarak karar ver. veritabanina puzzle bolumune ekle usernamme ve  puzzle olarak ekle
	*	puzzle bolumunde de tum turleri al. ama sadece şimdilik LİGER yeter.
	*
	*	eger 2 secilirse damla olarak eklenecek ve kullaniciya damla eklendi diye soylenecek
	*	üç damla turu olacak buradanda raskele eklenecek.
	*
	*/
	$sahis = $_SESSION['login'];
	if(FIRELOG) flog("-sahis- :".$sahis);
	$deger= rand(1,2);
	if(FIRELOG) flog($deger);
					if ($deger=='1') {

						if(FIRELOG) flog("burada davet controlun içinde ");
						$kamp = $this->gift_model->kampanyavarmi();if(FIRELOG) flog($kamp);
						
						if ($kamp=='0') {//kampanya yok
							//burada herhangi bir kampanya yoksa buradaki işlemler yapilir..
							if(FIRELOG) flog("- davet control  kampansiz puzzzle ekleme- .");
							$ksizps = $this->gift_model->kampanyasizpuzzlesayi();if(FIRELOG) flog($ksizps);//kaçtane kampanya oldugunda gosterir
							$puzzleturu= rand(1,$ksizps);if(FIRELOG) flog($puzzleturu);//random edilir direk eklenir
							//kampanya olmayanlarin kolayliklarini toplar işlem yapar
							if(FIRELOG) flog($puzzleturu);
						//BURAYA RANDOM SIRASINDA SECİLEN PUZZLE İSİM BİLE BİRLİKTE EKLENECEK
						$this->gift_model->kpsizpuzzleekle($sahis,$puzzleturu);
						
						}else{
							// eger kapmanya varsa hem puzzle yüklenilir hemde kampanyasiz puzzle yuklenilir.
								
						if(FIRELOG) flog("- davet control - kampanya puzzzle ekleme- .");
						
							$kps = $this->gift_model->kampanyasizpuzzlesayi();// burada kampanyaasiz puzzle sayisi ögrenilir çünkü kpsiz da eklenecek.
							if(FIRELOG) flog($kps);
							$puzzleturu= rand(1,$kps);//random edilir direk eklenir
							//kampanya olanlari kolayliklarini toplar. ve rastgele işlem yapar
							if(FIRELOG) flog($puzzleturu);
							//BURAYA RANDOM SIRASINDA SECİLEN PUZZLE İSİM BİLE BİRLİKTE EKLENECEK
							$this->gift_model->kolayliksonuc($sahis,$puzzleturu);
							//$this->gift_model->kpsizpuzzleekle($sahis,$puzzleturu);
							$this->smarty->assign("hatamesaj","TEBRİKLER!!  Puzzle Eklendi");
							$this->smarty->view('davet.tpl');//?? duruma göre çikartila bilir.
						
						}
						

					}else if ($deger=='2') {
						//sadece puan eklenecek
						$deger=20;
						$this->gift_model->puanekle($sahis,$deger);
						$this->smarty->assign("hatamesaj","TEBRİKLER!! Acik Artirma puani kazandiniz..");
						$this->smarty->view('davet.tpl');

					}else if ($deger=='3') {
						
						$damladeger= rand(1,3);
						if(FIRELOG) flog("-sahis- :".$sahis);
						$this->gift_model->damlahediye($sahis,$damladeger);
						if ($damladeger==1) {
							$this->smarty->assign("hatamesaj","TEBRİKLER!! Cevirici damla kazandiniz");
						}else if ($damladeger==2) {
							$this->smarty->assign("hatamesaj","TEBRİKLER!!  Altin damla kazandiniz ");
						}else if ($damladeger==3){
							$this->smarty->assign("hatamesaj","TEBRİKLER!!  Normal damla kazandiniz");
						}
						
               			$this->smarty->view('davet.tpl');

					}else if ($deger=='4') {
						//toplam arkadaş sayisina bakilir.
						//eger 10dan fazla ise bir item verilir
						//bunun için admine mesaj atilir
						//degilse puzzle verilir
						$this->smarty->assign("hatamesaj","TEBRİKLER!! İtem kazandiniz..");
						$this->smarty->view('davet.tpl');

					}

}

	function arkadavet(){
	   		if(FIRELOG) flog("buradayim ");
 				$veri["login"] = $this->input->post('username');if(FIRELOG) flog("login name: ".$veri["login"]);
                $veri["mail"]  = $this->input->post('email');if(FIRELOG) flog("mail : ".$veri["mail"]);
                $veri["mesaj"] = $this->input->post('address');if(FIRELOG) flog("mesaj : ".$veri["mesaj"]);

              if($veri["login"] != "" ){
              	//name kısmı bos degilse 
              	if ($veri["mail"] != "") {
               	//mail kısmı bos degilse
              		$sonuc=$this->davet_model->register($veri);
	              		if ($sonuc==true) {
	              			$this->mail->gift_code($veri["email"],$veri);
	              			$this->smarty->assign("mesaj","işlem başarili bir şekilde gerçekleriştirildi, Arkadaşindan kodu isteyebilirsin");
               				$this->smarty->view('davet.tpl');
	              		}else{
	              			$this->smarty->assign("mesaj","bu kişiye onceden gonderilmiş veya eksik giriş yaptiniz");
               				$this->smarty->view('davet.tpl');
	              		}
				}else{
               	//sadece mail bos ise 
               	$this->smarty->assign("mail","mail bos giriliemez");
               	$this->smarty->view('davet.tpl');
               }
              }else{
              	//mail bos ise
              	if ($veri["mail"] == "") {
               	//mail bos ise
              	$this->smarty->assign("mail","mail bos giriliemez");
				$this->smarty->assign("adi"," adi bos girilemez ");
				$this->smarty->view('davet.tpl');
               }
              	 $this->smarty->assign("adi"," adi bos girilemez ");
				$this->smarty->view('davet.tpl');
              }
             
}
}
