

<?php

class Puzzlecontrol extends CI_Controller
{


		public function __construct()
       {
        parent::__construct();
    
        $this->load->model('user_model');
       
        $this->load->model('davet_model');
        $this->load->model('uret_model');
     	$this->load->model('yukleme_model');

       }
		function index(){
			echo "bye bye world";
		}

function puzzletammi() {

 $this->load->model('gift_model');


	
}
	
  	

}
