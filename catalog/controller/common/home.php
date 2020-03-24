<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$data['cart'] = $this->load->controller('common/cart');
		$data['banner'] = $this->load->controller('common/welcome');
        $data['userinfo'] = $this->load->controller('common/userinfo');
        $data['slider'] = $this->load->controller('product/slider');
        $data['menu'] = $this->load->controller('common/menu');
        $data['open_banner'] = $this->load->controller('common/open');
        $data['brands'] = $this->load->controller('common/brands');
        $data['instagram'] = $this->load->controller('common/instagram');
        $data['social_links'] = $this->load->controller('common/social_links');
        $data['newest_products'] = $this->load->controller('product/newest_products', 99);
        $data['top_products'] = $this->load->controller('product/top_products');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
