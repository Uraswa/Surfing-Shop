<?php

class ControllerCommonUserinfo extends Controller {

    public function index(){

        $this->load->language('common/userinfo');

        $data['cart'] = $this->load->controller('common/cart');
        $data['search'] = $this->load->controller('common/search');

        // Wishlist
        if ($this->customer->isLogged()) {
            $this->load->model('account/wishlist');

            $data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
        } else {
            $data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
        }

        $data['wishlist'] = $this->url->link('account/wishlist', '', true);
        $data['text_login'] = $this->language->get('text_login');

        return $this->load->view('common/userinfo', $data);
    }

}
