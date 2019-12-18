build:
	wasm-pack build --target web

build-hosting:
	wasm-pack build --target web
	rm -rf dist
	mkdir dist
	cp index.html dist
	mkdir dist/pkg
	cp pkg/{{project-name}}.js dist/pkg
	cp pkg/{{project-name}}_bg.wasm dist/pkg

start:
	python3 -m http.server
