import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Linea2Component } from './linea2.component';

describe('Linea2Component', () => {
  let component: Linea2Component;
  let fixture: ComponentFixture<Linea2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Linea2Component ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(Linea2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
