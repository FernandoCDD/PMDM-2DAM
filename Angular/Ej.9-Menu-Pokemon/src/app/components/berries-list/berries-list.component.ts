import { Component, OnInit } from '@angular/core';
import { Berries } from 'src/app/models/berries-list.interface';
import { BerriesService } from 'src/app/services/berries.service';

@Component({
  selector: 'app-berries-list',
  templateUrl: './berries-list.component.html',
  styleUrls: ['./berries-list.component.css']
})
export class BerriesListComponent implements OnInit{

  BerriesList: Berries[] = [];
  page = 1;
  count = 1;
  pageSize = 20;

  constructor(private berriesService: BerriesService){}

  ngOnInit(): void {
    this.berriesService.getBerriesList().subscribe(result =>{
      this.BerriesList = result.results;
      this.count = result.count;
    })
  }

  changePage(){
    this.berriesService.getListByPag(this.page).subscribe(result => {
        this.BerriesList = result.results;
    })
}
}
