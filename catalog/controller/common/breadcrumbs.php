<?php

class ControllerCommonBreadcrumbs extends Controller {

    public function index($breadcrumbs){
        $this->load->language('common/breadcrumbs');
        $data['back_page_text'] = $this->language->get('back_page_text');
         $data['breadcrumbs'] = $breadcrumbs;
         array_unshift($data['breadcrumbs'], array(
             'text' => $this->language->get('text_home'),
             'href' => $this->url->link('common/home')
         ));
        return $this->load->view('common/breadcrumbs', $data);
    }



}