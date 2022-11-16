<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Edit Cow Record Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="updateCow">   
                   
                   
                    <div class="form-group">
                        <label for="tag">Tag</label>
                        <input type="text"  wire:model.defer="state.tag" id="tag" class="form-control @error('tag') is-invalid @enderror" disabled  placeholder="Enter Tag">
                            @error('tag')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                     <div class="form-group">
                        <label for="weight">Weight</label>
                        <input type="number" step="any" wire:model.defer="state.weight" id="weight" class="form-control @error('weight') is-invalid @enderror"  placeholder="Enter Cow Weight">
                            @error('weight')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="age">Age</label>
                        <input type="number" step="any" wire:model.defer="state.age" id="age" class="form-control @error('age') is-invalid @enderror"  placeholder="Enter Calve Age">
                            @error('age')
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
                        <label for="color">Color</label>
                        <input type="text" wire:model.defer="state.color" id="color" class="form-control @error('color') is-invalid @enderror"  placeholder="Enter Color">
                            @error('color')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                     <div class="form-group">
                        <label for="breed_id">breed</label>
                        <select wire:model.defer="state.breed_id" class="form-control @error('breed_id') is-invalid @enderror">
                            <option value="">Select Breed</option>
                            @foreach($breeds as $breed)
                                <option value="{{ $breed->id }}">{{ $breed->name }}</option>
                            @endforeach
                        </select>
                            @error('breed_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
       
       
                   
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Save Record"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
