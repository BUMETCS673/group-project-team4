import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Movie } from '../models/movie.model';
import { AuthenticationService } from '../services/authentication.service'

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {

  movies: Movie[] = [];
  selectedMovie: Movie | null = null;
  editedMovie: Movie | null = null;
  deletedMovie = null;
  url: string = 'http://44.199.212.24:8000/';
  
  constructor(private http: HttpClient, private authenticationService: AuthenticationService, private router: Router) {}

  ngOnInit(): void {
    const data: Movie[] = [
      {id:1, title:'Test title 1', description: 'test desc 1', avg_rating: 4.3, no_of_ratings: 20},
      {id:2, title:'Test title 2', description: 'test desc 2', avg_rating: 1.3, no_of_ratings: 12},
      {id:3, title:'Test title 3', description: 'test desc 3', avg_rating: 3.3, no_of_ratings: 2},
      {id:4, title:'Test title 4', description: 'test desc 4', avg_rating: 2.3, no_of_ratings: 21},
      {id:5, title:'Test title 5', description: 'test desc 5', avg_rating: 4.3, no_of_ratings: 13},
      {id:6, title:'Test title 6', description: 'test desc 6', avg_rating: 2.3, no_of_ratings: 8},
      {id:7, title:'Test title 7', description: 'test desc 7', avg_rating: 0.3, no_of_ratings: 10}]
      this.movies.push(...data);
  }

  selectMovie(movie: Movie) {
  	//console.log("Selected movie: ", this.selectedMovie)
  	this.selectedMovie = movie
    this.editedMovie = null
    this.deletedMovie = null
  }

  editMovie(movie: Movie) {
    //console.log("Edit movie: ", this.editedMovie)
    this.editedMovie = movie
    this.selectedMovie = null
    this.deletedMovie = null
  }

  createNewMovie() {
    //console.log("Edit movie: ", this.editedMovie)
    this.editedMovie = {title: '', description: '', avg_rating: 0, id: 0, no_of_ratings: 0},
    this.selectedMovie = null
    this.deletedMovie = null
  }

  deleteMovie(movie: Movie) {
    console.log(movie); 
  }

  movieCreated(movie: Movie) {
    this.movies.push(movie)
    this.editedMovie = null;
  }

  movieUpdated(movie: Movie) {
    const indx = this.movies.findIndex(mov => mov.id === movie.id)
    if(indx >= 0){
      this.movies[indx] = movie;
      this.editedMovie = null
    }
  }

  logout() {
    this.authenticationService.logout();
    this.router.navigate(['login']);
  }

  
  public test() {
    this.http.get(this.url).toPromise().then((data) => {
    console.log(data);
  });
  }
}
