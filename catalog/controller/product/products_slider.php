<?php

class ControllerProductProductsSlider extends Controller {

    public function index(array $args) {
        $rows = 1;
        if (isset($args['rows'])) {
            $rows = $args['rows'];
        }
        $products = $args['products'];
        $products_rows = array();
        $counter = 0;
        foreach ($products as $product){
            if (!isset($products_rows[$counter])){
                $products_rows[$counter] = array();
            }
            $products_rows[$counter][] = $this->load->controller('product/product_item', $product);
            if ($counter++ == $rows - 1){
                $counter = 0;
            }
        }
        $data['products_rows'] = $products_rows;
        $data['title'] = $args['title'];
        return $this->load->view('product/products_slider', $data);
    }

}