import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';

import { HttpClientModule } from '@angular/common/http';
import { TopicComponent } from './topic/topic.component';
import { SubscribeComponent } from './subscribe/subscribe.component';

import { RouterModule, Routes } from '@angular/router';
import { FormsModule } from '@angular/forms';

import {MaterialModule} from './material.module';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

const appRoutes: Routes = [
  {
    path: '',
    component: TopicComponent,
    data: { title: 'Topic List' }
  },
  {
    path: 'topics',
    component: TopicComponent,
    data: { title: 'Topic List' }
  },
  {
    path: 'subscribe',
    component: SubscribeComponent,
    data: { title: 'Subscribe' }
  }
];

@NgModule({
  declarations: [
    AppComponent,
    TopicComponent,
    SubscribeComponent
  ],
  imports: [
    RouterModule.forRoot(appRoutes),
    FormsModule,
    BrowserModule,
    BrowserModule,
    BrowserAnimationsModule,
    MaterialModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
