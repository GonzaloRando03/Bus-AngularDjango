import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ParadaService {

  url = 'http://127.0.0.1:8000/api/paradas/'

  constructor(private http: HttpClient) { }

  getParadas(): Observable<any> {
    return this.http.get(this.url)
  }

  sendMessage(msg:any): Observable<any> {
    return this.http.post(this.url, msg)
  }

  deleteMessage(): Observable<any> {
    return this.http.delete(this.url)
  }
}
