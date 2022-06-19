import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { RecommendedMovies } from '../models/recommended_movies.model';
import * as recommendedMovies from '../../assets/recommended_movies.json';

@Injectable({
  providedIn: 'root'
})
export class RecommendationService {

  constructor() { }

  getRecommendedMoives(): Observable<RecommendedMovies[]> {
    return of(recommendedMovies);
  }
}
