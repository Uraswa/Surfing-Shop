<?php

class ControllerProductTopProducts extends Controller {

    public function index(){
        $this->load->model('catalog/product');
        $this->load->language('product/top_products');
        return $this->load->controller('product/products_slider', [
           'title' => $this->language->get('top_products'),
           'products' => $this->model_catalog_product->getPopularProducts(9)
        ]);
    }

}
