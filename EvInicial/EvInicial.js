$(document).ready(function (){
    
   $(document).on('click', '#publicar', () =>{

    var numAleatorio = getRandomInt(9);
    var titulo = $('#titulo').val();
    var descripcion = $('#descripcion').val();
    var result= $('#result').val();

       if (titulo == ''){
        $('#titulo').addClass('is-invalid');
       }
       if (descripcion == ''){
        $('#descripcion').addClass('is-invalid');
       }
       if (result == ''){
        $('#pregunta').addClass('is-invalid');      
       }

   })

   $(document).on('click', '#btnUrl', () =>{
    var url = crearURl(titulo);
    $('#url').val(url);
   });

    function getRandomInt(max) {
     return Math.floor(Math.random() * Math.floor(max));
    }

    function crearURl (titulo){

        var url = titulo.replace(/ /g, '-').toLowerCase();
        return url;
    }
})