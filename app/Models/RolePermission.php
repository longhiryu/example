<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RolePermission extends Model
{
    protected $table = 'role_pms';
    protected $fillable = ['id_role','id_pms'];
}
