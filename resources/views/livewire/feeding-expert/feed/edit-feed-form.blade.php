<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Edit Feed Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="updateFeed">   
                    <div class="form-group">
                        <label for="name">Feed Name</label>
                        <input type="text" wire:model.defer="state.name" id="name" class="form-control @error('name') is-invalid @enderror"  placeholder="Enter Feed Name">
                            @error('name')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                   
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Save Feed"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
