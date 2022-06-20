import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'title'
})
export class TitlePipe implements PipeTransform {

  transform(titleVal: string): string {
    const tit = titleVal.substring(0, titleVal.indexOf('(')-1);
    return tit;
  }

}
