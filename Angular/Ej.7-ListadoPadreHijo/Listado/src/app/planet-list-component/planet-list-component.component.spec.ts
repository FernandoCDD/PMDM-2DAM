import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PlanetListComponentComponent } from './planet-list-component.component';

describe('PlanetListComponentComponent', () => {
  let component: PlanetListComponentComponent;
  let fixture: ComponentFixture<PlanetListComponentComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PlanetListComponentComponent]
    });
    fixture = TestBed.createComponent(PlanetListComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
