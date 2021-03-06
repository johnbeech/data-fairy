Template Writer - Code Generation Handy Guide
=============================================

Written by John Beech
Contact data.fairy@mkv25.net

Different configurations for the template writer are stored in an XML file, usually {NAME}d TemplateConfig_LANGUAGE.xml.
To generate code, load up a template config, and apply it to a Datasource. The Template Writer DLL can be included into any project and used to generate code for this purpose.

The Template Config file contains references to code template files used to create the dataset.


Recognised templates
====================

Database File Template - The index of all classes generated by the routine
Class File Template - The structure for an individual class, containing all data
Enumeration File Template - The structure for an enumeration containing all IDs
Package File - Any number of additional files that need to live in the same package as the Database, Classes, and Enumerations, such as interface or utility classes.


Fragments
=========

Fragments are short, one line templates that the code generator will produce when iterating over a series of rows or tables.
The required fragements are:

ClassProperty
ClassVariable
Constant
Enum
LocalAssignment
LocalVariable
NewClassInstance
Parameter


Config Variables
================

{NAME} - A short descriptive {NAME} for the template
Author - The person or company who wrote the template
Contact - Useful contact information for the author

DataBaseFileTemplate - The relative path of the Database File Template file
ClassFileTemplate - The relative path of the Class File Template file
EnumerationFileTemplate - The relative path of the Enumeration File Template file
PackageFile - The relative path of a Package File template

PackageSeperator - The symbol, or symbols used to seperate package groups (aka {NAME}spaces). E.g. a . (net.mkv25.DataFairy), or a / (net/mkv25/DataFairy).
CreatePackageFolderStructure - true | false - should the package string be used to create folders.

Variable - Any number of Key->{VALUE} pair variables that will be searched and replaced for in ALL template files.


Search and Repalce Template Strings
===================================

Fragments
---------
CLASS_NAME = "{CLASS_NAME}"
NAME = "{NAME}";
VALUE = "{VALUE}";
TYPE = "{TYPE}";
PARAMS = "{PARAMS}";
VALUE_ID = "{VALUE_ID}";
ENUM_VALUE_NAME = "{ENUM_VALUE_NAME}";
SCOPE = "{SCOPE}";

Files
-----
VARIABLE_LIST = "{VARIABLE_LIST}";
TABLE_NAME = "{TABLE_NAME}";
ROW_LIST = "{ROW_LIST}";
ROW_CLASS_NAME = "{ROW_CLASS_NAME}";
PROPERTY_LIST = "{PROPERTY_LIST}";
PACKAGE_STRING = "{PACKAGE_STRING}";
ENUM_VALUES_LIST = "{ENUM_VALUES_LIST}";
ENUM_CLASS_NAME = "{ENUM_CLASS_NAME}";
CLASS_PARAMS_STRING = "{CLASS_PARAMS_STRING}";
CLASS_PARAMS_LIST = "{CLASS_PARAMS_LIST}";
CLASS_LIST = "{CLASS_LIST}";
