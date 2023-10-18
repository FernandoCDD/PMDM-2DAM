import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ListadoVehiculosComponent } from './components/listado-vehiculos/listado-vehiculos.component';

@NgModule({
  declarations: [
    AppComponent,
    ListadoVehiculosComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
