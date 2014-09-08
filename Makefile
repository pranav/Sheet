

default: coffee sass jade
	@tail -f coffee.log sass.log jade.log

distdir:
	mkdir -p ./dist/static/js/ ./dist/static/css/ ./dist/static/css

coffee: distdir
	@(coffee -c -w -o "./dist/static/js/" "./src/static/coffee/" 2>&1 > coffee.log) &

sass: distdir
	@(sass --watch ./src/static/sass/:./dist/static/css 2>&1 > sass.log) &

jade: distdir
	@(jade -o ./dist/static/html/ -w ./src/static/jade/ 2>&1 > jade.log) &

clean:
	@rm coffee.log sass.log jade.log