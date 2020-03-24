<?php

class ControllerProductNewestProducts extends Controller
{

    public function index($args)
    {
        $this->load->model('catalog/product');

        $data['products_slider'] = $this->load->controller('product/products_slider',
            array('title' => 'New products',
                'rows' => 2,
                'products' => $this->model_catalog_product->getLatestProducts(9)));
        return $data['products_slider'];
    }

}
