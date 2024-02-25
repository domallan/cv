## Pre-requisites

- node
- nvm
- yarn


## Getting Started - Local dev

1. First, setup the services containers

```bash
docker compose up -d
```
2. Initialise the database

```bash
yarn db:init
```

3. Run the development server:

```bash
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.
