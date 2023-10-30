import { Component, Input } from '@angular/core';
import { Berries } from 'src/app/models/berries-list.interface';

@Component({
  selector: 'app-berries-item',
  templateUrl: './berries-item.component.html',
  styleUrls: ['./berries-item.component.css']
})
export class BerriesItemComponent {

  @Input() berry!: Berries;

  getBerryImage(){

    const id = this.berry.url.split('/')[6];
    return `https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${id}.png`;
  }
}
