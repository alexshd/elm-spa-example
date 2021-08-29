.PHONY: build
build:
	elm-app build

deploy: build
	surge -p build --domain offbeat-talk.surge.sh

clean:
	/bin/rm -rf build/

css:
	npx elm-tailwind-modules --dir ./src --tailwind-config tailwind.config.js

cssinit:
	npx tailwindcss init

.DEFAULT_GOAL := deploy