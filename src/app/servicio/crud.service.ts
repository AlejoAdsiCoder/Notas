import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import {Nota} from './Nota'

@Injectable({
  providedIn: 'root'
})
export class CrudService {
  API: string='http://localhost/notas/'; // api de php
  constructor(private clienteHttp: HttpClient) { }
  
  AgregarNota(datosNota:Nota):Observable<any> {
    return this.clienteHttp.post(this.API+"?insertar=1", datosNota);
  }

  ObtenerNotas() {
    return this.clienteHttp.get(this.API);
  }
}
