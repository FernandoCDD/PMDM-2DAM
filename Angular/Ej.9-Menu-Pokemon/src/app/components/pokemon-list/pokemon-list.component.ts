import { Component, OnInit } from '@angular/core';
import { Pokemons } from 'src/app/models/pokemon-list.interface';
import { PokemonService } from 'src/app/services/pokemon.service';

@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent implements OnInit{

  pokemonList: Pokemons[] = [];
  page = 1;
  count = 1;
  pageSize = 20;

  constructor(private pokemonService: PokemonService){}

  ngOnInit(): void {
    this.pokemonService.getPokemonList().subscribe(result =>{
      this.pokemonList = result.results;
      this.count = result.count;
    })
  }

  changePage(){
    this.pokemonService.getListByPag(this.page).subscribe(result => {
        this.pokemonList = result.results;
    })
  }
  
}
