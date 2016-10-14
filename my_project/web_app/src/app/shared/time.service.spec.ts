/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { MassimoService } from './massimo.service';

describe('Service: Massimo', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [MassimoService]
    });
  });

  it('should ...', inject([MassimoService], (service: MassimoService) => {
    expect(service).toBeTruthy();
  }));
});
