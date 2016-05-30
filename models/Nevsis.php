<?php

class Nevsis extends Model
{
    public function getList($only_published=false){
        $sql='SELECT * FROM news';
        if($only_published){
            $sql='SELECT * FROM pages WHERE is_published=1';
        }
        return $this->db->query($sql);
    }

    public function getCategory($layot,$limit=null){
        if($limit !=null){$l = "limit $limit ";}else{$l="";}
        $sql="SELECT n.id_news, n.title, n.alias, n.id_category, c.alias
FROM news n
LEFT JOIN category c ON n.id_category = c.id_category
WHERE c.alias ='{$layot}' ".$l." ";

        return $this->db->query($sql);
    }

    public function getListCategory(){
        $sql='SELECT id_category , alias FROM category';

        return $this->db->query($sql);
    }

    public function getById($id){
        $id=$this->db->escape($id);
        $sql="SELECT * FROM news WHERE id_news='{$id}' limit 1";
        $result=$this->db->query($sql);
        return isset($result[0])?$result[0]:null;
    }
    public function getTags($id){
        $id=$this->db->escape($id);
        $sql="SELECT n.id_tegs, t.name
FROM tegs_to_news n
LEFT JOIN tegs t ON n.id_tegs = t.id_tegs
WHERE id_news =  '{$id}'
GROUP BY id_tegs";

       return $this->db->query($sql);
       // return $layot;
    }

    public function getTagsById($id){
        $id=$this->db->escape($id);
        $sql=" SELECT t.id_tegs_to_news, t.id_news, n.id_news, t.id_tegs, n.title
FROM tegs_to_news t
LEFT JOIN news n ON t.id_news = n.id_news
WHERE id_tegs =  '{$id}'";



        return $this->db->query($sql);
        // return $layot;
    }
    public function getTagById($id){
        $id=$this->db->escape($id);
        $sql=" SELECT  name FROM tegs WHERE id_tegs='{$id}'";



        return $this->db->query($sql);
        // return $layot;
    }
    public function getComentsById($id){
        $id=$this->db->escape($id);
        $sql=" SELECT  c.id_user,c.text,u.id_user,u.email  FROM coments c left join users u on c.id_user= u.id_user
  WHERE id_news='{$id}'";



        return $this->db->query($sql);
        // return $layot;
    }
}