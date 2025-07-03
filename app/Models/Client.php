<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Client extends Model
{
    protected $appends = ['imageLink'];

  public function getImageLinkAttribute() {
    if($this->image) {
        return str_replace('\\', '/', asset('storage/' . $this->image));
    } else {
        return null;
    }
  }
}
