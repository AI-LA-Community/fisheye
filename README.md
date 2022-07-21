# The Fisheye Project

Fisheye is the Climate Change MetaVerse.  Fisheye organizes data related to climate action and makes that data available as 3D, real-time assets.

Please read our [CONTRIBUTING](CONTRIBUTING.md) page and use your imagination a bit.

## Inspiration

Microsoft is putting a lot of energy into [IoT and the MetaVerse](https://www.youtube.com/watch?v=GAkB98ewcjI) for industrial optimization purposes.  We can leverage this same concept to fight climate change. But first we need to get the data into a Climate Change MetaVerse.

[Reinforcement Learning](https://en.wikipedia.org/wiki/Reinforcement_learning) is one of the most powerful AI techniques available today.  RL can create amazing and novel solutions to problems given the correct [training environment](https://www.vox.com/future-perfect/2019/9/20/20872672/ai-learn-play-hide-and-seek).  Again, by making climate data accessible to virtual environments

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



## Local Dev
We are using [Python virtual environments](https://docs.python.org/3/library/venv.html). If you are unfamiliar with `venv` please reach out to the other contributors.  Please use the [requirements.txt](requirements.txt) in the current environment.

Make sure you have a file called `.env` that resembles the file [.env.sample](.env.sample).  Cop the sample file and replace with your values.

### Database
For local dev, please install postgres and set up a database called "fisheye-dev".  We'll create a schema called "epa" until we have a full architecture review.  If you are using [Windows Subsystem for Linux (WSL2)](https://docs.microsoft.com/en-us/windows/wsl/install) you can follow [these instructions for Postgresql](https://harshityadav95.medium.com/postgresql-in-windows-subsystem-for-linux-wsl-6dc751ac1ff3).  You will need to install the database locally until we have establihed a public SQL server.

Remember to login to postgres as `postgres` and create a user for the application.  These credentials should be unique and will only apply to your local database.  Here is an example

```
>  sudo -u postgres createuser buddha
> sudo -u postgres createdb fisheye_dev
```
Login to the db
```
> sudo -u postgres psql
> psql (12.11 (Ubuntu 12.11-0ubuntu0.20.04.1))
Type "help" for help.

> alter user buddha with encrypted password 'epa4you';
> grant all privileges on database fisheye_dev to buddha ;
```

At this point, you're still the `postgres` user, so logout and re-enter the db

```
psql buddha -d fisheye_dev
```

There are no tables.  But let's create the epa schema.

```
> create schema epa
```

All right! Now you should have some structure and you can either a) join the ETL team or b) go back to Python.

You may have to run the script several times to load the database.  It runs out of memory, but if you run it again it will just work on the new tables.
