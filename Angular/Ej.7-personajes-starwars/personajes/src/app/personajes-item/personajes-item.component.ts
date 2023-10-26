import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Personajes } from 'src/models/personajes-list.interface';

@Component({
  selector: 'app-personajes-item',
  templateUrl: './personajes-item.component.html',
  styleUrls: ['./personajes-item.component.css']
})
export class PersonajesItemComponent {
  @Input() personaje!: Personajes;
  @Output() personajeClick = new EventEmitter <string>();

  getPersonajeImage(){
    const id = this.personaje.url.split('/')[5];
    return `https://starwars-visualguide.com/assets/img/characters/${id}.jpg`;
  }

  getPersonajeId(){
    const id = this.personaje.url.split('/')[5];
    console.log(id)
    return id;
  }

  verDetalles(){
    this.personajeClick.emit(this.getPersonajeId());
  }
}
