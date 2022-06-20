import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'year'
})
export class YearPipe implements PipeTransform {

  transform(titleVal: string): string {
    const tit = titleVal.substring(titleVal.indexOf('(') + 1, titleVal.length - 1);
    return tit;
  }

}
