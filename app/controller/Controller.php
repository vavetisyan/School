<?php

class Controller {

    public function getParam($key){
        if(isset($_REQUEST[$key])){
            return $_REQUEST[$key];
        }

        return null;
    }

	public function render($view, $variables = []){
	    foreach ($variables as $key => $value) {
            $this->assign($key, $value);
        }

        require('app/view/' . $view . '.php');
	}

    public function assign($key, $value) {
        $this->$key = $value;
    }

    public function deny($str){
	    echo $str;
	    exit;
    }

}