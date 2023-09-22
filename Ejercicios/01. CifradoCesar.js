$(document).ready(function(){

    var abecedario = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
     'K','L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

    $(document).on('click', '#botonCifrar', function(){

        var codigo = $('#codigo').val();

        var posiciones = $('#numPosiciones').val();

        var codigoCifrado = $('#resultado').val();

        var codigoUpper = codigo.toUpperCase();

        //alert(abecedario);
        alert(codigoUpper);

                

    })
});