@push('styles')
<style>
  #map {
          height: 400px;
        }
</style>
@endpush
<div>
 <x-loading-indicator/>
{{-- Content --}}
<div class="row">
  <div class="col-lg-12">
    <div class="mb-2 ml-3 d-flex justify-content-between">
        <a href="{{ route('ranch-manager.farmers.create') }}">
          <button class="btn btn-primary "><i class="mdi mdi-plus-circle"></i> Add Farmer</button>
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
                    <th>First Name</th>
                    <th>Surname</th>
                    <th>Gender</th>
                    <th>Contact Number</th>
                    <th>Location Name</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                  <th>Options</th>
                </tr>
              </thead>
              <tbody wire:loading.class="text-muted">
                @forelse($farmers as $farmer)
                    <tr>
                      
                      <td>
                        {{ $farmer->firstName }}
                      </td>
                      <td>
                        {{ $farmer->surname }}
                      </td>
                      <td>
                        {{ $farmer->gender }}
                      </td>
                      <td>
                        {{ $farmer->contact }}
                      </td>
                      <td>
                        {{ $farmer->locationName }}
                      </td>
                      <td>
                        {{ $farmer->latitude }}
                      </td>
                      <td>
                        {{ $farmer->longitude }}
                      </td>
                      <td>
                        <a href="{{ route('ranch-manager.farmers.edit',$farmer) }}" >
                          <i class="mdi mdi-table-edit"></i> 
                        </a>
                        <a href="#" wire:click.prevent="confirmFarmerRemoval({{ $farmer->id }})">
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
            {{ $farmers->links() }}
        </div>
      </div>
    </div>
    <div class="col-lg-12">
       <div id="map"></div>
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
          Delete Farmer
          </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure you want to delete this Farmer?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close"></i> Close</button>
          <button type="submit" wire:click.prevent="deteleFarmer" class="btn btn-danger"  >
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

@push('js')
   <script type="text/javascript">
        function initMap() {
            const myLatLng = { lat: -15.786111, lng: 35.005833 };
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 8,
                center: myLatLng,
            });
  
            var locations = {{ Js::from($locations) }}
  
            var infowindow = new google.maps.InfoWindow();
  
            var marker, i;
              
            for (i = 0; i < locations.length; i++) {  
                  marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    map: map
                  });
                    
                  google.maps.event.addListener(marker, 'click', (function(marker, i) {
                    return function() {
                      infowindow.setContent(locations[i][0]);
                      infowindow.open(map, marker);
                    }
                  })(marker, i));
  
            }
        }
  
        window.initMap = initMap;
      </script>
      <script type="text/javascript"
        src="https://maps.google.com/maps/api/js?key=AIzaSyAdkf3BszAUDRTv49FrIvtMTN0PUEYUZAM&callback=initMap" ></script> 
        
        @endpush
<x-confirmation/>