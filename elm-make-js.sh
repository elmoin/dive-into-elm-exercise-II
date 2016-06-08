#!/usr/bin/env bash

elm make Main.elm --warn --output main.js
curl https://dl.google.com/closure-compiler/compiler-latest.zip -o closure-compiler.zip
unzip -ou closure-compiler -d cc
rm closure-compiler.zip
java -jar ./cc/compiler.jar --js main.js --js_output_file main-compiled.js
