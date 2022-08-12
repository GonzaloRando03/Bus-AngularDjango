import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Linea1Component } from './linea1.component';

describe('Linea1Component', () => {
  let component: Linea1Component;
  let fixture: ComponentFixture<Linea1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Linea1Component ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(Linea1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
