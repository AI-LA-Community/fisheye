# The Fisheye Project

Fisheye is the Climate Change MetaVerse.  Fisheye organizes data related to climate action and makes that data available as 3D, real-time assets.

## Basic Use Case

The [U.S. Environmental Protection Agency](https://www.epa.gov/) publishes data on facilities that have violated U.S. policy or laws.  Geo-coordinates are typically provided so the violation can be analyzed in its correct geographical context.  Fisheye provides assets and libraries so a Digital Twin can be dragged and dropped into the 3D engine (Unreal, Unity, ect) of their choice where it will automatically place itself in the correct postion and begin emitting data to the other assets. 

## Work Efforts

1.	Extract data from a few sources.  The first is the ECHO EPA data: https://echo.epa.gov/tools/data-downloads#exporter
1.	Setup a cloud Postgres database on Azure
1.	Push the data probably via Azure serverless functions
1.	Start an API for the most common data requests.  My expectations is we’ll do this in Python / Django 
1.	Design, deploy and manage the project website.
1.	Develop multiple 3D assets for importing into Unreal or Unity
1.	Find a CDN for these assets
1.	Develop C++ libraries within Unreal to wrap the data assets
1.	Develop C# libraries within Unity to wrap the data assets
1.	Develop examples Scenes / Levels for game platforms to illustrate use of the assets
1.	Publish some Jupyter notebooks showing the types of analysis that can be done with the data
1.	Promote the project on various social / developer sites.
1.	Manage the project via tickets and roadmaps
1.	Design small games including the gameplay and narratives around available data assets
1.	Devops, devops, devops


## Data

### EPA Echo Data
Our initial use case is data from the EPA ECHO dataset. We'll start with these.

* [FRS Facility Data](https://echo.epa.gov/tools/data-downloads/frs-download-summary)
* [ECHO Demographic Data](https://echo.epa.gov/tools/data-downloads/demographic-download-summary)
* [ECHO Air Quality Data](https://echo.epa.gov/tools/data-downloads/icis-air-download-summary)
* [ECHO Air Emissions Summary](https://echo.epa.gov/tools/data-downloads/air-emissions-download-summary)

Most of these are .zip files containing multile child files. We'll have to identify how to use Azure resources to unpack and load them, since the examples basically load from local .csv files.
