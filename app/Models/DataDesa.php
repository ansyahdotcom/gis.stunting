<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataDesa extends Model
{
    use HasFactory;
    protected $table        = 'kecamatans';
    protected $primaryKey   = 'id_kcm';
    public $keyType         = 'string';
    public $timestamps      = false;
}
