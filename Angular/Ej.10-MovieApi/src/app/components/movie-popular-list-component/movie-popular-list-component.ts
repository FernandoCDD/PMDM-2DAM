import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieDetailsResponse } from 'src/app/models/movies-list/movie-details.interface';
import { Movies } from 'src/app/models/movies-list/movies-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-popular-list-component',
  templateUrl: './movie-popular-list-component.html',
  styleUrls: ['./movie-popular-list-component.component.css']
})
export class MoviePopularListComponent implements OnInit{

  movieList: Movies[] = [];
  movieDetails!: MovieDetailsResponse;

  constructor(private movieService: MovieService, private modalService: NgbModal){}

  
  verDetalles(id: number, modal: any){
    this.movieService.getMovieById(id).subscribe(movie=>{
      this.movieDetails = movie;
  })
  this.modalService.open(modal);
  }

  ngOnInit(): void {
    this.movieService.getMostPopularList().subscribe(respuesta =>{
      this.movieList = respuesta.results;
    })
  }

}