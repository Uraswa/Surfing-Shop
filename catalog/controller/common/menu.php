<?php

class ControllerCommonMenu extends Controller {

    public function index(){
        $this->load->language('common/menu');
        $this->load->model('catalog/category');

        $categories = $this->model_catalog_category->getCategories();

        $items = [[$this->language->get('about'), '']];
        $main_category = explode('_', isset($this->request->get['path']) ? $this->request->get['path'] : '')[0];
        foreach ($categories as $category) {
            $items[] = [
                $category['name'],
                $this->url->link('product/category', 'path='.$category['category_id']),
                $main_category == $category['category_id']
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

        return $this->load->controller('common/left_menu', [
            'title' => $this->language->get('menu'),
            'items' => $items
        ]);
    }


}
