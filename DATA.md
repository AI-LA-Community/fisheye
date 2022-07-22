# Fisheye Data Sources

In the spirit of engagement, we encourage community members to find and integrate various data sets.  This page has suggestions and notes for ingesting data.

## Dimensions of the Data

As we organize the data we'll need to build wrapper classes for the 3D assets.  Consider these aspects as you search for data.

* Data Refresh rate:
  * Static: Load once and never update again!  Easy! What could go wrong?
  * Batch update: Data is refreshed periodically, such as monthyly, weekly or daily.
  * Dynamic Update: Data is refreshed intermittently with little or no warning.  Watch these sneaky weasels.
  * Real-time: Data comes rapidly and needs to be current, like traffic data or current crowd density
* License: Are we really allowed to grab it?
* Protocol: We'll start with REST (because who doesn't like to rest first thing?) as it's easier to manage, but protocols such as MQTT and [MIDI](https://en.wikipedia.org/wiki/MIDI) should be available.
  * MIDI allows for very interesting control surfaces that resemble environmental data: See min about 24 of [this video](https://www.youtube.com/watch?v=j92Mda8bHe0)
* Physical scope
  * Point data: is this from a single point like a buoy
  * Radial Area data: Does this data refer to a circular or spherical area
  * Polygon / GIS Area: Does this data come with a defined area like a city boundary?


## Suggested Sources
Some data we can link to directly and some we'll have to ingest to make it addressable.  We'll have to find a strategy for mixed hosted/remote data sources.

* [National Data Buoy Center](https://www.ndbc.noaa.gov/) has tons of ocean data
* [USGS California Water](https://waterdata.usgs.gov/ca/nwis/rt/) data (refreshed every few hours)
* [EPA ECHO](https://echo.epa.gov/) data is awesome. Please don't tell the other datasets this is my favorite.
* [Data.gov Climate](https://data.gov/climate/) data
* [Coastal Flooding Theme](https://data.gov/climate/water/coastal-flooding-theme-adds-thirteen-new-datasets/) on data.gov
* [NASA Earth Data](https://www.earthdata.nasa.gov/) NASA is one of the best data providers around, so let's make sure we get their stuff. (Nods to Jean-Paul!)

## EPA Echo Data
Our initial use case is data from the EPA ECHO dataset. We'll start with these.

* [FRS Facility Data](https://echo.epa.gov/tools/data-downloads/frs-download-summary)
* [ECHO Demographic Data](https://echo.epa.gov/tools/data-downloads/demographic-download-summary)
* [ECHO Air Quality Data](https://echo.epa.gov/tools/data-downloads/icis-air-download-summary)
* [ECHO Air Emissions Summary](https://echo.epa.gov/tools/data-downloads/air-emissions-download-summary)

Most of these are .zip files containing multile child files. We'll have to identify how to use Azure resources to unpack and load them, since the examples basically load from local .csv files.