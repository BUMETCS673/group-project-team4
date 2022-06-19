import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { mainRoutes } from './main-routing.module';
import { CommonModule } from '@angular/common';
import { MainComponent } from './main.component';
import { MovieListComponent } from './movie-list/movie-list.component';
import { MovieDetailsComponent } from './movie-details/movie-details.component';
import { MovieFormComponent } from './movie-form/movie-form.component';
import { ReactiveFormsModule } from '@angular/forms';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { YearPipe } from '../pipes/year.pipe';
import { TitlePipe } from '../pipes/title.pipe';

@NgModule({
    declarations: [
        MainComponent,
        MovieListComponent,
        MovieDetailsComponent,
        MovieFormComponent,
        TitlePipe,
        YearPipe
    ],
    exports: [
        RouterModule
    ],
    providers: [
    ],
    imports: [
        CommonModule,
        ReactiveFormsModule,
        FontAwesomeModule,
        RouterModule.forChild(mainRoutes),
    ],
    bootstrap: []
})

export class MainModule { }