import { Component, OnInit } from '@angular/core';
import { Movie } from 'src/app/models/movie-list/movie-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.css']
})
export class MovieListComponent implements OnInit{

  movieList: Movie[] = [];
  page = 1;
  totalMovies = 822273;
  pageSize = 20;

  constructor(private movieService: MovieService){}

  ngOnInit(): void {
    
    this.movieService.getMostPopularList().subscribe(resp =>{
      this.movieList = resp.results;
      this.page = resp.page
    })
  }

  changePage(){
    this.movieService.getListByPag(this.page).subscribe(resp => {
        this.movieList = resp.results;
    })
  }
}
