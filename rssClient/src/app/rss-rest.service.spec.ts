import { TestBed } from '@angular/core/testing';

import { RssRestService } from './rss-rest.service';

describe('RssRestService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: RssRestService = TestBed.get(RssRestService);
    expect(service).toBeTruthy();
  });
});
