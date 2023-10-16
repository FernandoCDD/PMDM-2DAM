import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { BarraNavegacionComponent } from './barra-navegacion/barra-navegacion.component';
import { HomeScreenComponentComponent } from './home-screen-component/home-screen-component.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MainComponent } from './HomeScreenComponent/main/main.component';
import { FooterComponent } from './HomeScreenComponent/footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    BarraNavegacionComponent,
    HomeScreenComponentComponent,
    MainComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
