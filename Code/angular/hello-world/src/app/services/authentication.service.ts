import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, of } from 'rxjs';
import { User } from '../models/user.model';

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

  login(username: number) {
    const usr: User = {id:1, userid: 1, name: 'Kumar, sujeet', firstName: 'testFirst', lastName:'testLast', username: 'testUser' }
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(JSON.stringify(usr)));
    localStorage.setItem('currentUser', JSON.stringify(usr));
    return of(username);
  }

  logout() {
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(JSON.stringify(null)));
    localStorage.removeItem('currentUser');
  }
  
}
