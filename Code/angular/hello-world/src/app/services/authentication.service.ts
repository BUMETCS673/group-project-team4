import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, of } from 'rxjs';
import { User } from '../models/user.model';
// import * as UserList from '../../assets/user.json';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  private currentUserSubject: BehaviorSubject<User>;
  public currentUser: Observable<User>;

  constructor(private http: HttpClient) {
    const tmp = localStorage.getItem('currentUser');
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(JSON.stringify(tmp)));
    this.currentUser = this.currentUserSubject.asObservable();
  }

  public get currentUserValue(): User {
    return this.currentUserSubject.value;
  }

  login(id: number) {
    const userList: User[] = [
      {
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
      }
    ];
    // const usr: User = {id:1, userid: 1, name: 'Kumar, sujeet', firstName: 'testFirst', lastName:'testLast', username: 'testUser' }
    const usr = userList.find(m => m.userid === id);
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(JSON.stringify(usr)));
    localStorage.setItem('currentUser', JSON.stringify(usr));
    return of(id);
  }

  logout() {
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(JSON.stringify(null)));
    localStorage.removeItem('currentUser');
  }

}
