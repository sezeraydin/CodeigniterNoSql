<?php

require_once('sag/Sag.php');

class User_Model{

function __construct(){

$this->sag = new Sag('askme.cloudant.com','0000'); //$sag = new sag('127.0.01','5984');
$this->sag->login('askme', 'askme');//$sag->login('user','password')
$this->sag->setDatabase('askme'); // $sag->setDatabase('blog');
}

function get($id){
	try{
		$response 	= $this->sag->get($id);//dtabase çaliştırır
		return objectToArray($response->body);
	}
	catch(Exception $e)
	{
		return "hata";
	}
}

function is_exist($id, $email){
	$response = $this->sag->get("_design/search/_search/users?q=default:".$id);
	if(isset($response->body->rows[0]->fields)) return true;
	
	//$response = $this->sag->get("_design/search/_search/users?q=email:".$email);
	//if(isset($response->body->rows[0]->fields)) return true;
	
	return false;
}
function kisibilgisi($user){

    $response = $this->sag->get($user);if(FIRELOG) flog($response);
    $arkadaslar = $response->body->arkadassayisi; if(FIRELOG) flog($arkadaslar);
    $email = $response->body->email; if(FIRELOG) flog($email);
    
    $rev = $response->body->_rev; if(FIRELOG) flog($rev);

    $genelbilgi = array('arkadassayisi' => $arkadaslar, 
    					'email'=>$email,
    					'rev' =>$rev);
    return $genelbilgi;

}



function register($user_data){
	//if (!isset($user_data["login"])) $user_data["login"] = $user_data["id"];
			// veritabanina uye ekleme
		
		$veriler =array("network" =>$user_data["network"],
						 "banner" =>$user_data["banner"],
						 "kampanya"=>$user_data["kampanya"],
						 "landingpage" => $user_data["landingpage"],
						 "daveteden"=>$user_data["daveteden"]
						 );
		$putit = array(
		"login"=> $user_data["login"],
		"pass"=> $user_data["pass"],
		"email"=> $user_data["email"],
		"register_date"=> $_SERVER['REQUEST_TIME'],
		"register_ip"=> $_SERVER['REMOTE_ADDR'],
		"refler" =>$veriler
		);

		$deger =$this->sorgu($putit);

		//if (isset($this->input->cookie("referer"))){
		//$putit['referer'] = $this->input->cookie("referer");
		// buraya giremiyor 
		//}
	if ($deger==true) {
		
		$putit['active']='0';
		if ($this->sag->put($user_data["login"], $putit)) {
			return true;
		}
		return false;
	
	}else{

		return false;
	}


}

function sorgu($putit){

		$sor = $putit["login"];
		$email = $putit["email"];
		$response = $this->sag->get("_design/search/_search/users?q=default:".$sor." AND email:".$email);
		
		if(isset($response->body->rows[0])){
			if(FIRELOG) flog("var");
			return false;
		}else{
			if(FIRELOG) flog("yok");
			return true;
		}


}
function login($id,$pass){
	
	$response = $this->sag->get("_design/search/_search/users?q=default:".$id." AND pass:".$pass);
	if(isset($response->body->rows[0])){
		session_start();
		$_SESSION["id"] = $response->body->rows[0]->id;
		$_SESSION["login"] = $response->body->rows[0]->fields->login;
	
		return true;
	}else{
		return false;
	}

}

function vbcontrolad($id){
	
	if(FIRELOG) flog("-user _model- isim: ".$id);
	$response = $this->sag->get("_design/search/_search/users?q=default:".$id);
	if(isset($response->body->rows[0])){
		return true;
	}else{
		return false;
	}

}
function vbcontrolemail($email){
	
	$response = $this->sag->get("_design/search/_search/users?q=email:".$email);
	if(isset($response->body->rows[0])){
		return true;
	}else{
		return false;
	}

}

/*function set_session(){

	$ses_data = array('id' => $id,
						'login' =>$pass);
	$this->session->set_userdata($ses_data);
}*/
function logout(){
	session_destroy();
}
function controlcode($id,$code){
	$response = $this->sag->get("_design/search/_search/users?q=default:".$id);
		if(isset($response->body->rows[0])){
		$putit = array("code" => $user_data["code"]);
		$this->sag->put($id, $putit);
		return true;
	}else{
		return false;
	}
}
function change_password($id,$key,$newpass){
	 	
		$response 	= $this->sag->get($id);
		$datanew 	= array("pass"=>md5($newpass));
		$dataold 	= objectToArray($response->body);
		$datamerged = array_overlay($dataold+$datanew, $datanew);
		if(md5($dataold['_rev']) == $key){
		$this->sag->put($id, $datamerged);
		return true;
		}
		return false;
} 

function mailonay($id){
	//buraya id gelse yeter
	//link kısmına username md5 alsak daha iyi olu sadce bir oneri
	$onay = $this->sag->get($id);
	$datanew 	= array("pass"=>'1');
	$dataold 	= objectToArray($response->body);
	$datamerged = array_overlay($dataold+$datanew, $datanew);
	if ($this->sag->put($id, $datamerged)) {
		return true;
	}else{
		return false;
	}
}
function objectToArray($d) {
	if (is_object($d)) {
		// Gets the properties of the given object
		// with get_object_vars function
		$d = get_object_vars($d);
	}

	if (is_array($d)) {
		/*
		* Return array converted to object
		* Using __FUNCTION__ (Magic constant)
		* for recursive call
		*/
		return array_map(__FUNCTION__, $d);
	}
	else {
		// Return array
		return $d;
	}
}


function arrayToObject($d) {
	if (is_array($d)) {
		/*
		* Return array converted to object
		* Using __FUNCTION__ (Magic constant)
		* for recursive call
		*/
		return (object) array_map(__FUNCTION__, $d);
	}
	else {
		// Return object
		return $d;
	}
}

function array_overlay($a1,$a2)
{
    foreach($a1 as $k => $v) {
        if ($a2[$k]=="::delete::"){
        	unset($a1[$k]);
        	continue;
        };
        if(!array_key_exists($k,$a2)) continue;
        if(is_array($v) && is_array($a2[$k])){
            $a1[$k] = array_overlay($v,$a2[$k]);
        }else{
            $a1[$k] = $a2[$k];
        }
        
    }
    return $a1;
}

}

?>