import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { PersonajeListComponent } from './personaje-list/personaje-list.component';
import { PersonajeItemComponent } from './personaje-item/personaje-item.component';

@NgModule({
  declarations: [
    AppComponent,
    PersonajeListComponent,
    PersonajeItemComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
