export enum sexo {
  Hombre,
  Mujer
}

export interface Estudiante {
    id: string;
    nombre: string;
    apellido: string;
    sexo: sexo;
    edad: number;
    Asignaturas: Asignaturas[];
    pagado?: boolean;
  }
  
  export interface Asignaturas {
    nombre: string;
    horas: number;
  }
  