<?php

class ControllerCommonOpen extends Controller {

    public function index(){
        $this->load->language('common/open');
        $data['text'] = sprintf($this->language->get('text'), "<br>", "<br>");
        return $this->load->view('common/open', $data);
    }

}
