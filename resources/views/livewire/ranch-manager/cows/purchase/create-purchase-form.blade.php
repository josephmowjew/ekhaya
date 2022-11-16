<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Create Purchase Record Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="createPurchase">   
                   
                    <div class="form-group">
                        <label for="herd_id">Herd</label>
                        <select wire:model.defer="state.herd_id" class="form-control @error('herd_id') is-invalid @enderror">
                            <option value="">Select Herd</option>
                            @foreach($herds as $herd)
                                <option value="{{ $herd->id }}">{{ $herd->name }}</option>
                            @endforeach
                        </select>
                            @error('herd_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>

                     <div class="form-group">
                        <label for="farmer_id">Farmer</label>
                        <select wire:model.defer="state.farmer_id" class="form-control @error('farmer_id') is-invalid @enderror">
                            <option value="">Select Farmer</option>
                            @foreach($farmers as $farmer)
                                <option value="{{ $farmer->id }}">{{ $farmer->firstName }} {{ $farmer->surname }}</option>
                            @endforeach
                        </select>
                            @error('farmer_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                    
                   
                   
                     <div class="form-group">
                        <label for="total_price">Total Price (MWK)</label>
                        <input type="number" step="any" wire:model.defer="state.total_price" id="total_price" class="form-control @error('total_price') is-invalid @enderror"  placeholder="Enter Total Price">
                            @error('total_price')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                    <div class="form-group">
                        <label for="total_calves">Total Calves Being Purchased</label>
                        <input type="number" step="any" wire:model.defer="state.total_calves" id="total_calves" class="form-control @error('total_calves') is-invalid @enderror"  placeholder="Enter Total Calves">
                            @error('total_calves')
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
