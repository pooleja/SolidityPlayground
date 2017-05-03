# truffle-init-webpack
Example webpack project with Truffle. Includes contracts, migrations, tests, user interface and webpack build pipeline.

## Usage

To initialize a project with this exapmple, run `truffle init webpack` inside an empty directory.

## Building and the frontend

1. First run `truffle compile`, then run `truffle migrate` to deploy the contracts onto your network of choice (default "development").
1. Then run `npm run dev` to build the app and serve it on http://localhost:8080

## Possible upgrades

* Use the webpack hotloader to sense when contracts or javascript have been recompiled and rebuild the application. Contributions welcome!

## Common Errors

* **Error: Can't resolve '../build/contracts/MetaCoin.json'**

This means you haven't compiled or migrated your contracts yet. Run `truffle compile` and `truffle migrate` first.

Full error:

```
ERROR in ./app/main.js
Module not found: Error: Can't resolve '../build/contracts/MetaCoin.json' in '/Users/tim/Documents/workspace/Consensys/test3/app'
 @ ./app/main.js 11:16-59
```

## Commands

  Truffle WebPack [Documentation](https://github.com/trufflesuite/truffle-init-webpack)

Commands:

* Compile:        truffle compile
* Migrate:        truffle migrate
* Test:           truffle test
* Build Frontend: npm run build
* Run Linter:     npm run lint
* Run Dev Server: npm run dev

Hint: Run the dev server via `npm run dev` to have your changes rebuilt automatically.

Make sure you have an Ethereum client like the ethereumjs-testrpc running on http://localhost:8545.