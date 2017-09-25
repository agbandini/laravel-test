<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    public function getPathAttribute(){
        $url = $this->img_path;
        if(stristr($this->img_path, 'http') === FALSE){
            $url = 'storage/'.$url;
        }
        return $url;
    }
    
    
    public function getImgPathAttribute($value){
        
        if(stristr($value, 'http') === FALSE){
            $url = 'storage/'.$value;
        }
        return $value;
    }
    
    public function setNameAttribute($value){
        $this->attributes['name'] = strtoupper($value);
    }
    
    public function album(){
        //return $this->belongsTo(Album::class, 'album_id', 'id');
        return $this->belongsTo(Album::class);
    }    
    
}
