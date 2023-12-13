import { Injectable } from '@angular/core';
import { AngularFireAuth } from '@angular/fire/compat/auth';
import { map } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private auth: AngularFireAuth) { }

  user = this.auth.authState.pipe(map(authState =>{
    console.log('AuthaState', authState)
    if(authState)
      return authState
    else
      return null;
  }))

  login(){
    console.log('Login!')
  }

  glogin(){
    console.log('Google Login!')
  }

  logout(){
    console.log('Logout!')
  }

  glogout(){
    console.log('Google Logout!')
  }
}
