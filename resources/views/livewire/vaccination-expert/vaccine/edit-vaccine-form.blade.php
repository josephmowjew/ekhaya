<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Edit Vaccine Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="updateVaccine">   
                    <div class="form-group">
                        <label for="name">Vaccine Name</label>
                        <input type="text" wire:model.defer="state.name" id="name" class="form-control @error('name') is-invalid @enderror"  placeholder="Enter Vaccine Name">
                            @error('name')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                   
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Update Vaccine"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
