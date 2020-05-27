# Knowlegde Graph Diff
This is the work for comparing different versions of knowledge graphs encoded in OWL/RDF/RDFS.

## About the application
This is a Maven Web Application that uses mySQL as its data store.

## Installation Requirements
- Java 8 or more
- Apache Tomcat
- MySQL 8 
- Maven 

## How to work
- After you deployed the war file to tomcat, you can access the application using this URL /KGDiff/VersionList
- You need to specify name and version number for the dataset using Add new Version
- By having a row in table in VersionList page, now you can click "Retrieve Schema" button 
- Then you need add information about the endpoint the URL and graphname and click retireve 
  - depends on the size of your KG this process might take longer, but It would be one time process
- Now you can get information about the single KG in "Schema" page or compare two KGs in "comparison" page.

