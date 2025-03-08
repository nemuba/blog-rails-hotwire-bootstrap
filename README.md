# Blog Rails Hotwire Bootstrap

![Ruby](https://img.shields.io/badge/Ruby-3.2.2-red)
![Rails](https://img.shields.io/badge/Rails-7.1.3-red)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.1.3-purple)
![Hotwire](https://img.shields.io/badge/Hotwire-Turbo%20%7C%20Stimulus-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Latest-blue)

## 📝 Descrição

Este é um aplicativo de blog moderno construído com Ruby on Rails, utilizando Hotwire (Turbo e Stimulus) para interações dinâmicas e Bootstrap para um design responsivo e atraente. O projeto demonstra como criar uma aplicação web moderna com atualizações em tempo real sem a necessidade de escrever JavaScript complexo.

## ✨ Funcionalidades

- **Autenticação de usuários** com Devise
- **Gerenciamento de posts**:
  - Criação, edição e exclusão de posts
  - Visualização de posts com formatação adequada
- **Interface responsiva** com Bootstrap 5
- **Atualizações em tempo real** com Hotwire (Turbo e Stimulus)
- **Paginação** com Pagy
- **Containerização** com Docker para fácil implantação

## 🛠️ Tecnologias Utilizadas

- **Backend**:
  - Ruby v3.2.2
  - Ruby on Rails v7.1.3
  - PostgreSQL (banco de dados)
  - Devise (autenticação)
  - Pagy (paginação)

- **Frontend**:
  - Bootstrap v5.1.3 (framework CSS)
  - Hotwire:
    - Turbo (navegação SPA-like)
    - Stimulus (framework JavaScript modesto)
  - SCSS (pré-processador CSS)

- **DevOps**:
  - Docker (containerização)
  - Docker Compose (orquestração de containers)

## 🚀 Instalação e Configuração

### Pré-requisitos

- Ruby 3.2.2
- Rails 7.1.3
- PostgreSQL
- Node.js e Yarn
- Docker e Docker Compose (opcional)

### Instalação Local

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/blog-rails-hotwire-bootstrap.git
   cd blog-rails-hotwire-bootstrap
   ```

2. Instale as dependências:

   ```bash
   bundle install
   yarn install
   ```

3. Configure o banco de dados em `config/database.yml`

4. Crie e migre o banco de dados:

   ```bash
   rails db:create
   rails db:migrate
   ```

5. Inicie o servidor de desenvolvimento:

   ```bash
   bin/dev
   ```

6. Acesse a aplicação em `http://localhost:3000`

### Usando Docker

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/blog-rails-hotwire-bootstrap.git
   cd blog-rails-hotwire-bootstrap
   ```

2. Construa e inicie os containers:

   ```bash
   docker-compose up --build
   ```

3. Em outro terminal, crie e migre o banco de dados:

   ```bash
   docker-compose exec web rails db:create db:migrate
   ```

4. Acesse a aplicação em `http://localhost:3000`

## 📚 Uso

1. Registre-se como um novo usuário ou faça login
2. Navegue pelos posts existentes na página inicial
3. Crie novos posts através do botão "Novo Post"
4. Edite ou exclua seus próprios posts

## 🧪 Testes

Execute os testes com:

```bash
rails test
```

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

1. Faça um fork do projeto
2. Crie sua branch de feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

## 📞 Contato

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato.

---

Desenvolvido com ❤️ usando Ruby on Rails, Hotwire e Bootstrap.
