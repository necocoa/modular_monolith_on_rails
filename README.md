# README

```
bundle e rails new . -d postgresql --api --minimal --skip-test --skip-docker --force

docker run -d -p 5432:5432 --name modular_monolith_on_rails \
-v modular_monolith_on_rails:/var/lib/postgresql/data \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=password \
postgres

bin/setup
```

```
rails g scaffold User name:string
rails g scaffold Room name:string user:references
rails db:migrate
```

```
bundle binstub packwerk
bin/packwerk init
```

## Packwerk

`bin/packwerk validate`
`bin/packwerk check`
`bin/packwerk update`
