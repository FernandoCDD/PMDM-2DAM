import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Personajes } from 'src/models/personajes-list.interface';
import { PersonajesService } from '../services/personajes.service';
import { PersonDetailsResponse } from 'src/models/person-details.interface';

@Component({
  selector: 'app-personajes-list',
  templateUrl: './personajes-list.component.html',
  styleUrls: ['./personajes-list.component.css']
})
export class PersonajesListComponent implements OnInit{

    listadoPersonajes: Personajes[] = [];
    personDetails!: PersonDetailsResponse;
    page = 1;
    count = 1;
    pageSize = 20;

    constructor(private personajesService: PersonajesService, private modalService: NgbModal){}
   
    verDetalles(id: string, modal: any){
        this.personajesService.getPersonajeById(id).subscribe(person=>{
            this.personDetails = person;
        })
        this.modalService.open(modal);
    }
    
    ngOnInit(): void {
        this.personajesService.getPersonajesList().subscribe(respuesta => {
            this.listadoPersonajes = respuesta.results;
            this.count = respuesta.count;
        })
    }

    cambiarPagina(){
        this.personajesService.getListByPag(this.page).subscribe(resp => {
            this.listadoPersonajes = resp.results;
        })
    }
}
