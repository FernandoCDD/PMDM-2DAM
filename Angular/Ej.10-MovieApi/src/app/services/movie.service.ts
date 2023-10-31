import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movies-list/movies-list.interface';
import { MovieDetailsResponse } from '../models/movies-list/movie-details.interface';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  
  getMostPopularList(): Observable<MovieListResponse>{
    return this.http.get<MovieListResponse>('https://api.themoviedb.org/3/movie/popular?api_key=02bd87fa25457bdbc212118905ab3ec0');
  }

  getMovieById(id: number){
    return this.http.get<MovieDetailsResponse>(`https://api.themoviedb.org/3/movie/${id}?api_key=02bd87fa25457bdbc212118905ab3ec0`);
  }
  
}
