import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movies-list/movies-list.interface';
import { MovieDetailsResponse } from '../models/movies-list/movie-details.interface';

const MOVIE_BASE_URL = 'https://api.themoviedb.org/3/movie'

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  
  getMostPopularList(): Observable<MovieListResponse>{
    return this.http.get<MovieListResponse>(`${MOVIE_BASE_URL}/popular?api_key=02bd87fa25457bdbc212118905ab3ec0`);
  }

  getMostRatedList(): Observable<MovieListResponse>{
    return this.http.get<MovieListResponse>(`${MOVIE_BASE_URL}/top_rated?api_key=02bd87fa25457bdbc212118905ab3ec0`);
  }

  getMovieById(id: number): Observable<MovieDetailsResponse>{
    return this.http.get<MovieDetailsResponse>(`${MOVIE_BASE_URL}/${id}?api_key=02bd87fa25457bdbc212118905ab3ec0`);
  }
  
}
