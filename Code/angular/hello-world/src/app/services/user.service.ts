import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { User } from '../models/user.model';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(httpClient: HttpClient) { }

  getUser(userId: number): Observable<User> {
    // const result = users.find(m=>m.userid===userId) as User;
    // const result = users.filter(m=>m.userid===userId)[0] as User;
    const users = [{
      "id": 1,
      "userid": 1,
      "name": "Kumar, Sujeet",
      "firstName": "Sujeet",
      "lastName": "Kumar",
      "username": "sujeetkumar"
    },
    {
      "id": 2,
      "userid": 2,
      "name": "Kolbin, Alex",
      "firstName": "Alex",
      "lastName": "Kolbin",
      "username": "alexkolbin"
    },
    {
      "id": 3,
      "userid": 3,
      "name": "Ashton, Eric",
      "firstName": "Eric",
      "lastName": "Ashton",
      "username": "ericashton"
    },
    {
      "id": 4,
      "userid": 4,
      "name": "Nerney, Ellie",
      "firstName": "Ellie",
      "lastName": "Nerney",
      "username": "ellienerney"
    },
    {
      "id": 5,
      "userid": 5,
      "name": "Mao, Rui",
      "firstName": "Rui",
      "lastName": "Mao",
      "username": "ruimao"
    }];
    const result = users.find(m=>m.userid===userId) as User;
    return of(result);
  }
}
