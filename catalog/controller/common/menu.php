<?php

class ControllerCommonMenu extends Controller {

    public function index(){
        $this->load->language('common/menu');
        $this->load->model('catalog/category');

        $search = isset($this->request->get['search']) ? '&search='. $this->request->get['search'] : '';
        $sub_category = isset($this->request->get['sub_category']) ? '&sub_category='. $this->request->get['sub_category'] : '';
        $description = isset($this->request->get['description']) ? '&description='. $this->request->get['description'] : '';
        $link_template = $this->url->link('%s', '%s' . $search . $sub_category . $description);

        if (isset($this->request->get['route']) && $this->request->get['route'] == 'product/search'){
            $link_template = sprintf($link_template,'product/search', 'category_id=%s');
            $current_category = isset($this->request->get['category_id']) ? $this->request->get['category_id'] : 0;

            $main_category = $this->model_catalog_category->getParentCategories($current_category);
            $main_category = end($main_category);

            if (!$main_category){
                $main_category = ['category_id' => -1];
            }

        } else {
            $link_template = sprintf($link_template,'product/category', 'path=%s');
            $main_category = ['category_id' => explode('_', isset($this->request->get['path']) ? $this->request->get['path'] : '')[0]];
        }

        $categories = $this->model_catalog_category->getCategories();

        $items = [[$this->language->get('about'), '']];
        foreach ($categories as $category) {
            $items[] = [
                $category['name'],
                sprintf($link_template, $category['category_id']),
                $main_category['category_id'] == $category['category_id'],
                ['path' => '']
            ];
        }

        $other_links = [
            ['sale', ''],
            ['brands', ''],
            ['blog', ''],
            ['gadgets', ''],
            ['contact', $this->url->link('information/contact'), @$this->request->get['route'] == 'information/contact', ['route' => 'route=common/home']]
        ];

        foreach ($other_links as $other_link){
            $items[] = [$this->language->get($other_link[0]), $other_link[1], @$other_link[2], @$other_link[3]];
        }

        return $this->load->controller('common/left_menu', [
            'title' => $this->language->get('menu'),
            'items' => $items
        ]);
    }


}
