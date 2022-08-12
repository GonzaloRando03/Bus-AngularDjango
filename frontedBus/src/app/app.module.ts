import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { InicioComponent } from './components/inicio/inicio.component';
import { Linea1Component } from './components/linea1/linea1.component';

import {HttpClientModule} from '@angular/common/http';
import { Linea2Component } from './components/linea2/linea2.component';
import { Linea3Component } from './components/linea3/linea3.component';

@NgModule({
  declarations: [
    AppComponent,
    InicioComponent,
    Linea1Component,
    Linea2Component,
    Linea3Component
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
