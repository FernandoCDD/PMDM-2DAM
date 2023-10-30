import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PokemonListComponent } from 'src/app/components/pokemon-list/pokemon-list.component';
import { BerriesListComponent } from 'src/app/components/berries-list/berries-list.component';
import { PageNotFoundComponent } from 'src/app/components/page-not-found/page-not-found.component';

const routes: Routes = [
  {path: 'pokemon', component: PokemonListComponent},
  {path: 'berries', component: BerriesListComponent},
  {path: '', redirectTo: '/pokemon', pathMatch: 'full'},
  {path: '**', component: PageNotFoundComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule { }
