# Tips and Tricks

## NodeJs

### How to easily update references to the packages in package.json file

- Install the `npm-check-updates` package to update your node packages easily.
  `npm i npm-check-updates -g` this command will install the package globally.

- Run `npm-check-updates` to list the packages to be updated

- Run `npm-check-updates -u` to update the package.json to point to the latest version number

- Run `npm install` to install the latest packages.

### Check and Update Global npm packages

- find out which packages need to be updated

`npm outdated -g --depth=0`

- To Update global package you can use 

`npm update -g <package>:`

## Git

### Change Git config to set username locally for a project folder

- Navigate to the project folder where you want to make the changes

- Type the command `git config --local user.name "costaIvo"`

- Type the command `git config --local user.name` this will now display the new username set


## Install Packages Faster using Yarn

`# fast install (via Yarn, https://yarnpkg.com)`
`$ yarn install  # or yarn`