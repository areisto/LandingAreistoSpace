<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Invoice extends Model
{
    protected $fillable = ['invoice_id', 'plan', 'quantity', 'total', 'status'];
}
