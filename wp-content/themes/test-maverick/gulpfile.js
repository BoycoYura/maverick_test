var gulp = require('gulp');
var sass = require('gulp-sass');


gulp.task('sass', function () {
    return gulp.src('./scss/*.scss')
      .pipe(sass().on('error', sass.logError))
      .pipe(gulp.dest('./css'));
});

gulp.task("scripts", function() {
    gulp.src(['./js/*.js'])
    .pipe( gulp.dest("./prod-js") )
});


gulp.task('default', ['scripts', 'sass']);


gulp.task('watch', function () {
    gulp.watch('./scss/*.scss', ['sass'] );
    gulp.watch('./js/*.js', ['scripts'] );
});