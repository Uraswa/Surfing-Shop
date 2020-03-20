<?php

class ControllerCommonMenu extends Controller {

    public function index(){
        $this->load->language('common/menu');

        $data['items'] = [
            'about',
            'apparel',
            'surf_apparel',
            'windsurf',
            'kitesurf',
            'accessories',
            'sale',
            'brands',
            'blog',
            'gadgets',
            'contact'
        ];

        foreach ($data['items'] as $item){
            $data[$item] = $this->language->get($item);
        }

        $data['menu'] = $this->language->get('menu');



        return $this->load->view('common/menu', $data);
    }


}
