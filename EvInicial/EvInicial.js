$(document).ready(function (){

    $('#suma').hide();
    $('#suma').text(generarSuma);

   $(document).on('click', '#publicar', () =>{

       var suma = $('#suma').val();
       var numero = console.log(getRandomInt(9));

       if (suma == ''){
        $('#suma').addClass('is-invalid');
       }else{

        
       }
   })
})