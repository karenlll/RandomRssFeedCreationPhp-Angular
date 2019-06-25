import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { RssRestService } from '../rss-rest.service';
import { ActivatedRoute, Router } from '@angular/router';
import {FormControl, FormGroupDirective, NgForm, Validators} from '@angular/forms';
import {ErrorStateMatcher} from '@angular/material/core';

export class MyErrorStateMatcher implements ErrorStateMatcher {
  isErrorState(control: FormControl | null, form: FormGroupDirective | NgForm | null): boolean {
    const isSubmitted = form && form.submitted;
    return !!(control && control.invalid && (control.dirty || control.touched || isSubmitted));
  }
}

@Component({
  selector: 'app-subscribe',
  templateUrl: './subscribe.component.html',
  styleUrls: ['./subscribe.component.css']
})
export class SubscribeComponent implements OnInit {

	topics : any = [];
	errorTopicsMessage = "";
  email = "";
  @ViewChild('emailInput' , {static: false}) emailInput;

  emailFormControl = new FormControl('', [
    Validators.required,
    Validators.email,
  ]);

  matcher = new MyErrorStateMatcher();


  constructor(public rest:RssRestService, private route: ActivatedRoute, private router: Router) { }

  ngOnInit() {
  }

  changeErrorMessage(check, errType){

  	if( !check &&  errType===1){
  		this.errorTopicsMessage = "You did not select any topic to subscribe";
  	}else if ( !check &&  errType===1 ){
      this.errorTopicsMessage = "You do not writte a email";
    }else{
  		this.errorTopicsMessage = "";
  	}

  }

  getEmail(){
    this.email = this.emailInput.nativeElement.value;
  }

  subscribe() {

    if (this.validateTopics() && this.validateEmail()){
    this.rest.subscribe(this.email, this.topics).subscribe((data: {}) => {
      console.log(data);
    });

    this.router.navigate(['/topics']);
    }
  }

  validateEmail(){

    this.getEmail();

    if(this.email !== ""){
      this.changeErrorMessage(true, 2);
      return true;
    }else{
      this.changeErrorMessage(false, 2);
      return false;
    }
  }

  validateTopics(){

  	this.route.queryParams.subscribe(params => {
        this.topics = params['topics'];
    });

    if(this.topics.length > 0){
    	this.changeErrorMessage(true, 1);
		  return true;
	  }else{
	    this.changeErrorMessage(false, 1);
		  return false;
	  }
  }

   unsubscribe() {

   if(this.validateEmail()){
    this.rest.unsubscribe(this.email).subscribe((data: {}) => {
      console.log(data);
    });

    this.router.navigate(['/topics']);
    }
  }

}
