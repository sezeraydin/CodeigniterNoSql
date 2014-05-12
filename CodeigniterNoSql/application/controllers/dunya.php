<?php

class dunya extends CI_Controller
{

public function __construct() {
	        parent::__construct();
	        $CI =& get_instance();
	    
	    }
	       
    function id($id) {
	    	$servers = $this->config->item('servers');
	    	$server = $servers[$id];
			$qid = $_SESSION['login'];
			$time =  $_SERVER['REQUEST_TIME'];
	    	$server_id= $server["id"];
	    	$login_key = $this->config->item('login_key');
			$sign = md5("qid=".$qid."&time=".$time."&server_id=".$server_id.$login_key);
			$link = "http://213.128.66.140/loginTurkey.php?qid=".$qid."&time=".$time."&server_id=".$server_id."&sign=".$sign."&isAdult=1";

		$this->smarty->assign("server", $server);
		$this->smarty->assign("link", $link);
		$this->smarty->assign("name",$qid);

		$this->smarty->view('server.tpl');
		
		
       
    }

}