import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ViajeService {

  url = 'http://127.0.0.1:8000/api/viajes/'

  constructor(private http: HttpClient) { }

  getViajes(): Observable<any> {
    return this.http.get(this.url)
  }

  postViajes(msg:any): Observable<any> {
    return this.http.post(this.url, msg)
  }

  deleteViaje(id:any): Observable<any> {
    return this.http.delete(this.url + id)
  }
}
