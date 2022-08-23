#!/usr/bin/env bash
hugo
commit="Sem mensagem para este commit"
[[ "${1}" ]] && commit=${1}

cd public
git add .
git commit -m "${commit}"
git push origin main

cd ..
git add .
git commit -m "${commit}"
git push origin main
