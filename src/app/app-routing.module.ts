import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddNotasComponent } from './components/add-notas/add-notas.component';
import { ListNotesComponent } from './components/list-notes/list-notes.component';

const routes: Routes = [
  {path:'', pathMatch:'full', redirectTo: 'list-notes'},
  {path: 'add-notas', component:AddNotasComponent},
  {path: 'list-notes', component: ListNotesComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
