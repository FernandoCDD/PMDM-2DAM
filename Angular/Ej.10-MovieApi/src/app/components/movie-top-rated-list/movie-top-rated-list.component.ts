import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieDetailsResponse } from 'src/app/models/movies-list/movie-details.interface';
import { Movies } from 'src/app/models/movies-list/movies-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-top-rated-list',
  templateUrl: './movie-top-rated-list.component.html',
  styleUrls: ['./movie-top-rated-list.component.css']
})
export class MovieTopRatedListComponent implements OnInit{

  trMovieList: Movies[] = [];
  trMovieDetails!: MovieDetailsResponse;
  
  constructor(private movieService: MovieService, private modalService: NgbModal){}

  
  verDetalles(id: number, modal: any){
    this.movieService.getMovieById(id).subscribe(movie=>{
      this.trMovieDetails = movie;
  })
  this.modalService.open(modal);
  }

  ngOnInit(): void {
    this.movieService.getMostRatedList().subscribe(respuesta =>{
      this.trMovieList = respuesta.results;
    })
  }

}
