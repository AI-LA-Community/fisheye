from email import feedparser


import feedparser
RSS_SOURCE = "https://www.ndbc.noaa.gov/data/latest_obs/46222.rss"

if __name__=="__main__":
    """
    Pulling data from the National Data Buoy Center to test RSS feeds.
    Docs here: https://www.ndbc.noaa.gov/rss_access.shtml 
    """
    print(RSS_SOURCE)
    buoy_feed = feedparser.parse(RSS_SOURCE)
    for entry in buoy_feed.entries:
        print(entry)
        print("\n")
        print(entry['title'])
        print(entry['published'])
        print(entry['where']['coordinates'])