<?php

class ControllerProductManufacturerLeftList extends Controller {

    public function index(){
        $this->load->model('catalog/manufacturer');

        $manufacturers = $this->model_catalog_manufacturer->getManufacturers();
        $manufacturer_link = isset($this->request->get['manufacturer']) ? $this->request->get['manufacturer'] : '';
        foreach ($manufacturers as $manufacturer){
            $url = "manufacturer=".$manufacturer['manufacturer_id']."&path=".$this->request->get['path'];
            $items[] = [
              $manufacturer['name'],
              $this->url->link('product/category', $url),
              $manufacturer_link == $manufacturer['manufacturer_id']
            ];
        }

        return $this->load->controller('common/left_menu', [
            'title' => 'Производители',
            'items' => $items,
            'bg' => 'bg-light-blue'
        ]);
    }

}
