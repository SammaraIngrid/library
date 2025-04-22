

# 📚 Library API

API pública desenvolvida com **Ruby on Rails 7**, utilizando autenticação via **Devise + JWT**. A API gerencia livros, autores e estantes.

## 🔧 Tecnologias

- Ruby on Rails 7
- Devise
- JWT (Token de autenticação)
- PostgreSQL
- RSwag (documentação Swagger)

## 📁 Estrutura dos modelos

- **Book**: pertence a um autor e a uma estante.
- **Author**: tem muitos livros.
- **Bookcase**: tem muitos livros.

## 🚀 Como rodar o projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/SammaraIngrid/library.git
   cd library
