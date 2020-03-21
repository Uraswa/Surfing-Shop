<?php

class ControllerCommonInstagram extends Controller {

    public function index(){
        return $this->load->view('common/instagram');
    }

}