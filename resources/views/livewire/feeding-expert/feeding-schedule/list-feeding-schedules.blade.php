
<div>
 <x-loading-indicator/>
{{-- Content --}}
<div class="row">
  <div class="col-lg-12">
 <div class="mb-2 ml-3 d-flex justify-content-between">
    <a href="{{ route('feeding-expert.feeding-schedules.create') }}">
      <button class="btn btn-primary "><i class="mdi mdi-plus-circle"></i> Add Feeding Schedule</button>
    </a>
    
   <x-search-input wire:model="searchTerm"/>
  </div>
  <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                       <th>Herd</th>
                        <th>Feed</th>
                        <th>Amount</th>
                        <th>Feeding Times</th>
                        <th>Duration</th>
                        <th>Options</th>
                      </tr>
                    </thead>
                    <tbody wire:loading.class="text-muted">
                      @forelse($feedingSchedules as $feedingSchedule)
                         <tr>
                            <td>
                              {{ $feedingSchedule->herd->name  }}
                            </td>
                            <td>
                               {{ $feedingSchedule->feed->name  }}
                            </td>
                            <td>
                              {{ $feedingSchedule->amount }} 
                            </td>
                            <td>
                              {{ $feedingSchedule->feeding_times  }}
                            </td>
                            <td>
                              {{ $feedingSchedule->duration }}
                            </td>
                            
                            
                            <td>
                              <a href="{{ route('feeding-expert.feeding-schedules.edit',$feedingSchedule) }}" >
                                <i class="mdi mdi-table-edit"></i> 
                              </a>
                              <a href="#" wire:click.prevent="confirmFeedingScheduleRemoval({{ $feedingSchedule->id }})">
                                <i class="mdi mdi-delete text-danger"></i> 
                              </a>
                            </td>
                      </tr>
                      @empty
                       <tr>
                         <td colspan="8">
                            <p class="text-center">No results found</p>
                         </td>
                       </tr>
                      @endforelse()
                     
                    
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="card-footer d-flex justify-content-end">
                  {{ $feedingSchedules->links() }}
              </div>
            </div>
      </div>

  </div>
 </div>
{{-- /Content --}}

  <!-- Modal -->
  <div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" wire:ignore.self>
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">
          Delete Schdule
          </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure you want to delete this schdule?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close"></i> Close</button>
          <button type="submit" wire:click.prevent="deleteSchedule" class="btn btn-danger"  >
            <i class="mdi mdi-delete"></i>
            Yes
            </button>
        </div>
        </form>
        
      </div>
    </div>
  </div>
  <!-- Modal -->

</div>
<x-confirmation/>