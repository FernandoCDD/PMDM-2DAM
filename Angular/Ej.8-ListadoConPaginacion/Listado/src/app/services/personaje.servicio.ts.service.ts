import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { PersonajeListResponse } from '../models/models/personajes-list.interface';
import { PersonajeDetailResponse } from '../models/models/personajeDetail.interface';

@Injectable({
  providedIn: 'root'
})
export class PersonajeServicio {

  constructor(private http: HttpClient) { }

  getPersonajeList(): Observable<PersonajeListResponse>{
    return this.http.get<PersonajeListResponse>('https://rickandmortyapi.com/api/character');
  }

  getPersonajeDetail(id: string): Observable<PersonajeDetailResponse>{
    return this.http.get<PersonajeDetailResponse>('https://rickandmortyapi.com/api/character/'+id);
  }
}
