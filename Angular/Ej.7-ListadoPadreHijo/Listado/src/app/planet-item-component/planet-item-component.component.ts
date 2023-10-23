import { Component, Input } from '@angular/core';
import { Planetas } from '../models/planet-list.interface';

@Component({
  selector: 'app-planet-item-component',
  templateUrl: './planet-item-component.component.html',
  styleUrls: ['./planet-item-component.component.css']
})
export class PlanetItemComponentComponent {

  @Input() planetas!: Planetas;
}
