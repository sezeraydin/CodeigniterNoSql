<?php

class Acikartirma_Controler extends CI_Controller
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

function aasyenile(){
date_default_timezone_set('Europe/Istanbul');
	   //  $this->load->model('acikartirma_model');
     // $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);
   if(FIRELOG) flog("zaman konrtol ediliyoır...");
      //$gelendeger = $_POST["isim"];
      //$gelenzaman = $_POST["gelenzaman"];//gelen zaman saniyte cinsinden olacak.
      //dosydaki zamani alacak şindiki saatten çikaracak onuda saniyeye çevirecek. gelen zaman degeri ile karşilaştiracak.
      //if(FIRELOG) flog($gelenzaman);
      /*
      if ($gelendeger=="bir") {
      	$sayi =1 ;
      	$dosya = fopen("dosya1.txt","r"); // bu dosynin içine bak
      }else if ($gelendeger=="iki") {
      	$sayi =2 ;
      	$dosya = fopen("dosya2.txt","r"); // bu dosynin içine bak
      }else if ($gelendeger=="uc") {
      	$sayi =3 ;
      	$dosya = fopen("dosya3.txt","r"); // bu dosynin içine bak
      }else if ($gelendeger=="drt") {
      	$sayi =4 ;
      	$dosya = fopen("dosya4.txt","r"); // bu dosynin içine bak
      }else if ($gelendeger=="bes") {
      	$sayi =5 ;
      	$dosya = fopen("dosya5.txt","r"); // bu dosynin içine bak
      }
       //$starih = $deger[$sayi]["starih"]; if(FIRELOG) flog($starih);//açik artirmadaki ilk veriyi aldik. bu veritabaninda kaydolan saat. yani teklifin biteceği saat.
      // $dene3 = date("H:i:s",$starih);if(FIRELOG) flog($dene3);
       */
        $gelendeger1 = $_POST["bir"];if(FIRELOG) flog($gelendeger1);
      
 $dosya = fopen("dosya.txt","r"); // bu dosynin içine bak
       while(!feof($dosya))
              {
                  $satir = fgets($dosya, 255);if(FIRELOG) flog($satir);// dosyayi oku..
                      if ($satir==$gelendeger1) {
                              echo "kalsin"; 
                              if(FIRELOG) flog("kalsin zaman ");
                      }else{
                            echo "ok";
                            if(FIRELOG) flog("zaman  farkli");
                      }

               /*   $simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
                  if(FIRELOG) flog(date("H:i:s",$simdikisaat));
                  $diff = $satir - $simdikisaat;// aradaki saniye farki :)
                 if(FIRELOG) flog($diff);
                  $saat =  floor($diff/3600);if(FIRELOG) flog($saat);
                  $dakika = floor(($diff%3600 )/60 );if(FIRELOG) flog($dakika);
                 

                //  $zaman=($saat*3600 )+($dakika*60 )+($saniye*1);if(FIRELOG) flog($zaman);
                  $gelenzamansaat =  floor($gelenzaman/3600);if(FIRELOG) flog($gelenzamansaat);
                  $gelenzamandakika = floor(($gelenzaman%3600 )/60 );if(FIRELOG) flog($gelenzamandakika);
                  if ($diff > 0) {
                      if ($saat==$gelenzamansaat) {
                        if(FIRELOG) flog("saatler eşit");
                                if ($dakika==$gelenzamandakika) {
                                 echo "degistirme";
                                   if(FIRELOG) flog("dakikalarda  eşit");
                                }else{
                                   echo "ok";
                                     if(FIRELOG) flog("dakikalar eşit degil");
                                }
                          
                          }else{
                              if(FIRELOG) flog("saatler eşit degil");
                           echo "ok";
                          }
                  }else{
                    if(FIRELOG) flog("açik artirma zamani geçmiş ");
                      echo "degistirme";
                   }
                   */

             }

        fclose($dosya);


}
 function dosyadeger(){

      $dosya = fopen("dosya.txt","r"); // bu dosynin içine bak
       while(!feof($dosya))
              {
                  $satir = fgets($dosya, 255);if(FIRELOG) flog($satir);// dosyayi oku..
                      echo $satir;
              }

 }
function yenizaman(){
date_default_timezone_set('Europe/Istanbul');

	  $this->load->model('acikartirma_model');
      $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);

      $gelendeger = $_POST["isim"];

      if ($gelendeger=="bir") {
      	$sayi =1 ;
      	
      }else if ($gelendeger=="iki") {
      	$sayi =2 ;
      	
      }else if ($gelendeger=="uc") {
      	$sayi =3 ;
      	
      }else if ($gelendeger=="drt") {
      	$sayi =4 ;
      
      }else if ($gelendeger=="bes") {
      	$sayi =5 ;
      
      }

            $starih = $deger[$sayi]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi //açik artirmadaki ilk veriyi aldik. bu veritabaninda kaydolan saat. yani teklifin biteceği saat.
			 //ekranda başlatilaacak saat: serverda bulunan saat ile o anki saatin farkinin degerleri olacak.
			if(FIRELOG) flog(date("H:i:s",$starih));
  			$simdikisaat = strtotime("now");if(FIRELOG) flog($simdikisaat);
  			if(FIRELOG) flog(date("H:i:s",$simdikisaat));
  			$diff = $starih - $simdikisaat;// aradaki saniye farki :)
  			
  			$saat =  floor($diff/3600);if(FIRELOG) flog($saat);
  			$dakika = floor(($diff%3600 )/60 );if(FIRELOG) flog($dakika);
  			$saniye=$diff%60; if(FIRELOG) flog($saniye);

  			$zaman=($saat*3600 )+($dakika*60 )+($saniye*1)+1;
  

     echo $zaman;


}
function tekliftoplami($user){
  
    $this->load->model('acikartirma_model');
    $toplam=0;
    $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);

    for ($i=1; $i < 6 ; $i++) {
        if ($user== $deger[$i]["talipolan"]){
         $toplam = $toplam + $deger[$i]["simdikifiyat"];
        }
    }

     return $toplam; 
}

function aapkatil(){

  if(FIRELOG) flog("teklif veriliyorr");
	  date_default_timezone_set('Europe/Istanbul');
	  $this->load->model('gift_model');
    $this->load->model('acikartirma_model');
 if(FIRELOG) flog("açik artirma controıler  -- - teklif veriliyor");
    $qid = $_SESSION['login']; if(FIRELOG) flog($qid);


       $gelendeger = $_POST["isim"];
       $dosyayagidecek = $_POST["degeri"];

       if(FIRELOG) flog("acik artirmaya verilecek...");
       $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);

       if(FIRELOG) flog("gelen sonuc..");
      //burada kullanicini puanina bakilir bir daha
      //burada kullanicinin sahip olduğu aapuan gelir.
      $sahipoldugupuan = $this->gift_model->tmkisibilgisi($qid);if(FIRELOG) flog($sahipoldugupuan);
      $teklifpuantoplam = $this->tekliftoplami($qid);
if(FIRELOG) flog("işlemler devam ediyor");
      if ($sahipoldugupuan > $teklifpuantoplam)  {
       //teklif verilebilir
      if(FIRELOG) flog(" teklifler karşilaştiriliyor...");
           //veritabaninda hediye ile ilgili tüm ozellikleri cekiyoruz
            //ondan sonra bize gerekli olan sonalan alarak ikinci arrayya atiyoruz
             //boylece kimlerin talip oldugunu takip edebiliyoruz.
       
          if ($gelendeger=="bir") {
            $starih = $deger["1"]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
            $simdikifiyat = $deger["1"]["simdikifiyat"];if(FIRELOG) flog($simdikifiyat);//serverin nson tarihi
            $talipolan = $deger["1"]["talipolan"];if(FIRELOG) flog($talipolan);//talip olan
            $aapadi=$deger["1"]["adi"];if(FIRELOG) flog($aapadi);//aap adi
            $gsayi="bir";

           if(FIRELOG) flog("gelen deger bir");

           }else if ($gelendeger=="iki") {
            $starih = $deger["2"]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
            if(FIRELOG) flog("gelen deger iki");
            $simdikifiyat = $deger["2"]["simdikifiyat"];if(FIRELOG) flog($simdikifiyat);//serverin nson tarihi
            $talipolan = $deger["2"]["talipolan"];if(FIRELOG) flog($talipolan);//talip olan
            $aapadi=$deger["2"]["adi"];if(FIRELOG) flog($aapadi);//aap adi
            $gsayi="iki";

           }else if ($gelendeger=="uc") {
            $starih = $deger["3"]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
            if(FIRELOG) flog("gelen deger uc");
            $simdikifiyat = $deger["3"]["simdikifiyat"];if(FIRELOG) flog($simdikifiyat);//serverin nson tarihi
            $talipolan = $deger["3"]["talipolan"];if(FIRELOG) flog($talipolan);//talip olan
            $aapadi=$deger["3"]["adi"];if(FIRELOG) flog($aapadi);//aap adi
            $gsayi="uc";

           }else if ($gelendeger=="dort") {
            $starih = $deger["4"]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
            if(FIRELOG) flog("gelen deger dort");
            $simdikifiyat = $deger["4"]["simdikifiyat"];if(FIRELOG) flog($simdikifiyat);//serverin nson tarihi
            $talipolan = $deger["4"]["talipolan"];if(FIRELOG) flog($talipolan);//talip olan
            $aapadi=$deger["4"]["adi"];if(FIRELOG) flog($aapadi);//aap adi
            $gsayi="drt";

           }else if ($gelendeger=="bes") {
            $starih = $deger["5"]["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
            if(FIRELOG) flog("gelen deger bes");
            $simdikifiyat = $deger["5"]["simdikifiyat"];if(FIRELOG) flog($simdikifiyat);//serverin nson tarihi
            $talipolan = $deger["5"]["talipolan"];if(FIRELOG) flog($talipolan);//talip olan
            $aapadi=$deger["5"]["adi"];if(FIRELOG) flog($aapadi);//aap adi
            $gsayi="bes";
        
       }


         $dene3 = date("H:i:s",$starih);if(FIRELOG) flog($dene3);

         $teklifverileceksaat =  strtotime("now") ;if(FIRELOG) flog($teklifverileceksaat);//bu kullanicinin o anki saatini verir.
         $dene = date("H:i:s",$teklifverileceksaat);if(FIRELOG) flog($dene);

         $onsaatsonra = strtotime("5 hours"); if(FIRELOG) flog($onsaatsonra);//on saat eklendikten sonra oluşan tarih
         $saatseklindegosterimi = date("H:i:s",$onsaatsonra);if(FIRELOG) flog($saatseklindegosterimi);



     if ($talipolan==$qid) {
      echo "zaten şuan siz aliyorsunuz ";
     }else{

      if ($starih > $teklifverileceksaat ) {
        if(FIRELOG) flog("teklif verile bilir ");
        $sahipolduguaap = $this->gift_model->appdegeral($qid);  if(FIRELOG) flog($sahipolduguaap["aap"]);
          if(FIRELOG) flog($simdikifiyat);
         if ($sahipolduguaap["aap"] >= $simdikifiyat) {
             if(FIRELOG) flog($talipolan);
            $sahipolduguyeniaap = $sahipolduguaap["aap"] -1; if(FIRELOG) flog($sahipolduguyeniaap);
            $artanyenideger = $simdikifiyat + 1; if(FIRELOG) flog($artanyenideger);
            $yenisi = array('adi' => $aapadi,
                    'starih' =>$onsaatsonra,
                    'simdikifiyat' =>$artanyenideger,
                    'talipolan' =>$qid,
                    'eskitalipci' =>$talipolan);
            $this->acikartirma_model->degistir($yenisi);if(FIRELOG) flog("degistirme islemi yapildi");
            $this->acikartirma_model->saadecesaatkaydet($yenisi);if(FIRELOG) flog("degistirme islemi yapildi");
            if(FIRELOG) flog("DOSYADA VERİ SİLME İŞLEMLERİ BAŞLAMİŞTİR..");
            $this->dosyaicerikdegistir($gsayi,$dosyayagidecek);

            $this->acikartirma_model->kisininpuaninazalt($sahipolduguyeniaap,$qid);if(FIRELOG) flog("puan azaltma  islemi yapildi");//burasi çalşiyor.
            echo "ok";
         }else{
          //hata mesaji ver..
          //paraniz  yeterli olmadigindan dolayi işlem gerçekleriştiremiyoruız.
          echo "yeterince puaniniz yok lütfen tekrar deneyiniz..";
         }
     }else{
      if(FIRELOG) flog("sure doldugundan teklif verilemez.");
      echo "sure doldugundan teklif verilemez.";
     }

     }


      }else{
            
            echo "yeterince puaniniz yok arkadaş davet ederek puan kazan.";
      }
     
   


  

	   
}
function dosyaicerikdegistir($gelendeger,$saat){

	 
	if(FIRELOG) flog("DOSYADA VERİ FONKSİYONU AKTİF");

    /*  if ($gelendeger=="bir") {
      	
      	$dosya=fopen("dosya1.txt","w");// bu dosynin içine bak
      	 if(FIRELOG) flog("DOSYA 1");
      }else if ($gelendeger=="iki") {
      	
      	$dosya=fopen("dosya2.txt","w"); // bu dosynin içine bak
      	 if(FIRELOG) flog("DOSYA 2");
      }else if ($gelendeger=="uc") {
      
      	$dosya=fopen("dosya3.txt","w"); // bu dosynin içine bak
      	 if(FIRELOG) flog("DOSYADA 3");

      }else if ($gelendeger=="drt") {
      	
      	 if(FIRELOG) flog("DOSYADA 4");
      	$dosya=fopen("dosya4.txt","w"); // bu dosynin içine bak
      }else if ($gelendeger=="bes") {
      	
      	$dosya=fopen("dosya5.txt","w"); // bu dosynin içine bak
      	 if(FIRELOG) flog("DOSYADA 5");
      }
      */

        $dosya=fopen("dosya.txt","w");
        if(FIRELOG) flog("YAZİLACAK BİLGİ:");
		 if(FIRELOG) flog($saat);
	       fwrite($dosya, $saat);

        fclose($dosya);

}
function baslatsaat(){
	 date_default_timezone_set('Europe/Istanbul');
     $this->load->model('acikartirma_model');
	   $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);
	   $starih = $deger["starih"]; if(FIRELOG) flog($starih);// bu veritabaninda kaydolan saat. yani teklifin biteceği saat.
	   echo 'Time 1: '.date('H:i:s', $starih).'<br>';

	   $teklifverileceksaat =  strtotime("now") ;if(FIRELOG) flog($teklifverileceksaat);//bu kullanicinin o anki saatini verir.
	   $dene = date("H:i:s",$teklifverileceksaat);if(FIRELOG) flog($dene);
	   echo 'Time 2: '.date('H:i:s', $teklifverileceksaat).'<br>';


  	   $diff = $starih - $teklifverileceksaat;
  

	  if($diff){
	      echo 'Diff: '.date('H:i:s', $diff);
	  }else{
	      echo 'No Diff.';
	  }


}
function baslangicsaati(){

 		$this->load->model('acikartirma_model');
        $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);
	    $starih = $deger["starih"];if(FIRELOG) flog($starih);//serverin nson tarihi
	     $saat = date("H",$starih);if(FIRELOG) flog($saat);//ardaki fark
	    $dakika = date("i",$starih);if(FIRELOG) flog($dakika);//ardaki fark
	    $saniye = date("s",$starih);if(FIRELOG) flog($saniye);//ardaki fark

	    $yenisi = array($saat,
	   					$dakika,
	   					$saniye);if(FIRELOG) flog($yenisi);//ardaki fark
	   


}

function zamanayari(){
	$this->load->model('acikartirma_model');
    $deger=$this->acikartirma_model->aapverileri(); if(FIRELOG) flog($deger);

	  $sayilacak_saat=0; 
	  $sayilacak_dakika=0; 
	  $sayilacak_saniye=3600; 
	  $teklif_verildiginde_uzayacak_dakika=60; // burada kaç dakika uzatmak istiyorsak onu ekleriz

     $zaman=($sayilacak_dakika*3600 )+($sayilacak_dakika*60 )+$sayilacak_saniye+1; //burada kaçinci dakikada başlayacaği yazar.
    //buradadan veri tabanindan gelen deger olmasi gerekiyor.
    function geri_say(){ 
    
    $zaman=$zaman-1; //birer düşmeye başlar
    $kalan_saat=Math.floor($zaman/3600 ); 
    $kalan_dakika=Math.floor(($zaman%3600 )/60 ); 
    $kalan_saniye=$zaman%60; 

     $yeni_zaman=""; 
    if($kalan_dakika>0 || $kalan_saniye>0 || $kalan_saat>0 ){ //hala sifirlanmamişsa
    $yeni_zaman=$kalan_saat+":"+$kalan_dakika+":"+$kalan_saniye; 
    if($kalan_dakika==0 && $kalan_saat==0 && $kalan_saniye>0 ){
    $yeni_zaman="<font style='font-size:18px;color:red;'>"+$yeni_zaman+"</font>";} 
    }else{ 
    $yeni_zaman="Acik artirma sonuclandi"; 
    }//if dakika 0 ise sonu 

    //document.getElementById('kalan_zaman' ).innerHTML=$yeni_zaman; // burada yeni deger gondererek yazdirilir.

    if($zaman>0 ){setTimeout("geri_say();",1000 );} // eger zaman sifir degilkse fonk geri çağir.
   // if($zaman==0 ){document.getElementById('teklif_ver_butonu' ).disabled=true;} // zaman dolmuşsa teklifi sonlandir. tuşu disabled yap.
    }//fonksiyon geri_say sonu 


}
			
	 

	 }
