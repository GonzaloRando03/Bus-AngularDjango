import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Linea3Component } from './linea3.component';

describe('Linea3Component', () => {
  let component: Linea3Component;
  let fixture: ComponentFixture<Linea3Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Linea3Component ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(Linea3Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
