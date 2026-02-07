#!/usr/bin/env bash
set -euo pipefail

if [ ! -f "Gemfile" ]; then
  echo "Erro: Gemfile nao encontrado. Execute este script na raiz do projeto."
  exit 1
fi

bundle exec jekyll clean
bundle exec jekyll serve --livereload --port 4000
