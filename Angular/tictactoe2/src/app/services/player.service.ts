import { Injectable } from '@angular/core';
import { Firestore } from '@angular/fire/firestore';
import { addDoc, collection } from 'firebase/firestore';

const COLLECTION_MATCHES = 'matches'
@Injectable({
  providedIn: 'root'
})
export class PlayerService {

  constructor(public firestore: Firestore) { }

  async createMatch(id: string){
    const docRef = await addDoc(collection(this.firestore, COLLECTION_MATCHES),{
      idPartida: id
    });
    console.log('ID: ', docRef.id);
  }
}
