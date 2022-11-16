
<div>
 <x-loading-indicator/>
{{-- Content --}}
<div class="row">
  <div class="col-lg-12">
 <div class="mb-2 ml-3 d-flex justify-content-between">
    <a href="{{ route('ranch-manager.purchases.create') }}">
      <button class="btn btn-primary "><i class="mdi mdi-plus-circle"></i> Add New Cow Record</button>
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
                        <th>Farmer</th>
                        <th>Total Price Paid</th>
                        <th>Total Calves</th>
                        <th>Remaining To Be Added</th>
                        <th>Options</th>
                      </tr>
                    </thead>
                    <tbody wire:loading.class="text-muted">
                      @forelse($purchases as $purchase)
                         <tr>
                            <td>
                              {{ $purchase->herd->name  }}
                            </td>
                            <td>
                               {{ $purchase->farmer->firstName  }}
                            </td>
                            <td>
                              {{ $purchase->total_price }} 
                            </td>
                            <td>
                              {{ $purchase->total_calves  }}
                            </td>
                            <td class="{{ $purchase->total_calves - $purchase->cows->count() > 1? 'text-danger': 'text-success'  }}">
                              {{ $purchase->total_calves - $purchase->cows->count()}}
                              @if($purchase->total_calves - $purchase->cows->count() > 1)
                                <a href="{{ route('ranch-manager.purchases.cows',$purchase->id) }}">Add Calves</a>
                              @else
                                <a href="{{ route('ranch-manager.purchases.cows',$purchase->id) }}">View Calves</a>
                              @endif
                            </td>
                            
                            <td>
                              <a href="{{ route('ranch-manager.purchases.edit',$purchase) }}" >
                                <i class="mdi mdi-table-edit"></i> 
                              </a>
                              <a href="#" wire:click.prevent="confirmPurchaseRemoval({{ $purchase->id }})">
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
                  {{ $purchases->links() }}
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
          Delete Purchase
          </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure you want to delete this purchase record?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close"></i> Close</button>
          <button type="submit" wire:click.prevent="deletePurchase" class="btn btn-danger"  >
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