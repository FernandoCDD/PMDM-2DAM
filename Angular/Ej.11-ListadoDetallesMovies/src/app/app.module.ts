import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { MovieItemComponent } from './components/movie-item/movie-item.component';
import { MovieListComponent } from './components/movie-list/movie-list.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { HttpClientModule } from '@angular/common/http';
import { PageNotFoundComponent } from './components/page-not-found/page-not-found.component';
import { MovieDetailsComponent } from './components/movie-details/movie-details.component';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './modules/app-routing.module';

@NgModule({
  declarations: [
    AppComponent,
    MovieItemComponent,
    MovieListComponent,
    PageNotFoundComponent,
    MovieDetailsComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
