<?php

namespace App\Policies;

use App\Http\Controllers\PermissionController;
use App\Models\Permission;
use App\Models\Quotation;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Gate;

class QuotationPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Quotation $quotation)
    {
        $manager = Gate::allows('manager');
        $permission = $this->check('view', $user->role_id); // @show in QuotationController
        $author = ($user->id == $quotation->author or $manager==true)? true : false;
        if ($permission == true and $author == true) {
            return true;
        }else{
            return false;
        }
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $this->check('create', $user->role_id);
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Quotation $quotation)
    {
        // Check xem đã có quyền truy cập chưa
        $allow = $this->check('create', $user->role_id);
        // Check xem user có phải là tác giả hay không
        $author = ($user->id == $quotation->author)? true : false;
        if($allow == true and $author == true){
            return true;
        }else{
            return false;
        }
        
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Quotation $quotation)
    {
        return  false;
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, Quotation $quotation)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Quotation $quotation)
    {
        //
    }

    public function check($action, $role_id)
    {
        $psm = new PermissionController();
        // get Permission 
        $data = $psm->getPermissionByRoleAndModel($role_id);
        //defaul allow
        $allow = false;

        foreach ($data as $value) {
            // find the record by action and model
            if ($value->action == $action and $value->model == 'Quotation') {
                //set allow follow the permission allow
                $allow = $value->allow;
            }
        }
        return $allow;
    }
}
