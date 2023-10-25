import { Component } from '@angular/core'; 
import { Estudiante, sexo } from '../model/alumno-interface';

const HORAS_TOTALES = 50;
const ESTUDIANTES: Estudiante[] = [
  {
    id: '1',
    nombre: 'Fernando', 
    apellido: 'Claro',
    sexo: sexo.Hombre,
    edad: 20,
    Asignaturas: [
      {
         nombre: 'PMDM',
         horas: 10
      },
      {
         nombre: 'AD',
         horas: 15
      },
      {
        nombre: 'PSP',
        horas: 15
      },
    ],
    pagado: true

  },
  {
    id: '2',
    nombre: 'Miguel', 
    apellido: 'Campos',
    sexo: sexo.Hombre,
    edad: 41,
    Asignaturas: [
      {
         nombre: 'PMDM',
         horas: 10
      },
      {
         nombre: 'DI',
         horas: 15
      }
    ],
    pagado: true

  }
]

@Component({
  selector: 'app-alumnos',
  templateUrl: './alumnos.component.html',
  styleUrls: ['./alumnos.component.css']
})

export class AlumnosComponent {

  //Estas son las variables que vamos a usar en el html.
  displayedColumns: string[] = ['id', 'nombre', 'apellido', 'asignaturas'];
  // Aquí estamos guardando la constante del array de estudiantes en una variable
  // Que es la que vamos a usar en el html.
  listaEstudiantes = ESTUDIANTES;

  checkedColumnID: boolean = true;
  checkedColumnNombre: boolean = true;
  checkedColumnApellido: boolean = true;
  checkedColumnSexo: boolean = true;
  checkedColumnEdad: boolean = true;
  checkedColumnAsignaturas: boolean = true;

  checkBoxClicked(){

    this.displayedColumns = [];
    if(this.checkedColumnID){
      this.displayedColumns.push('id');
    }
    if(this.checkedColumnNombre){
      this.displayedColumns.push('nombre');
    }
    if(this.checkedColumnApellido){
      this.displayedColumns.push('apellido');
    }
    if(this.checkedColumnAsignaturas){
      this.displayedColumns.push('asignaturas');
    }
  }
  
}
