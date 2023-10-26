import { Component, OnInit} from '@angular/core';
import { Personajes } from '../models/models/personajes-list.interface';
import { PersonajeDetailResponse } from '../models/models/personajeDetail.interface';
import { PersonajeServicio } from '../services/personaje.servicio.ts.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-personajes-list',
  templateUrl: './personajes-list.component.html',
  styleUrls: ['./personajes-list.component.css']
})
export class PersonajesListComponent implements OnInit{

  listadoPersonajes: Personajes[] = [];
  personDetails!: PersonajeDetailResponse;  

  constructor (private personajeServicio: PersonajeServicio, private modalService: NgbModal){}

  ngOnInit(): void {
    this.personajeServicio.getPersonajeList().subscribe
  }



}
