<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Create Vaccination Schedule Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="createVaccinationRecord">   
                   
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
                        <label for="vaccine_id">Vaccine</label>
                        <select wire:model.defer="state.vaccine_id" class="form-control @error('vaccine_id') is-invalid @enderror">
                            <option value="">Select Vaccine</option>
                            @foreach($vaccines as $vaccine)
                                <option value="{{ $vaccine->id }}">{{ $vaccine->name }}</option>
                            @endforeach
                        </select>
                            @error('vaccine_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                     <div class="form-group">
                        <label for="sdate-administered">Date Administered</label>
                        <input type="date" wire:model.defer="state.date-administered" id="date-administered" class="form-control @error('date-administered') is-invalid @enderror">
                        
                            @error('date-administered')
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
