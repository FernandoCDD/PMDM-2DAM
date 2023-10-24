import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { PersonajesListComponent } from './personajes-list/personajes-list.component';
import { PersonajesItemComponent } from './personajes-item/personajes-item.component';

@NgModule({
  declarations: [
    AppComponent,
    PersonajesListComponent,
    PersonajesItemComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
