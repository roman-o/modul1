<?php

class NewsController extends  Controller{

    public  function  __construct($data= array())
    {
        parent::__construct($data);
        $this->model = new Nevsis();
    }

    public function  index(){
      //  $this->data['news']= $this->model->getList();
      $category = $this->model->getListCategory();

        $layot = $category;
        foreach($layot as $category) {
            $this->data['news'][$category[alias]]  = $this->model->getCategory($category[alias],5);
        //  echo $category[alias]."<br>";
        }
     //  print_r($this->data);
    }


    public function  category()
    {
        $layot = $this->params[0];
        //echo $layot;
        if (!$layot) {
            Router::redirect('http://modul/news/');
        } else {
            $this->data['news'] = $this->model->getCategory($layot);

        }
    }



    public  function  view(){
        $params = App::getRouter()->getParams();

        if (isset($params[0])){
            $id = strtolower($params[0]);
            $this->data['news'] =$this->model->getById($id);
            $this->data['tags'] = $this->model->getTags($id);
            $this->data['coments'] = $this->model->getComentsById($id);
          //  print_r($this->data);
        }

    }

    public  function  vievTags(){
        $params = App::getRouter()->getParams();

        if (isset($params[0])){
            $id = strtolower($params[0]);

            $this->data['tags'] = $this->model->getTagsById($id);
            $this->data['tag_name'] = $this->model->getTagById($id);
          //   print_r($this->data);
        }

    }

}