import { Pipe, PipeTransform } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';

@Pipe({
  name: 'money'
})
export class MoneyPipe implements PipeTransform {

  constructor(
    private readonly translator: TranslateService,
  ) { }

  transform(value: number, ...args: string[]): unknown {
    return `${(Math.round(value * 100) / 100).toFixed(2)} €`;
  }

}
