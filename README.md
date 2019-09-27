# Adonis API application

This is the boilerplate for creating an API server in AdonisJs, it comes pre-configured with.

1. Bodyparser
2. Authentication
3. CORS
4. Lucid ORM
5. Migrations and seeds

## Installation

Please run installation first.

```
npm i -g @adonisjs/cli
```

and run use

```
adonis serve --dev
```

## Setup

Use the adonis command to install the blueprint

```bash
adonis new yardstick --api-only
```

or manually clone the repo and then run `npm install`.

## Migrations

Run the following command to run startup migrations.

```js
adonis migration:run
```

## DATABASE

Add Database ignite.sql first on mysql before running

please run database mysql first.
