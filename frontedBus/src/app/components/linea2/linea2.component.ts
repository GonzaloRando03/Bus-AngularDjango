import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ParadaService } from 'src/app/services/parada.service';
import { ViajeService } from 'src/app/services/viaje.service';

@Component({
  selector: 'app-linea2',
  templateUrl: './linea2.component.html',
  styleUrls: ['./linea2.component.css']
})
export class Linea2Component implements OnInit {

  constructor(private _paradaService: ParadaService, private _viajeService: ViajeService ,private router: Router,) { }

  ngOnInit(): void {
    this.getData('Cº Miguel de Cervantes')
  }

  data:any = []

  /* funcion para reservar un viaje donde montamos un mensaje que llega al backend */
  reservar(index:number, especial:boolean, nDia:number){
    let calle = this.data.name
    let hora 
    let dia
    let msg1
    let msg2

    if(!especial){
      hora = this.data.normal[index]
    }else{
      hora = this.data.especial[index]
    }

    let semana = {
      1: 'lunes',
      2: 'martes',
      3: 'miercoles',
      4: 'jueves',
      5: 'viernes',
      6: 'sábado',
      7: 'domingo'
    }

    let nDiaStr = nDia.toString()

    for (let e of Object.entries(semana)){
      if ( e[0] == nDiaStr ) {
        dia = e[1]
      }
    }
    
    msg1 = `Billete para el ${dia} la línea L-2 en la parada ${calle} a las ${hora} reservado con éxito`
    msg2 = `Billete para el ${dia} la línea L-2 en la parada ${calle} a las ${hora} reservado con éxito`
    

    let json = { "msg" : msg1 }
    let viaje = { 
      "dia": nDia,
      "linea": "L-2",
      "parada": calle,
      "hora": hora
   }
    
    this._paradaService.sendMessage(json).subscribe(data => {
      this.router.navigate(['/'])
    }, error => {
      console.log(error)
    })

    this._viajeService.postViajes(viaje).subscribe(data => {
    }, error => {
      console.log(error)
    })
  }


  /* funcion para conseguir la hora del viaje */
  getHour(calle:string, line:any){
    let list = []
    let listEspecial = []

    for (let e of line){
      if (e.nombre == calle && e.diaEspecial == '0'){
        list.push(e.hora)
      }else if (e.nombre == calle && e.diaEspecial == '1'){
        listEspecial.push(e.hora)
      }
    }

    let horario = {
      name: calle,
      normal: list,
      especial: listEspecial
    }
    console.log(horario)
    return horario
  }


  /* funcion para conseguir las paradas de una linea especifica */
  getL2(paradas: any){
    let list = []
    for(let e of paradas){
      if (e.parada == 'L-2'){
        list.push(e)
      }
    }
    return list
  }


  /* funcion que genera los datos finales y los guarda en la propiedad data */
  getData(calle:string){
    this._paradaService.getParadas().subscribe(data => {
      let paradas = data.paradas
      let l2 = this.getL2(paradas)
      console.log(l2)
      let hour = this.getHour(calle, l2)
      this.data = hour
    }, error => {
      console.log(error)
    })
  }

}
