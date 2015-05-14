var gulp = require ('gulp');
var riot = require ('gulp-riot');
var notify = require('gulp-notify');

gulp.task ('riot', function () {
  gulp.src(['tags/clock.tag'])
  .pipe(riot({compact: true}))
  .pipe(gulp.dest('dist'));
});

gulp.task('watch', function (){
  gulp.watch('tags/**', ['riot']);
});

gulp.task('default', ['riot']);
