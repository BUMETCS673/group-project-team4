import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { RecommendedMovies } from '../models/recommended_movies.model';
import { User } from '../models/user.model';
import { AuthenticationService } from '../services/authentication.service'
import { RecommendationService } from '../services/recommendation.service'

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {
  user: User;
  moviesList: RecommendedMovies[] = [];

  constructor(private http: HttpClient, private authenticationService: AuthenticationService,
    private router: Router, private RecommendationService: RecommendationService) {
    this.user = JSON.parse(JSON.parse(JSON.stringify(localStorage.getItem('currentUser')))) as User;
  }

  ngOnInit(): void {
    this.RecommendationService.getRecommendedMoives().subscribe((movies: RecommendedMovies[]) => {
      this.moviesList.push(...movies);
      console.log(movies);
    })
  }
  logout() {
    this.authenticationService.logout();
    this.router.navigate(['login']);
  }
}
