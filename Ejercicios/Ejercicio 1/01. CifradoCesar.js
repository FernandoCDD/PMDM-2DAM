$(document).ready(function(){

    var abecedario = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
     'K','L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

    $(document).on('click', '#botonCifrar', function(){

        var codigo = $('#codigo').val();
        var posiciones = $('#numPosiciones').val();
        var codigoUpper = codigo.toUpperCase();

        alert(codigoCesar(codigoUpper, posiciones));

    })

    function codigoCesar (codigoUpper, posiciones) {

        var caracterEncriptado;

        for (var i = 0; i < codigoUpper.lenght; i++) {
            
            var caracterActual = codigoUpper[i];

            if (caracterActual.match(/A-Z]/)){

                var codAsci = caracterActual.charCodeAt(0);
                var baseAlfabeto = 97;
                var caracterCambiado = ((codAsci - baseAlfabeto + posiciones) % 26) + baseAlfabeto;

                caracterEncriptado = String.fromCharCode(caracterCambiado);

                var codigoCifrado = codigoCifrado + caracterEncriptado;

            }else{
                var codigoCifrado = codigoCifrado + caracterActual;
            }
        }
        return codigoCifrado;
    }
});