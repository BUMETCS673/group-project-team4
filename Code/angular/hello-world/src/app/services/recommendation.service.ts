import { Injectable } from '@angular/core';
import { Observable, of, filter } from 'rxjs';
import { RecommendedMovies } from '../models/recommended_movies.model';
import * as recommendedMovies from '../../assets/recommended_movies.json';

@Injectable({
  providedIn: 'root'
})
export class RecommendationService {

  constructor() { }

  getRecommendedMoives(): Observable<RecommendedMovies[]> {
    const recommendedMoviesList: RecommendedMovies[] = [
      {
        "movieId": 1,
        "title": "Toy Story (1995)",
        "genres": "Adventure|Animation|Children|Comedy|Fantasy"
      },
      {
        "movieId": 2,
        "title": "Jumanji (1995)",
        "genres": "Adventure|Children|Fantasy"
      },
      {
        "movieId": 3,
        "title": "Grumpier Old Men (1995)",
        "genres": "Comedy|Romance"
      },
      {
        "movieId": 4,
        "title": "Wating To Exhale (1995)",
        "genres": "Comedy|Drama|Romance"
      },
      {
        "movieId": 5,
        "title": "Father of the Bride Part II (1995)",
        "genres": "Comedy"
      }
    ];
    return of(recommendedMoviesList);
  }
}
