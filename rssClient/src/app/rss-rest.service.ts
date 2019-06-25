import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpErrorResponse } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { map, catchError, tap } from 'rxjs/operators';

 const endpoint: string = "http://localhost:8000/api/";
 const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json'
  })
 };

 @Injectable({
  providedIn: 'root'
})

export class RssRestService {

 constructor(private http: HttpClient) { }

 private extractData(res: Response) {
  let body = res;
  return body || { };
 }

 getTopics(): Observable<any> {
  return this.http.get(endpoint + 'manageTopics').pipe(
    map(this.extractData));
 }

 getFeeds(): Observable<any> {
  return this.http.get(endpoint + 'getFeeds').pipe(
    map(this.extractData));
 }

 subscribe (email, topics): Observable<any> {

  var dataSubscribe = {
      "email" : email,
      "topics": topics
    };
  return this.http.post<any>(endpoint + 'registerUser', JSON.stringify(dataSubscribe), httpOptions).pipe(
    tap((dataSubscribe) => console.log(`subscribe w/ id=${dataSubscribe}`)),
    catchError(this.handleError<any>('Subscribe'))
  );
 }
 
 unsubscribe (email): Observable<any> {
  var dataUnsubscribe = {
      "email" : email
    };
  return this.http.post<any>(endpoint + 'unsubscribeUser', JSON.stringify(dataUnsubscribe), httpOptions).pipe(
    tap((dataUnsubscribe) => console.log(`unsubscribe w/ id=${dataUnsubscribe}`)),
    catchError(this.handleError<any>('Unsubscribe'))
  );
 }
 private handleError<T> (operation = 'operation', result?: T) {
  return (error: any): Observable<T> => {

    // TODO: send the error to remote logging infrastructure
    console.error(error); // log to console instead

    // TODO: better job of transforming error for user consumption
    console.log(`${operation} failed: ${error.message}`);

    // Let the app keep running by returning an empty result.
    return of(result as T);
  };
 }
}
