  @push('js')
      <script>
        $(document).ready(function(){

            toastr.options = {
            "positionClass": "toast-top-right",
            "progressBar": true,
            }

            window.addEventListener('hide-form',event =>{
            $("#form").modal("hide");
            toastr.success(event.detail.message,'Success');
            });

            window.addEventListener('hide-confirmation-form', event =>{
            $("#confirmationModal").modal("hide");
            toastr.success(event.detail.message,'Success');
            
            });

            window.addEventListener('alert',event =>{
            toastr.success(event.detail.message,'Success');
            })

            window.addEventListener('alert-error',event =>{
            toastr.error(event.detail.message,'Error');
            })

        });
    </script>
    <script>
        window.addEventListener('show-form',event =>{
        $("#form").modal("show");
        })

        window.addEventListener('show-delete-modal',event =>{
        $("#confirmationModal").modal("show");
        })


    </script>
  @endpush
  
