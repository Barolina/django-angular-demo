import { Component } from '@angular/core';
import { TimeService } from './shared';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [TimeService]
})
export class AppComponent {

  title: string;
  greetings: string;
  lastMessage: string;

  constructor (private timeService: TimeService) {
    this.title = 'App Title';
    this.greetings = 'Massimo';
    this.lastMessage = 'N.A.';
  }

  sayHello() {
    var now = this.timeService.timeFromServer();
    this.lastMessage = 'Hello ' + this.greetings + ': ' + now.toLocaleString();
  }
}
