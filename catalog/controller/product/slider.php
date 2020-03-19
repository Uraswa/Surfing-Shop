<?php

class ControllerProductSlider extends Controller {

    public function index(){
        $data['1'] = 1;
        return $this->load->view('product/slider', $data);
    }


}
