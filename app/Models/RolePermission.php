<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\RolePermission
 *
 * @property int $id_role
 * @property int $id_pms
 * @method static \Illuminate\Database\Eloquent\Builder|RolePermission newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RolePermission newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RolePermission query()
 * @method static \Illuminate\Database\Eloquent\Builder|RolePermission whereIdPms($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RolePermission whereIdRole($value)
 * @mixin \Eloquent
 */
class RolePermission extends Model
{
    protected $table = 'role_pms';
    protected $fillable = ['id_role','id_pms'];
}
