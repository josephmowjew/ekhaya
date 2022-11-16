
<div>
{{-- Content --}}
<div class="row">
    <button class="btn btn-primary mb-2 ml-3" wire:click.prevent="displayRoleForm" id="modal_show1"><i class="mdi mdi-plus-circle"></i> Add Role</button>
     <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                       <th>Role Name</th>
                        <th>Options</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($roles as $role)
                      <tr>
                        <td>
                          {{ $role->name }}
                        </td>
                        <td>
                          <a href="#" wire:click.prevent="edit({{ $role }})">
                            <i class="mdi mdi-table-edit"></i> 
                          </a>
                          <a href="#" wire:click.prevent="confirmRoleRemoval({{ $role->id }})">
                            <i class="mdi mdi-delete text-danger"></i> 
                          </a>
                        </td>
                      </tr>
                       @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="card-footer d-flex justify-content-end">
                  {{ $roles->links() }}
              </div>
            </div>
      </div>
</div>
{{-- /Content --}}

<!-- Modal -->
<div class="modal fade" id="form" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" wire:ignore.self>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
          @if($ShowEditRole)
            Edit Role
          @else
            Add Role Form
          @endif
          
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="forms-sample" autocomplete="off" wire:submit.prevent="{{ $ShowEditRole? 'updateRole' : 'createRole'}}">
          
            <div class="form-group">
              <label for="exampleInputUsername1">Role Name</label>
              <input type="text" wire:model.defer="state.name" class="form-control @error('name') is-invalid @enderror" id="exampleInputUsername1" placeholder="Enter Role Name">
              @error('name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
              @enderror
            </div>
             
           
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close"></i> Close</button>
        <button type="submit" class="btn btn-primary"><i class="mdi mdi-content-save"></i> 
          @if($ShowEditRole)
            Save changes
          @else
            Save
          @endif
          </button>
      </div>
       </form>
      
    </div>
  </div>
</div>
<!-- Modal -->

<!-- Modal -->
<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" wire:ignore.self>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
         Delete Role
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to delete this role?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close"></i> Close</button>
        <button type="submit" class="btn btn-danger"  wire:click.prevent="deteleRole">
          <i class="mdi mdi-delete"></i>
          Yes
          </button>
      </div>
       </form>
      
    </div>
  </div>
</div>
<!-- Modal -->

</div>
<x-confirmation/>