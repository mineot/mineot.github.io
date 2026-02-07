# Preview local com Jekyll no VS Code

Este projeto usa Jekyll (GitHub Pages), então você pode pré-visualizar localmente sem fazer push.

## 1) Instalar dependências (uma vez)

No Ubuntu/Linux:

```bash
sudo apt update
sudo apt install -y ruby-full build-essential zlib1g-dev
```

Configurar gems no usuário:

```bash
echo '# Install Ruby gems to user directory' >> ~/.zshrc
echo 'export GEM_HOME="$HOME/.gem"' >> ~/.zshrc
echo 'export PATH="$HOME/.gem/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

Se usar Bash em vez de Zsh, troque `~/.zshrc` por `~/.bashrc`.

Verificar se carregou corretamente:

```bash
echo $GEM_HOME
echo $PATH
```

Instalar bundler/jekyll:

```bash
gem install bundler jekyll
```

## 2) Preparar o projeto

Na raiz do projeto (`/home/mineot/Projetos/mineot.github.io`):

```bash
bundle install
```

## 3) Rodar o servidor local

```bash
bundle exec jekyll serve --livereload
```

Abrir no navegador:

- http://127.0.0.1:4000

## 4) Rodar com Task no VS Code

Crie/renomeie para o arquivo correto: `.vscode/tasks.json`.

Use este conteúdo:

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Jekyll Serve",
      "type": "shell",
      "command": "bundle exec jekyll serve --livereload",
      "group": "build",
      "isBackground": true,
      "problemMatcher": []
    }
  ]
}
```

Depois execute no VS Code:

- `Terminal > Run Task > Jekyll Serve`

## 5) Erros comuns

- `Could not locate Gemfile`: rode os comandos na raiz do projeto e garanta que existe `Gemfile`.
- Porta ocupada:

```bash
bundle exec jekyll serve --livereload --port 4001
```

- Dependências faltando:

```bash
bundle install
```
