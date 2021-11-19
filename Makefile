SHELL := sh
PATH  := node_modules/.bin:$(PATH)

region ?= us-west-1

PACKAGE_VERSION := $(shell node -p "require('./package.json').version")

dev:
	npx webpack-dev-server --open --config webpack.config.development.ts

build:
	npx webpack build --config webpack.config.production.ts
