import { Component, OnInit } from '@angular/core';
import { CrudService } from 'src/app/servicio/crud.service';

@Component({
  selector: 'app-list-notes',
  templateUrl: './list-notes.component.html',
  styleUrls: ['./list-notes.component.scss']
})
export class ListNotesComponent implements OnInit {
  Notas: any;

  constructor(
    private crudService: CrudService
  ) { }

  ngOnInit(): void {
    this.crudService.ObtenerNotas().subscribe(respuesta=>{
      console.log(respuesta)
      this.Notas = respuesta;
    })
  }

}
