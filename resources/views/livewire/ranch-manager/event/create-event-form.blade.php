<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Create Event Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="createEvent">   
                    <div class="form-group">
                        <label for="title">Event Title</label>
                        <input type="text" wire:model.defer="state.title" id="title" class="form-control @error('title') is-invalid @enderror"  placeholder="Enter Event Title">
                            @error('title')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
     
                     <div class="form-group">
                        <label for="role_id">Role</label>
                        <select wire:model.defer="state.role_id" class="form-control @error('role_id') is-invalid @enderror">
                            <option value="">Select User Role</option>
                            @foreach($roles as $role)
                                <option value="{{ $role->id }}">{{ $role->name }}</option>
                            @endforeach
                        </select>
                            @error('role_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                     <div class="form-group">
                        <label for="date">Event Date</label>
                        <input type="date" id="date" wire:model.defer="state.date" class="form-control @error('date') is-invalid @enderror"  placeholder="Select Date">
                            @error('date')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="description">Event Description</label>
                        <textarea rows="2"  id="description" wire:model.defer="state.description" class="form-control @error('description') is-invalid @enderror"  placeholder="Enter Description">
                        </textarea>
                            @error('description')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Save Event"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
