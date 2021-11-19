SHELL := sh
PATH  := node_modules/.bin:$(PATH)

region ?= us-west-1

PACKAGE_VERSION := $(shell node -p "require('./package.json').version")

build:
	npx tsc && chmod u+x ./dist/index.js
