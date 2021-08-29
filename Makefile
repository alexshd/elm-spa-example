.PHONY: build
build:
	elm-app build

deploy: build
	surge -p build --domain elm-spa.shdlabs.com

clean:
	/bin/rm -rf build/

css:
	npx elm-tailwind-modules --dir ./src --tailwind-config tailwind.config.js

cssinit:
	npx tailwindcss init

.DEFAULT_GOAL := deploy