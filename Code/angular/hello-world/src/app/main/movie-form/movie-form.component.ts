import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Movie } from 'src/app/models/movie.model';

@Component({
  selector: 'app-movie-form',
  templateUrl: './movie-form.component.html',
  styleUrls: ['./movie-form.component.css']
})
export class MovieFormComponent implements OnInit {

  movieForm: any;
  id: number | null = null;

  @Input() set movie(val: Movie){
  	this.id = val.id
  	//console.log(this.id)
  	this.movieForm = new FormGroup({
	  	title: new FormControl(val.title),
	  	description: new FormControl(val.description)
  	})
  }

  @Output() movieCreated = new EventEmitter<Movie>()
  @Output() movieUpdated = new EventEmitter<Movie>()
  constructor() { }

  ngOnInit(): void {
  }

  formDisabled() {
    if(this.movieForm.value.title.length &&
       this.movieForm.value.description.length){
        return false
     }else{
        return true
     }
  }

  saveForm() {
  }

}
