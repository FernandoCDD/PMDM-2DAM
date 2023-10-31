import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Movies } from 'src/app/models/movies-list/movies-list.interface';

@Component({
  selector: 'app-movie-item-component',
  templateUrl: './movie-item-component.html',
  styleUrls: ['./movie-item-component.component.css']
})
export class MovieItemComponent {

  @Input() movie!: Movies;
  @Output() movieClick = new EventEmitter <number>

  getMovieImage(){
    return 'https://image.tmdb.org/t/p/w500/'+this.movie.poster_path;
  }

  getMovieId(){
    return this.movie.id;
  }
  
  viewDetails(){
    this.movieClick.emit (this.movie.id);
  }
  
} 
