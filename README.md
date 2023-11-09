# UofT Data Analytics BootCamp, Project 2 - Group 8
# by Mahsa Nafei, Keyana Pregent, Allan Mathews and Yargi Kilinc

This is an ETL project, practicing building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, four CSV files been created and the CSV files were used to create an ERD and a table schema. Finally, the CSV files were uploaded into a Postgres database. See below for more details.


### Files

This is the starter code and the file to download and start this project: <a href="https://static.bc-edx.com/data/dl-1-2/m13/lms/starter/Starter_Files.zip">Project 2 ETL files</a>


### Instructions

The instructions for this mini project are divided into the following subsections:

* Creating the Category and Subcategory DataFrames

* Creating the Campaign DataFrame

* Creating the Contacts DataFrame

* Creating the Crowdfunding Database


#### Creating the Category and Subcategory DataFrames

1. The `crowdfunding.xlsx` Excel data was extracted and transformed to create a category DataFrame that has the following columns:

    * A "category_id" column that has entries going sequentially from "cat1" to "cat*n*", where *n* is the number of unique categories
    
    * A "category" column that contains only the category titles

    * The following image shows this category DataFrame:

        ![category DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/category_DataFrame.png)


2. The category DataFrame was exported as `category.csv` and saved.


3. The `crowdfunding.xlsx` Excel data was extracted and transformed to create a subcategory DataFrame that has the following columns:

    * A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcat*n*", where *n* is the number of unique subcategories

    * A "subcategory" column that contains only the subcategory titles

    * The following image shows this subcategory DataFrame:

        ![subcategory DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/subcategory_DataFrame.png)


4. The subcategory DataFrame was exported as `subcategory.csv` and saved.


#### Creating the Campaign DataFrame

1. The `crowdfunding.xlsx` Excel data was extracted and transformed to create a campaign DataFrame that has the following columns:

    * The "cf_id" column
    * The "contact_id" column
    * The "company_name" column
    * The "blurb" column, renamed to "description"
    * The "goal" column, converted to the `float` data type
    * The "pledged" column, converted to the `float` data type
    * The "outcome" column
    * The "backers_count" column
    * The "country" column
    * The "currency" column
    * The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the `datetime` format
    * The "deadline" column, renamed to "end_date" and with the UTC times converted to the `datetime` format
    * The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
    * The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

    * The following image shows this campaign DataFrame:

        ![campaign DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/campaign_DataFrame.png)


2. The campaign DataFrame was exported as `campaign.csv` and saved.


#### Creating the Contacts DataFrame

1. Python dictionary methods were used for extracting and transforming the data from the `contacts.xlsx` Excel data:


2. And following steps were completed:

    * The `contacts.xlsx` file was imported into a DataFrame.
    * Iterated through the DataFrame, converting each row to a dictionary.
    * Iterated through each dictionary, doing the following:
      * The dictionary values were extraceted from the keys by using a Python list comprehension.
      * The values were added for each row to a new list.
    * A new DataFrame was created that contains the extracted data.
    * Each "name" column value was splitted into a first and last name, and each placed in a new column.
    * The DataFrame was cleaned and exported as `contacts.csv` and saved.


3. The final DataFrame was checked to make sure that resembles the one in the following image:

    ![final contact DataFrame](https://static.bc-edx.com/data/dl-1-2/m13/lms/img/contact_DataFrame_final.png)


#### Creating the Crowdfunding Database

1. 4 CSV files were inspected, and an ERD of the tables were sketched by using [QuickDBD](http://www.quickdatabasediagrams.com).


2. The information from the ERD was used to create a table schema for each CSV file.

    **Note:** the data types, primary keys, foreign keys, and other constraints were specified.


3. The database schema was saved as a Postgres file named `crowdfunding_db_schema.sql`.


4. A new Postgres database was created and named as `crowdfunding_db`.


5. Using the database schema, the tables were created in the correct order to handle the foreign keys.


6. The table creation was verified by running a `SELECT` statement for each table.


7. Each CSV file were imported into its corresponding SQL table.


8. Verified that each table has the correct data by running a `SELECT` statement for each.


#### Methods

* To split each "category & sub-category" column value into "category" and "subcategory" column values, `df[["new_column1","new_column2"]] = df["column"].str.split()` was used, making sure that the correct parameters were passed to the `split()` function.


* To get the unique category and subcategory values from the "category" and "subcategory" columns, NumPy array was created where the array length equals the number of unique categories and unique subcategories from each column. Here is more information about how to do so; [numpy.arange](https://numpy.org/doc/stable/reference/generated/numpy.arange.html) .


* To create the category and subcategory identification numbers, a list comprehension was used to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.


* This is link is for information about creating a new Pandas DataFrame, [pandas.DataFrame](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html) .


* To convert the "goal" and "pledged" columns to the `float` data type, the `astype()` method was used.


### References

Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.



* This link is for more information about how to add the "category_id" and "subcategory_id" unique identification numbers to the campaign DataFrame, [pandas.DataFrame.merge](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.merge.html) .

