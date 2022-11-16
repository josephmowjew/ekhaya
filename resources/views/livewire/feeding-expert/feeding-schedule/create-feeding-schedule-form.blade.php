<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Create Feeding Schedule Form</h4>
                <form class="forms-sample" autocomplete="off" wire:submit.prevent="createSchedule">   
                   
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
                        <label for="feed_id">Feed</label>
                        <select wire:model.defer="state.feed_id" class="form-control @error('feed_id') is-invalid @enderror">
                            <option value="">Select Feed</option>
                            @foreach($feeds as $feed)
                                <option value="{{ $feed->id }}">{{ $feed->name }}</option>
                            @endforeach
                        </select>
                            @error('feed_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                     <div class="form-group">
                        <label for="start-date">Start Date</label>
                        <input type="date" wire:model.defer="state.start-date" id="start-date" class="form-control @error('start-date') is-invalid @enderror">
                        
                            @error('start-date')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                    <div class="form-group">
                        <label for="feeding_times">Feeding Times</label>
                        <select wire:model.defer="state.feeding_times" class="form-control @error('feeding_times') is-invalid @enderror">
                            <option value="">Select User Feed</option>
                            @foreach($feeding_times as $feeding_times)
                                <option value="{{ $feeding_times }}">{{ $feeding_times }}</option>
                            @endforeach
                        </select>
                            @error('feeding_times')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                     <div class="form-group">
                        <label for="duration">Schedule Duration</label>
                        <select wire:model.defer="state.duration" class="form-control @error('duration') is-invalid @enderror">
                            <option value="">Select User Feed</option>
                            @foreach($durations as $duration)
                                <option value="{{ $duration }}">{{ $duration }}</option>
                            @endforeach
                        </select>
                            @error('duration')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                       
                    </div>
                     <div class="form-group">
                        <label for="amount">Feed Amount</label>
                        <input type="number" step="any" wire:model.defer="state.amount" id="amount" class="form-control @error('amount') is-invalid @enderror"  placeholder="Enter Feed Amount">
                            @error('amount')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                    </div>
       
                   
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Save Schedule"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>

<x-confirmation/>
