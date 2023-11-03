import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { HttpClientModule } from '@angular/common/http';
import { MovieItemComponent } from './components/movie-item-component/movie-item-component';
import { MoviePopularListComponent } from './components/movie-popular-list-component/movie-popular-list-component';
import { PageHomeComponent } from './ui/page-home-component/page-home-component.component';
import { MovieTopRatedListComponent } from './components/movie-top-rated-list/movie-top-rated-list.component';

@NgModule({
  declarations: [
    AppComponent,
    PageHomeComponent,
    MovieItemComponent,
    MoviePopularListComponent,
    MovieTopRatedListComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
