import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { PersonDetailsResponse } from '../models/person-details.interface';
import { PersonajesListResponse } from '../models/personajes-list.interface';

@Injectable({
  providedIn: 'root'
})

export class PersonajesService{

    constructor(private http: HttpClient){}

    getPersonajesList(): Observable<PersonajesListResponse>{
       return this.http.get<PersonajesListResponse>('https://swapi.dev/api/people/');
    }

    getPersonajeById(id: string): Observable<PersonDetailsResponse>{
      return this.http.get<PersonDetailsResponse>('https://swapi.dev/api/people/'+id);
    }

    getListByPag(page: number): Observable<PersonajesListResponse>{
      return this.http.get<PersonajesListResponse>('https://swapi.dev/api/people/?page='+page);
    }

}