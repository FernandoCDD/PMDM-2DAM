import { RouterModule, Routes } from "@angular/router";
import { MovieListComponent } from "../components/movie-list/movie-list.component";
import { PageNotFoundComponent } from "../components/page-not-found/page-not-found.component";
import { NgModule } from "@angular/core";
import { MovieDetailsComponent } from "../components/movie-details/movie-details.component";

const routes: Routes = [
    {path: 'movies', component: MovieListComponent},
    {path: 'details/:id', component: MovieDetailsComponent},
    {path: '', redirectTo: '/movies', pathMatch: 'full'},
    {path: '**', component: PageNotFoundComponent},
  ];
  
  @NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
  })
  
  export class AppRoutingModule { }