<?php

class ControllerExtensionModuleMainCarousel extends Controller {
    private $error = array();

    public function index() {
        $this->load->language('extension/module/main_carousel');
        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('main_carousel', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
        }
        $settings = $this->model_setting_setting->getSetting('main_carousel');
        if (isset($settings['main_carousel_slides'])){
            $data['slides'] = $settings['main_carousel_slides'];
        } else {
            $data['slides'] = "";
        }
        $data['action'] = $this->url->link('extension/module/main_carousel', 'token=' . $this->session->data['token'], true);

        $data['heading_title'] = $this->language->get("heading_title");
        $data['slides_text'] = $this->language->get("slides_text");
        $data['slides_format_text'] = $this->language->get("slides_format_text");

        $data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');
        $this->response->setOutput($this->load->view('extension/module/main_carousel', $data));
    }

    protected function validate() {
        return !$this->error;
    }
}
