
<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Create Farmer Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="createFarmer">   
                    <div class="form-group">
                        <label for="firstName">First Name</label>
                        <input type="text" wire:model.defer="state.firstName" id="firstName" class="form-control @error('firstName') is-invalid @enderror"  placeholder="Enter First Name">
                            @error('firstName')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="surame">Surname</label>
                        <input type="text" wire:model.defer="state.surname" id="surname" class="form-control @error('surname') is-invalid @enderror"  placeholder="Enter Surname">
                            @error('surname')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                     <div class="form-group">
                        <label for="gender">Gender</label>
                        <select wire:model.defer="state.gender" id="gender" class="form-control @error('gender') is-invalid @enderror">
                            <option value="">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                            @error('gender')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                    
                    <div class="form-group">
                        <label for="locationName">Location</label>
                        <input type="text" wire:model.defer="state.locationName" id="locationName" class="form-control @error('locationName') is-invalid @enderror"  placeholder="Enter Location Name">
                            @error('locationName')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="latitude">Contact Number</label>
                        <input type="text" maxlength="16" minlength="10"  wire:model.defer="state.contact" id="contact" rows="3" class="form-control @error('contact') is-invalid @enderror"  placeholder="Enter Contact Number"/>
                            @error('contact')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                   
                     <div class="form-group">
                        <label for="latitude">Latitude</label>
                        <input type="number" step="any" max="90" min="-90" wire:model.defer="state.latitude" id="latitude" rows="3" class="form-control @error('latitude') is-invalid @enderror"  placeholder="Enter Latitude"/>
                            @error('latitude')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="longitude">Longitude</label>
                        <input type="number" step="any" max="90" min="-90"  wire:model.defer="state.longitude" id="longitude" rows="3" class="form-control @error('longitude') is-invalid @enderror"  placeholder="Enter Latitude"/>
                            @error('longitude')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    
                   
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Save Farmer"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
