import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { faCoffee, faStar } from '@fortawesome/free-solid-svg-icons';
import { Movie } from 'src/app/models/movie.model';

@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})
export class MovieDetailsComponent implements OnInit {

  @Input() movie: Movie | null = null;
  @Output() updateMovie = new EventEmitter<Movie>()
  rateHovered = 0

  faCoffee = faCoffee; 
  faStar = faStar; 
  
  constructor() { }

  ngOnInit(): void {
  }

  rateHover(rate: number) {
  	//console.log(rate)
  	this.rateHovered = rate
  }

  rateClicked(rate: number) {
  }

  getDetails(rate: number) {
  }

}
