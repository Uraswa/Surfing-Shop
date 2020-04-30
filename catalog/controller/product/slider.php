<?php

class ControllerProductSlider extends Controller {

    public function index(){
        $this->load->model('setting/setting');
        $settings = $this->model_setting_setting->getSetting('main_carousel');
        if (isset($settings['main_carousel_slides'])){
            $data['slides'] = explode("{%end%}", $settings['main_carousel_slides']);
            if (count($data['slides']) == 2 && !$data['slides'][1]){
                $data['slides'] = [$data['slides'][0]];
            }
        } else {
            $data['slides'] = [];
        }
        $data['1'] = 1;
        return $this->load->view('product/slider', $data);
    }


}
