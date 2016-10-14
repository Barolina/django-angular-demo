import { Injectable } from '@angular/core';

@Injectable()
export class TimeService {

  constructor() { }

  timeFromServer() {
    return new Date();
  }

}
