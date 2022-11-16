<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Select Report Duration</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="createReport">   
                   
                    <div class="form-group">
                        <label for="start_date">Select Start Date</label>
                        <select wire:model.defer="state.start_date" class="form-control @error('start_date') is-invalid @enderror">
                             <option value="">Select Start Date</option>
                             <option value="2017">2017</option>
                             <option value="2018">2018</option>
                             <option value="2019">2019</option>
                             <option value="2020">2020</option>
                             <option value="2021">2021</option>
                             <option value="2022">2022</option>
                        </select>
                            @error('start_date')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                     <div class="form-group">
                        <label for="end_date">Select End Date</label>
                        <select wire:model.defer="state.end_date" class="form-control @error('end_date') is-invalid @enderror">
                             <option value="">Select End Date</option>
                             <option value="2017">2017</option>
                             <option value="2018">2018</option>
                             <option value="2019">2019</option>
                             <option value="2020">2020</option>
                             <option value="2021">2021</option>
                             <option value="2022">2022</option>
                        </select>
                            @error('end_date')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
                   
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Generate Report"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
