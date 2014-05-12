<?php

class Mail {
	
	function __construct(){
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
		$headers .= 'From: <no-reply@orkunonline.com>' . "\r\n";
		$this->headers = $headers;
	}
		
	function register($to,$user){
		
		$subject = "Orkun Online'a Hoşgeldiniz!";
		
		$supportkey = substr(md5($user."@pollengames"),0,10);
		
		$message = "
		<html>
		<head>
		<title>Orkun Online'a Hoşgeldiniz!</title>
		</head>
		<body>
		<p>Orkun Online'a kayıt olurken kullandığınız kullanıcı adı: <strong>".$user."</strong><br />
		Size özel destek kodu: <strong>".$supportkey."</strong>. Bu özel kod hesap ile ilgili sorunlarınızı çözmeniz için 
		destek personelimiz tarafından size sorulabilir. Bu kod sayesinde personelimizden güvenli bir şekide destek alabilirsiniz. 
		Destek kodu hesap sahipliğinin ispatıdır <u>mail hesabınız çalınsa bile bu kodla hesabınızı kurtarabilirsiniz</u>
		Bu kodu kaybettiğinizde kurtarmanızın hiçbirp yolu yoktur. Lütfen destek kodunuzu kaydedin.
		</p>
		<ul>
		<li>Lütfen belirlediğiniz şifreyi kimse ile paylaşmayın. Oyun yöneticileri sizden hiçbir zaman şifre istemez. Sizden şifre isteyen kişileri lütfen oyun yöneticilerine rapor edin.</li>
		<li>Hile ile oyun eşyaları kazanableceğinizi vaadeden sitelere ve programlara şifrenizi yazmayın. Bunlar şifrenizi çalmak için hazırlanmış tuzaklardır. Oyunda kullanılabilen hiçbir hile yoktur.</li>
		<li>Destek kodunu kaybetmeyin ve kimse ile paylaşmayın. Destek kodu olmadan destek personelimiz size hesap konularında yardımcı olamaz.</li>
		<li>Destek kodu bir kere üretilir ve yeniden talep etmek mümkün değildir.</li>
		</ul>
		Bu mail takip edilmeyen bir adresten atılmıştır lütfen bu maili cevaplamayın. Sorunlarınız için orkunonline@pollengames.com adresine mail atabilirsiniz.
		<p align='right'>Pollen Games - Hong Kong</p>
		</body>
		</html>
		";
		
		mail($to,$subject,$message,$this->headers);	
	}
	
	
	function pass_reminder($to, $user, $key ){
		$subject = "Orkun Online - Şifre Değiştirme";
		
		$message = "
		<html>
		<head>
		<title>OrkunOnline - Şifre Değiştirme</title>
		</head>
		<body>
		<p>Merhaba, Orkun Online'daki hesabınız için şifre sıfırlama talebinde bulunuduz. Aşağıdaki linke tıklayarak şifrenizi değiştirebilirsiniz. Eğer tıklayamıyorsanız adresi kopyalayarak tarayıcınızın adres çubuğuna yapıştırabilirsiniz. Şifrenizi bu link ile bir kere değiştirdikten sonra link geçerliliğini yitirecektir. Tekrar şifre değiştirmek için bu linki kullanamazsınız.</p>
		<p><a href='http://www.orkunonline.com/?reset=".$user."&key=".$key."'>http://www.orkunonline.com/?reset=".$user."&key=".$key."</a></p>
		<ul>
		<li>Lütfen belirlediğiniz şifreyi kimse ile paylaşmayın. Oyun yöneticileri sizden hiçbir zaman şifre istemez. Sizden şifre isteyen kişileri oyun yöneticilerine rapor edin.</li>
		<li>Şifrenizi kolay tahmin edilebilir basit bir şifre yapmayın. Doğum tarihiniz, telefon nuamranız, 'asdasd', '123456' gibi basit şifreler emeklerinizin yok olmasına sebebiye verebilir.</li>
		<li>Hile ile oyun eşyaları kazanableceğinizi vaadeden sitelere ve programlara şifrenizi yazmayın. Bunlar şifrenizi çalmak için hazırlanmış tuzaklardır. Oyunda kullanılabilen hiçbir hile yoktur.</li>
		</ul>
		<p align='right'>Pollen Games - Hong Kong</p>
		</body>
		</html>
		";
		
		mail($to,$subject,$message,$this->headers);
	}

	function aktiv_login($to, $user){
		$subject = "Orkun Online - aktivasyon maili";
		
		$message = "
		<html>
		<head>
		<title>OrkunOnline - aktivasyon maili</title>
		</head>
		<body>
		<p>Merhaba, Orkun Online'daki hesabınızın activ etmek için Aşağıdaki linke tıklayarak Aktiv edebilirsiniz. Eğer tıklayamıyorsanız adresi kopyalayarak tarayıcınızın adres çubuğuna yapıştırabilirsiniz. .</p>
		<p><a href='http://www.orkunonline.com/?reset=".$user."&key=".$key."'>http://www.orkunonline.com/?reset=".$user."&key=".$key."</a></p>
		<p align='right'>Pollen Games - Hong Kong</p>
		</body>
		</html>
		";
		
		mail($to,$subject,$message,$this->headers);
	}

	function davetet($to, $user){
		$subject = "Orkun Online - DAVET EDİLDİNİZ";
		
		$message = "
		<html>
		<head>
		<title>OrkunOnline - davet maili</title>
		</head>
		<body>
		<p>Merhaba, Orkun Online'da oynayan arkadasiniz sizden yardim beklemekte. Aşağidaki  linki tiklayarak ona yardimci olabilirsiniz.</p>
		<p>Eger kayit olursaniz arkadaşiniz sizin sayenizde daha fazla kazanacak.</p>
		<p>Sizde kaydolun orkunonline'da yenilenen yeni arayüzü,açik artirma sistemi , damla biriktirme ve yeni haritalrin keyfini çikaralim.</p>
		<p> Kayit olmak için veya Kod uretmek için Aşağidaki linke tıkla..</p>

		<p><a href='http://www.orkunonline.com/?=".$user."&key=".$key."'>http://www.orkunonline.com/?reset=".$user."&key=".$key."</a></p>
		<p align='right'>Pollen Games - Hong Kong</p>
		</body>
		</html>
		";
		
		mail($to,$subject,$message,$this->headers);
	}
}
?>