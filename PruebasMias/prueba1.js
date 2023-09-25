$(document).ready(function (){

    var UnArray = 'Hola buenas tardes que tal';

    

    $(document).on('click', '#boton', () =>{

        var pruebaSplit = UnArray.split('Hola');

        alert(pruebaSplit);
        console.log(pruebaSplit);
    })
});