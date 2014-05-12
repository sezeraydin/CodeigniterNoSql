<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');


require_once( 'sag/Sag.php');

class SagModel extends Sag {

	function __construct()
	{
		parent::__construct();
		echo("denemeconstruct <br/>");
		
	}

	function setLoginUrl()
 	{
	    $this->host = $host;
	    $this->port = $port;
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
			echo("denemeobject");
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
