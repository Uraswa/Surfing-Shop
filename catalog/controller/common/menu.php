<?php

class ControllerCommonMenu extends Controller {

    public function index(){
        $this->load->language('common/menu');
        $this->load->model('catalog/category');

        $categories = $this->model_catalog_category->getCategories();

        $items = [[$this->language->get('about'), '']];

        foreach ($categories as $category) {
            $items[] = [
                $category['name'],
                $this->url->link('product/category', 'path='.$category['category_id']),
                isset($this->request->get['path']) && $this->request->get['path'] == $category['category_id'] && $this->request->get['route'] == 'product/category'
            ];
        }

        $other_links = [
            'sale',
            'brands',
            'blog',
            'gadgets',
            'contact'
        ];

        foreach ($other_links as $other_link){
            $items[] = [$this->language->get($other_link), '', false];
        }

        $data['menu'] = $this->language->get('menu');
        $data['items'] = $items;



        return $this->load->view('common/menu', $data);
    }


}
