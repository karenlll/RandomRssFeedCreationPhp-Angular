import { Component, OnInit } from '@angular/core';
import { RssRestService } from '../rss-rest.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-topic',
  templateUrl: './topic.component.html',
  styleUrls: ['./topic.component.css']
})

export class TopicComponent implements OnInit {

  topics:any = [];
  dataSource:any = [];
  options: any = [];
  displayedColumns = ['title', 'description', 'author'];

  constructor(public rest:RssRestService, private route: ActivatedRoute, private router: Router) { }

  ngOnInit() {
    this.getTopics();
    this.getFeeds();
  }

  getTopics() {
    this.topics = [];
    this.rest.getTopics().subscribe((data: {}) => {
      this.topics = data;
    });
  }

  getFeeds() {
    this.dataSource = [];
    this.rest.getFeeds().subscribe((data: {}) => {
      this.dataSource = data;
    });
  }

  setCheckbox(event: any) {
    if(!this.options.includes(event)){
      this.options = [...this.options, event];
    }else {
      this.options = this.options.filter((item) => item !== event);
    }
  }

  subscribe() {
    this.router.navigate(['/subscribe'],
    {queryParams: {topics: this.options}});
  }

}
