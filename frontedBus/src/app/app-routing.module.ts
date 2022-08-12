import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { InicioComponent } from './components/inicio/inicio.component';
import { Linea1Component } from './components/linea1/linea1.component';
import { Linea2Component } from './components/linea2/linea2.component';
import { Linea3Component } from './components/linea3/linea3.component';

const routes: Routes = [
  { path: '', component: InicioComponent },
  { path: 'inicio', component: InicioComponent },
  { path: 'linea1', component: Linea1Component },
  { path: 'linea2', component: Linea2Component },
  { path: 'linea3', component: Linea3Component },
  { path: '**', redirectTo:'', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
