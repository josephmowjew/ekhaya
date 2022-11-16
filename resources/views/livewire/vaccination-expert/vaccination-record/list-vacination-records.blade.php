
<div>
 <x-loading-indicator/>
{{-- Content --}}
<div class="row">
  <div class="col-lg-12">
 <div class="mb-2 ml-3 d-flex justify-content-between">
    <a href="{{ route('vaccination-expert.vaccination-records.create') }}">
      <button class="btn btn-primary "><i class="mdi mdi-plus-circle"></i> Add Vaccination Record</button>
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
                        <th>Vaccine</th>
                        <th>Date Administered</th>
                        <th>Options</th>
                      </tr>
                    </thead>
                    <tbody wire:loading.class="text-muted">
                      @forelse($vaccinationRecords as $vaccinationRecord)
                         <tr>
                            <td>
                              {{ $vaccinationRecord->herd->name  }}
                            </td>
                            <td>
                               {{ $vaccinationRecord->vaccine->name  }}
                            </td>
                            <td>
                              {{ $vaccinationRecord['date-administered'] }} 
                            </td>
                            
                            <td>
                              <a href="{{ route('vaccination-expert.vaccination-records.edit',$vaccinationRecord) }}" >
                                <i class="mdi mdi-table-edit"></i> 
                              </a>
                              <a href="#" wire:click.prevent="confirmVaccinationRecordRemoval({{ $vaccinationRecord->id }})">
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
                  {{ $vaccinationRecords->links() }}
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
          <button type="submit" wire:click.prevent="deleteVaccinationRecord" class="btn btn-danger"  >
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