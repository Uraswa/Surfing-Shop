<?php

class ControllerProductCategoryOptions extends Controller {

    public function index() {
        $this->load->language('product/category_options');
        $this->load->model('catalog/category');

        $data['category_options_text'] = $this->language->get('category_options');
        $main_category = explode('_', $this->request->get['path'])[0];
        $categories = $this->model_catalog_category->getCategories($main_category);
        $items = [];
        foreach ($categories as $category) {
            $path = $main_category.'_'.$category['category_id'];
            $items[] = [$category['name'], $this->url->link('product/category', "path=$path") , $this->request->get['path'] == $path];
        }

        return $this->load->view('common/left_menu', [
            'title' => $this->language->get('category_options'),
            'items' => $items,
            'bg' => 'bg-light-blue'
        ]);
    }

}
