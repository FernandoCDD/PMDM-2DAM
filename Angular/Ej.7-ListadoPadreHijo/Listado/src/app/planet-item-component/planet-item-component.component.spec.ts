import { ComponentFixture, TestBed } from '@angular/core/testing';
import { PlanetItemComponentComponent } from './planet-item-component.component';

describe('PlanetItemComponentComponent', () => {
  let component: PlanetItemComponentComponent;
  let fixture: ComponentFixture<PlanetItemComponentComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PlanetItemComponentComponent]
    });
    fixture = TestBed.createComponent(PlanetItemComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
