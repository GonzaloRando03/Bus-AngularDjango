import { Component, OnInit } from '@angular/core';
import { ParadaService } from 'src/app/services/parada.service';
import { ViajeService } from 'src/app/services/viaje.service';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css']
})

export class InicioComponent implements OnInit {

  constructor(private _paradaService: ParadaService, private _viajeService: ViajeService) { }

  ngOnInit(): void {
    this.getMSG()
    this.getViaje()
  }

  viajes:any
  messages:any
  
  /* funcion para pedir los mensajes al backend */
  getMSG(){
    this._paradaService.getParadas().subscribe(data => {
      this.messages = data.msg
      console.log(data)
    }, error => {
      console.log(error)
    })
  }

  /* funcion para pedir los viajes al backend */
  getViaje(){
    this._viajeService.getViajes().subscribe(data => {
      this.viajes = data
      console.log(data)
    }, error => {
      console.log(error)
    })
  }

  /* funcion para cancelar un viaje */
  delViaje(index:any){
    this._viajeService.deleteViaje(index).subscribe(data => {
      this.getMSG()
      this.getViaje()
    }, error => {
      console.log(error)
    })
  }
}
