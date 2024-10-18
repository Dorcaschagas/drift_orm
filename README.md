# Gerenciamento de Cores com Flutter e Drift

Este é um projeto Flutter que utiliza **Drift** para o gerenciamento de banco de dados local. O projeto implementa um CRUD (Create, Read, Update, Delete) para gerenciar uma tabela de cores, com suporte para operações de inserir, atualizar, excluir e listar cores.

## Funcionalidades

- Adicionar cores
- Listar cores cadastradas
- Editar cores existentes
- Excluir cores cadastradas
- Uso de banco de dados local com Drift
- Código limpo e separado por camadas (Controller, Repository, View)

## Pré-requisitos

Para rodar este projeto, você precisa ter instalado:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)

## Instalação

### Clonando o repositório

1. Clone este repositório para sua máquina local:

   ```bash
   git clone https://github.com/Dorcaschagas/drift_orm.git
   ```

2. Navegue até a pasta do projeto:

   ```bash
   cd drift_orm
   ```

### Instalando as dependências

3. Instale as dependências do projeto usando o seguinte comando:

   ```bash
   flutter pub get
   ```

### Gerando o código do Drift

4. Para gerar os arquivos do **Drift** necessários para o banco de dados, execute:

   ```bash
   dart pub run build_runner build
   ```

## Executando o projeto

5. Agora, execute o projeto com o comando:

   ```bash
   flutter run
   ```

## Estrutura do Projeto

O projeto segue a seguinte estrutura de pastas:

```
lib/
├── controller/          # Controladores de lógica do projeto
│   └── cor_controller.dart
├── database/            # Configuração do banco de dados (Drift)
│   └── app_database.dart
├── dto/                 # Modelos (DTOs) e tabelas
│   └── cor.dart
├── repository/          # Repositórios que interagem com o banco de dados
│   └── cor_repository.dart
└── view/                # Interfaces gráficas (Views)
    └── cor_view.dart
```

## Como usar o projeto

1. Abra o aplicativo.
2. Insira o nome de uma cor no campo de texto.
3. Clique no botão **Adicionar** para salvar a cor.
4. A lista de cores será atualizada automaticamente.
5. Para editar uma cor, clique no ícone de lápis ao lado da cor.
6. Para excluir uma cor, clique no ícone de lixeira ao lado da cor.

## Tecnologias Utilizadas

- Flutter
- Drift (anteriormente conhecido como Moor)
- SQLite
