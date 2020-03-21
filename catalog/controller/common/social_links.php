<?php

class ControllerCommonSocialLinks extends Controller {

    public function index(){
        return $this->load->view('common/social_links');
    }

}