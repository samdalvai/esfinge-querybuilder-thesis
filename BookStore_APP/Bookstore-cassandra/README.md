# Introduction

This is a simple Java Servlet CRUD application for storage and retrieval of books.

The basic framework is based on the BookStore application that can be found at this [website](https://www.codejava.net/coding/jsp-servlet-jdbc-mysql-create-read-update-delete-crud-example)

## Prerequisites

* Java 1.8 or higher.
* Maven
* Docker
* Tomcat or Glassfish server

## How to configure the project (on IntelliJ Idea)

* Open the project in `IntelliJ`
* Load `Maven script` if prompted by the IDE
* Click on `Edit Configurations` and add a new Tomcat or Glassfish server configuration. As a `Deployment` select the `war exploded` artifact.

## How to run the project (on IntelliJ Idea)
* Run `docker-compose up -d` to run the image of the database or use a local one. Hint: if you don't use the docker image you might need to configure the connection to the database differently.
* Run all the queries found in `sql/Bookstore.sql`
* Run the local server.

# End to end testing

## How to install Cypress

## Prerequisites
### Operating system:
* macOS 10.9 and above (64-bit only)
* Linux Ubuntu 12.04 and above, Fedora 21 and Debian 8 (64-bit only)
* Windows 7 and above (64-bit only)
### Node.js
* Node.js 12 or 14 and above

## Installation
* Clone or copy this repo on you local machine
* In the root folder of the project run `npm install` to install the required packages
* Run `npm install cypress --save-dev` to install cypress as a local dependency
# How to run Cypress

## Running Cypress with the GUI

* Run the command `./node_modules/.bin/cypress open` to run cypress. The following error may occur on Windows: ```Error "cannot be loaded because running scripts is disabled ```. In this case you need to run the following command as an administrator: `Set-ExecutionPolicy RemoteSigned`.
* As an alternative you can also use the command `npm run cypress:open`, but first you need to add the following script in the `"scripts"` section of the `package.json` file: `"cypress:open": "cypress open"`.

## Running Cypress with the command line

You can choose between the following commands based on the type of browser:
* `npm run e2e` to run the tests with electron browser
* `npm run e2e:chrome` to run the tests with chrome browser
* `npm run e2e:firefox` to run the tests with firefox browser

See a list of other available commands in the [`package.json`](package.json) file.