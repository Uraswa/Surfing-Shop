<?php

class ControllerProductSaleProducts extends Controller {

    public function index(){
        $this->load->model('catalog/product');
        $this->load->language('product/sale_products');
        return $this->load->controller('product/products_slider', [
           'title' => $this->language->get('sale_products'),
            'products' => $this->model_catalog_product->getSaleProducts(9)
        ]);
    }

}
