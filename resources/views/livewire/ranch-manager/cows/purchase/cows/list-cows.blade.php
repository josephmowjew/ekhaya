
<div>
 <x-loading-indicator/>
{{-- Content --}}
<div class="row">
  <div class="col-lg-12">
 <div class="mb-2 ml-3 d-flex justify-content-between">
   
   @if($purchase->cows->count() < $purchase->total_calves)
    <a href="{{ route('ranch-manager.purchases.cows.create', $purchase) }}">
      <button class="btn btn-primary "><i class="mdi mdi-plus-circle"></i> Add Cow Record</button>
    </a>
    @endif
   <x-search-input wire:model="searchTerm"/>
  </div>
  <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Tag</th>
                        <th>Weight</th>
                        <th>Age</th>
                        <th>Color</th>
                        <th>Gender</th>
                        <th>Breed</th>
                        <th>Options</th>
                      </tr>
                    </thead>
                    <tbody wire:loading.class="text-muted">
                      @forelse($cows as $cow)
                         <tr>
                            <td>
                              {{ $cow->tag  }}
                            </td>
                            <td>
                               {{ $cow->weight  }}
                            </td>
                            <td>
                              {{ $cow->age }} 
                            </td>
                            <td>
                             
                              {{ $cow->color }} 
                            </td>
                            <td>
                              {{ $cow->gender  }}
                            </td>
                             <td>
                              {{ $cow->breed->name  }}
                            </td>
                            
                            <td>
                              <a href="{{ route('ranch-manager.purchases.cows.edit',$cow) }}" >
                                <i class="mdi mdi-table-edit"></i> 
                              </a>
                              <a href="#" wire:click.prevent="confirmCowRemoval({{ $cow->id }})">
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
                  {{ $cows->links() }}
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
          Delete Cow
          </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure you want to delete this cow record?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close"></i> Close</button>
          <button type="submit" wire:click.prevent="deleteCow" class="btn btn-danger"  >
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