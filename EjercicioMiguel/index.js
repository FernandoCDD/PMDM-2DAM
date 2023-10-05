$(document).ready(function(){

    alert('Prueba');

        $.ajax({

            type: 'GET',
            url: 'https://swapi.dev/api/planets/'

        }).done(function(resp){

            alert('Pruebkkkkka');
            var planetas = resp.results;
            
            planetas.forEach(function(planeta){
                
                var template = `<p><h1 class='planeta' idPlaneta='1'>${planeta.name} </h1></p>`
    
                $('#nombresPlanetas').append(template);
        
            })
       
        });
    

    $(document).on('click', '.planeta', function(){

        var idPlaneta = $(this).attr('idPlaneta');

        $.ajax({

            type: 'GET',
            url: "https://swapi.dev/api/planets/" + idPlaneta
        }).done(function(resp){

            var template = `<div class="col-md-3">
            <div class="card mb-2 border border-warning border-3">
            <img src=${cambiarFotoPlaneta(planeta)} alt="Darth Vader">
            </div>
            <div class="bg-dark text-warning border border-warning" id="ObiWan" idPersonaje="1">
            <span class="ps-4">Nombre: ${planeta.name}</span><br>
            <span class="ps-4">Periodo de Rotación: ${planeta.rotation_period}</span><br>
            <span class="ps-4">Periodo Orbital: ${planeta.orbital_rotation}</span> <br>
            </div>
        </div>`

            $('#modalPlaneta').append(template);
            
            $('#modalPlaneta').show();
        }) 
    })

    function cambiarFotoPlaneta(planeta) {

        var foto = planeta.name;

        switch (foto){

            case 'Tatooine':
                foto = 'https://static.wikia.nocookie.net/esstarwars/images/b/b0/Tatooine_TPM.png/revision/latest/thumbnail/width/360/height/450?cb=20131214162357';
                break;

            case 'Yavin IV':
                foto = 'https://static.wikia.nocookie.net/esstarwars/images/d/d4/Yavin-4-SWCT.png/revision/latest?cb=20170924222729'
                break;

            case 'Hoth':
                foto = 'https://static.wikia.nocookie.net/esstarwars/images/1/1d/Hoth_SWCT.png/revision/latest?cb=20170802030704'
                break;

            case 'Dagobah':
                foto = 'https://static.wikia.nocookie.net/esstarwars/images/1/1c/Dagobah.jpg/revision/latest?cb=20061117132132';
                break;

            default:
                foto = null;
                break;

        return foto;

        }
    }

})
