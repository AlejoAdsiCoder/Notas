import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';

import { CrudService } from 'src/app/servicio/crud.service'; 

@Component({
  selector: 'app-add-notas',
  templateUrl: './add-notas.component.html',
  styleUrls: ['./add-notas.component.scss']
})
export class AddNotasComponent implements OnInit {

  formNotas = {} as FormGroup;

  constructor(
    public form: FormBuilder,
    private crudService:CrudService,
    private ruteador: Router
  ) { 
    this.formNotas = this.form.group({
      nombre: [''],
      parcial1: [''],
      parcial2: [''],
      parcial3: ['']
    })
  }

  ngOnInit(): void {
  }

  enviarDatos():any {
    console.log("Me presionaste");
    console.log(this.formNotas.value);
    this.crudService.AgregarNota(this.formNotas.value).subscribe();
    this.ruteador.navigateByUrl('/list-notes')
  }

}
