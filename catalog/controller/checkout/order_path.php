<?php

class ControllerCheckoutOrderPath extends Controller {

    public function index($args=[]){
        $this->load->language('checkout/cart');
        $data['paths'] = [
          ['checkout/cart', $this->language->get('heading_title')],
          ['checkout/checkout', $this->language->get('text_checkout')],
          ['checkout/success', $this->language->get('text_confirm')],
        ];
        $data['route'] = $this->request->get['route'];
        return $this->load->view('checkout/order_path', $data);
    }

}