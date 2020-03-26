<?php

class ControllerCommonLeftMenu extends Controller {

    public function index($args=[]) {
        //args title, items [name, link, selected:bool], bg
        $args['bg'] = isset($args['bg']) ? $args['bg'] : 'bg-blue';
        return $this->load->view('common/left_menu', $args);
    }
}
