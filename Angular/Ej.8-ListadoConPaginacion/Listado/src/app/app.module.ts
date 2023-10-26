import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { PersonajesItemComponent } from './personajes-item/personajes-item.component';
import { PersonajesListComponent } from './personajes-list/personajes-list.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  declarations: [
    AppComponent,
    PersonajesItemComponent,
    PersonajesListComponent
  ],
  imports: [
    BrowserModule,
    NgModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
