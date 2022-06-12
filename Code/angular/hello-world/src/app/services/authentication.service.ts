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
      this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(tmp ? tmp: '{}'));
      this.currentUser = this.currentUserSubject.asObservable();
  }

  public get currentUserValue(): User {
    return this.currentUserSubject.value;
  }

  login(username: string) {
    const usr: User = {id:1, firstName: 'testFirst', lastName:'testLast', username: 'testUser' }
    localStorage.setItem('currentUser', JSON.stringify(usr));
    return of(username);
  }
  
}
