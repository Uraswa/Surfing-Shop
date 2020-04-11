<?php

class ControllerProductRecentlyViewed extends Controller {

    public function index($current_product = null){
        $this->load->model('catalog/product');
        $this->load->language('product/product');
        if (!isset($_COOKIE['recently'])) {
            $recently = array();
        } else {
            $recently = json_decode($_COOKIE['recently']);
        }
        if (isset($this->request->get['product_id'])) {
            $keys = array_keys($recently, $this->request->get['product_id']);
            if ($keys) {
                foreach ($keys as $key) {
                    unset($recently[$key]);
                }
            } else if (count($recently) >= 6) {
                array_pop($recently);
            }
            array_unshift($recently, $this->request->get['product_id']);
            setcookie('recently', json_encode($recently));
        }

        $recently_watched = $current_product ? [$current_product] : [];
        foreach (array_slice($recently, 1) as $product_id){
            $recently_watched[] = $this->model_catalog_product->getProduct($product_id);
        }
        return $this->load->controller('product/products_slider', ['products' => $recently_watched, 'title' => $this->language->get('text_recently')]);
    }

}