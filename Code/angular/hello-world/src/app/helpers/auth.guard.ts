
import { Injectable } from '@angular/core';
import { CanLoad, Route, Router } from '@angular/router';
import { AuthenticationService } from '../services/authentication.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanLoad {
  constructor(
    private router: Router,
    private authenticationService: AuthenticationService
  ) { }
  canLoad(route: Route): boolean {
    const currentUser = this.authenticationService.currentUserValue;
    if (currentUser.id > 0) {
      // logged in so return true
      return true;
    }
    this.router.navigate(['/login'], { queryParams: { returnUrl: route.path } });
    return false;
  }
}
