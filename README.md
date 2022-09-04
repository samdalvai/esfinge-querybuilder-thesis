# Esfinge QueryBuilder thesis

This repository contains the work done for the Bachelor's thesis in Computer Science at the Free University of Bolzano.
The main focus of the thesis is to extend the [Esfinge Querybuilder](http://esfinge.sourceforge.net/Query%20Builder.html) framework with an
integration for the `NoSQL` database Apache Cassandra. Esfinge QueryBuilder is a `Java` framework that simplifies the creation of a persistence layer,
and creates and executed queries based on method names. The main challenges in creating such an extension have to do with the nature of Cassandra,
which is an open source NoSQL distributed database with features different from classical relational databases.

# Project folders

* [QueryBuilder_Cassandra](https://github.com/samdalvai/esfinge-querybuilder-thesis/tree/main/QueryBuilder_Cassandra): contains the framework extension developed for the thesis.
* [QueryBuilder_Cassandra_IntegrationTests](https://github.com/samdalvai/esfinge-querybuilder-thesis/tree/main/QueryBuilder_Cassandra_IntegrationTests): contains integration tests performed with a packaged version of the developed extension.
* [BookStore_App](https://github.com/samdalvai/esfinge-querybuilder-thesis/tree/main/BookStore_APP): contains two versions of the same CRUD web application, one using QueryBuilder-JDBC, the other using QueryBuilder-Cassandra.

# Author

* **Name**: Samuel Dalvai
* **Email**: [samdalvai@unibz.it](mailto:samdalvai@unibz.it)

# Supervisor

* Professor Martins Guerra Eduardo