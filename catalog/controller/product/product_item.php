<?php

class ControllerProductProductItem extends Controller {

    public function index($product){
        $product['image'] = 'image/' . $product['image'];
        $product['link'] = $this->url->link('product/product', 'product_id=' . $product['product_id']);
        $product['price'] = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
        if (isset($product['special']) && $product['special'] != null) {
            $product['special'] = $this->currency->format($this->tax->calculate($product['special'], $product['special'], $this->config->get('config_tax')), $this->session->data['currency']);
        }
        return $this->load->view('product/product_item', $product);
    }

}