import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movie-list/movie-list.interface';


@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }
 
  getMostPopularList(): Observable<MovieListResponse>{
    return this.http.get<MovieListResponse>(`https://api.themoviedb.org/3/movie/popular?api_key=02bd87fa25457bdbc212118905ab3ec0`);
  }

  getListByPag(page: number): Observable<MovieListResponse>{
    return this.http.get<MovieListResponse>(`https://api.themoviedb.org/3/movie/popular?api_key=02bd87fa25457bdbc212118905ab3ec0&&page=${page}`);
  }

  //Esto devolverá una página externa, pasandole el id de la película.

  // getMovieById(id: number): Observable<MovieDetailsResponse>{
  //   return 
  // }
}
