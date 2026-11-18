#!/bin/sh

dune build
dune exec ./hardcaml/main.exe > src/project.v
