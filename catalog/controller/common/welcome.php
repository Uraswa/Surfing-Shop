<?php

class ControllerCommonWelcome extends Controller
{

    public function index()
    {
        $this->load->language('common/welcome');
        $data['text_welcome'] = $this->language->get('text_welcome');
        $data['text_description'] = $this->language->get('text_description');
        return $this->load->view('common/welcome', $data);
    }
}
