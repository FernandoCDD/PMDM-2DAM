import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { initializeApp, provideFirebaseApp } from '@angular/fire/app';
import { getFirestore, provideFirestore } from '@angular/fire/firestore';
import { getDatabase, provideDatabase } from '@angular/fire/database';
import { ReactiveFormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    provideFirebaseApp(() => initializeApp({"projectId":"tictactoe-b3692","appId":"1:481229489728:web:677052d856066711cf81a5","databaseURL":"https://tictactoe-b3692-default-rtdb.europe-west1.firebasedatabase.app","storageBucket":"tictactoe-b3692.appspot.com","apiKey":"AIzaSyCWjNXARLh5brNpq-bJt8OSQY1rmTeqySg","authDomain":"tictactoe-b3692.firebaseapp.com","messagingSenderId":"481229489728","measurementId":"G-FX35HZWXK4"})),
    provideFirestore(() => getFirestore()),
    provideDatabase(() => getDatabase()),
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
