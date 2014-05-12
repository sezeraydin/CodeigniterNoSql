<?php

class Uret_Kontrol extends CI_Controller
{
	public function __construct()
       {
        parent::__construct();
       
    
       }
		function index(){
			echo "bye bye world";
		} 

function  kontrol(){
		 $this->load->model('yabancilog_model');
		 $this->load->model('uret_model');
        if(FIRELOG) flog("-uret kontrol- kontrol fonksiyonu içinde deger gondermeden once");

        //$sonuc=true;
        $ip="sevgi";
       // $ip = $_SERVER['REMOTE_ADDR'];
		$sonuc = $this->yabancilog_model->yabanciloglama();//log varmi yok mu ona bakar. eger varsa saati kontol eder. 18 geçmişse true degeri dondurur. aksi halde false degeri gelir.
   		if(FIRELOG) flog($sonuc);
		$eski = $this->uret_model->eskikod($ip); if(FIRELOG) flog($eskideger);
        if(FIRELOG) flog("-uret kontrol- kontrol fonksiyonu içinde deger gonderdikten sonra");
		if ($sonuc==true) {
			//sonuc true geldiginde zaman geçmiş veya logla ilgili bir işlem yok manasina gelir o zaman kod uretile bilir.
			if(FIRELOG) flog("-uret kontrol- kontrol fonksiyonu kod uret talimati veriyor");
			echo("koduret");
			}else{
				if(FIRELOG) flog("-uret kontrol- kontrol fonksiyonu kod uretme talimati veriyor");
			 echo("18 saat sonra kod uretilecektir.şimdi var olan kodu kullan : ".$eski);
			}
 }

 function kodvtekle(){
 			//uretilen kodu veri tabanimiza ekliyoruz
 			//ip zaman ve kod olarak eklenecektir.
 	if(FIRELOG) flog("-uret kontrol- kodvtekle fonksiyonu içinde deger gondermeden once");
			$kod = $_POST['isim'];if(FIRELOG) flog($kod);
			$putit = array(
				"zaman"=> $_SERVER['REQUEST_TIME'],
				"ip"=>"sevgi" //$_SERVER['REMOTE_ADDR']
				);
			if(FIRELOG) flog($putit);
			$this->load->model('uret_model');
			$this->load->model('yabancilog_model');
			$sonuc = $this->uret_model->uretekle($kod);
			$son=$this->yabancilog_model->yeniyabancilog($putit);//burada gelen ip için loglama yapilir.
			 if(FIRELOG) flog($sonuc);
			//$sonuc = true;
			if ($sonuc==true) {
					if ($son==true) {
						echo $kod;
					}else{
						echo " zaman problemi var sanirim";
					}
				
				
			}else{

				echo "hata var be ya";
			}
            



 }

}
