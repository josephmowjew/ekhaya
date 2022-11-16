<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Update User Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="updateUser">   
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
                        <label for="email">Email</label>
                        <input type="email" wire:model.defer="state.email" id="email" class="form-control @error('email') is-invalid @enderror"  placeholder="Enter Email">
                            @error('email')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="phoneNumber">Phone Number</label>
                        <input type="text" wire:model.defer="state.phoneNumber" class="form-control @error('phoneNumber') is-invalid @enderror"  placeholder="Enter Phone Number">
                            @error('phoneNumber')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                     <div class="form-group">
                        <label for="address">Address</label>
                        <textarea  wire:model.defer="state.address" id="address" rows="3" class="form-control @error('address') is-invalid @enderror"  placeholder="Enter Address">
                        </textarea>
                            @error('email')
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
                        <label for="password">Password</label>
                        <input type="password" id="password" wire:model.defer="state.password" class="form-control @error('password') is-invalid @enderror"  placeholder="Enter Password">
                            @error('password')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="password_confirmation">Confirm Password</label>
                        <input type="password" id="password_confirmation" wire:model.defer="state.password_confirmation" class="form-control @error('password_confirmation') is-invalid @enderror"  placeholder="Confirm Password">
                            @error('password_confirmation')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Save User"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>
<x-confirmation/>