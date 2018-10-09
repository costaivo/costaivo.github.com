# Using angular-cli

* Install angular cli

``` javascript
    npm install -g angular-cli
```

* Create new project using angular-cli

``` javascript
    ng new angular2_hello_world
```

* Navigate to the project folder

``` batch
    cd angular2_hello_world
```

* Updating to latest version of Angular-cli
  
``` batch 
    npm uninstall -g angular-cli
    npm cache clean
    npm install -g @angular/cli@latest
```

# creating new app
ng new my-app

ng new my-app --skip-install /* skip installation of modules */
ng new my-app -s
ng new my-app --dry-run  /* dont  write the files, but report them. */
ng nre my-app -d

ng new my-app --prefix "adm"  /* add prefix to selectors */

ng new my-app --skip-tests /* Skip creating spec files */

ng new my-app --style scss /* create app with scss setup */

ng new my-app --routing 

ng lint my-app3 --format stylish /* list errors in readable format*/

ng lint my-app3 --fix /* fix lint reported errors */

# Creating Components

ng g c 
--flat   should a folder be created
--inline-style -s
--inline-template  -t

/* Directive */
ng g d 
ng g d --flat false  /* create folder */

/* service */

ng g s 
ng g s --spec false

# Creating  classes 

ng g cl models/customer -dont
ng g cl models/customer
ng g i models/person  --interface 
ng g e models/gender --enum 

##  pipes 
ng g p  init-caps -d
ng g p shared/init-caps -d 
ng g p shared/init-caps -m my-module

## modules 
ng g m login -d --spec false -m app.module 

## Routings 
ng g m sales --routing 

a-path /* angular snippet to create path */

ng g guard auth-guard

# Building and serving 
ng build  /* ideal for developement */

ng build --aot /* removes the angular compiler from the output */

## tools to analyze the source code
npm install webpack-bundle-analyzer  --save-dev
ng build --stats-json

npx webpack-bundle-analyzer dist /my-app/stats.json

npm run stats 
----------------
npm install source-map-explorer --save-dev

ng build 

npx source-map-explorer dist/my-app/main.js

--------

ng build --prod

## serving 
ng serve

ng serve -o

# add new packages

ng add @angular/material

ng add @ng-bootstrap/schematics

ng g @angular/material:material-nav --name nav

ng g @angular/material:material-dashboard -name dashboard

ng g @angular/material-table --name customer-list

## Unit Tests

ng test
executes all the *.spec.ts files 

ng test --code-coverage 
ng test --progress
ng test --sourcemaps
ng test --watch 


## End to End Test 
ng e2e 

ng e2e --help 

# Angular Tooling

## Update 

ng update
ng update --dryRun 
--all
--force


## Adding multiple projects

## Generating Library

ng g library --help

ng g library my-lib

