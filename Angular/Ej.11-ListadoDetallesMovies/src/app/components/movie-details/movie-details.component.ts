import { Component, OnInit, inject } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MovieDetailResponse } from 'src/app/models/movie-list/movie-details.interface';
import { MovieService } from 'src/app/services/movie.service';


@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})

export class MovieDetailsComponent implements OnInit{

  //Esto es una clase de angular que nos coje la ruta activa
  route: ActivatedRoute = inject(ActivatedRoute);
  movieDetail!: MovieDetailResponse;
  movieId : number = 0;

  //Aquí estamos conviertiendo el id a número, del route cojemos el snapshot,  que es lo que vemos y con
  //el params son los parámetrod que tiene, y los corchetes es lo que va a coger, y va con dos pnutos en el routing module.
  constructor(private movieService: MovieService){
    this.movieId = Number(this.route.snapshot.params['id']);
  }

  ngOnInit(): void {
    this.movieService.getMovieById(this.movieId).subscribe(resp =>{
      this.movieDetail = resp;
    });
  }

  getMovieImage(){
    console.log(this.movieDetail);
    return `https://image.tmdb.org/t/p/w220_and_h330_face${this.movieDetail.poster_path}`;
  }
  
}
