import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { BerriesListResponse } from '../models/berries-list.interface';

@Injectable({
  providedIn: 'root'
})

export class BerriesService{

    constructor(private http: HttpClient){}

    getBerriesList(): Observable<BerriesListResponse>{
       return this.http.get<BerriesListResponse>('https://pokeapi.co/api/v2/berry');
    }

    getListByPag(page: number): Observable<BerriesListResponse>{
        return this.http.get<BerriesListResponse>('https://pokeapi.co/api/v2/berry/?page='+page);
      }

}