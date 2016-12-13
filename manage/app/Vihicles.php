<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Vihicles extends Model
{
  use SoftDeletes;
  protected $fillable = [
  'first_name',
  'last_name',
  'phone',
  'email',
  'manufacturer',
  'type',
  'year',
  'colour',
  'mileage'
];
 protected $dates = ['deleted_at'];
}
