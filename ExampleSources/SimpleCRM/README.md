# Simple CRM
This is very simple example database which contains own table for users and companies and table which connects users to companies.
![Alt text](https://raw.githubusercontent.com/olljanat/vco-efecte/master/Examples/SimpleCRM/SimpleCRM-database_structure.PNG "Database structure")

This works with Efecte standard configuration.


## Usage
* Create database with example data using "SimpleCRM_Create_database_with_example_data.sql" script.
* Create SQL login and connect it to database.
* Add database to vCO using "Add a database" workflow.
* Set correct REST operation and database to example workflows.

# Description
## Companies and Users import
You must first add Companies and Users to Efecte before you can create references between them.

As for example here is "Example - SimpleCRM Companies to Efecte" workflow's attributes:
![Alt text](https://raw.githubusercontent.com/olljanat/vco-efecte/master/Examples/SimpleCRM/SimpleCRM-workflow_attributes.PNG "Worklow attributes")


"columns" attribute contains array of strings like these:
![Alt text](https://raw.githubusercontent.com/olljanat/vco-efecte/master/Examples/SimpleCRM/SimpleCRM-Company-columns-attribute_map.PNG "Company table, columns attribute map")
Strings contains two values which are separated using pipe "|" mark:
* First value is SQL column name.
* Second value is field code on Efecte.

Based on columns attribute "generateAndExecuteSQLquery" action will generate and execute SQL query like this:
* SELECT CompanyName,City,Country FROM Company

Action "convertSQLresultToXML" will convert that result to XML which can be imported to Efecte WebAPI.
You can find example of converted XML from file [SimpleCRM_company.xml!](SimpleCRM_company.xml)

## User in companies relation import
To be able to create relations using WebAPI you need to know:
* Relation directly (which card you will update and which one to refering).
* Unique value on for both card types.
* Relation field.

On user template default unique value is email address:
![Alt text](https://raw.githubusercontent.com/olljanat/vco-efecte/master/Examples/SimpleCRM/Efecte_user_template.PNG "User template")

On company template default unique value is company name:
![Alt text](https://raw.githubusercontent.com/olljanat/vco-efecte/master/Examples/SimpleCRM/Efecte_company_template.PNG "Company template")

Simple CRM database contains view "v_UserInCompany" which returns needed values for us:
![Alt text](https://raw.githubusercontent.com/olljanat/vco-efecte/master/Examples/SimpleCRM/SimpleCRM-UserInCompany_view.PNG "SQL view v_UserInCompany")
If your source application does not contain view like this you need either create it or add some custom logic to workflow which first converts data to correct format.


Workflow "Example - SimpleCRM UserInCompany to Efecte" gets data from "v_UserInCompany" view, converts it to XML (you can see example on: [SimpleCRM_UserInCompany.xml!](SimpleCRM_UserInCompany.xml) and create references to Efecte using it.

