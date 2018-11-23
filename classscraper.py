
from bs4 import BeautifulSoup, SoupStrainer
import csv
import requests
from urllib.request import urlopen
import re
from urllib.parse import urljoin


basepage = urlopen("https://www.census.gov/programs-surveys/popest.html")
BS = BeautifulSoup(basepage)
base = "https://www.census.gov"

links = list()
##for link in BS.findAll('a', attrs={'href': re.compile("^http")}):
for link in BS.findAll('a', href = True):
	thislink  = link.get('href')
	if thislink.startswith('/'):
		thislink = urljoin(base,thislink)
	if thislink.startswith('#'):
		thislink = thislink[1:]
	if thislink.endswith('html') or thislink.endswith('/') or thislink.endswith('bureau'):
		links.append(thislink)

links = list(set(links))

extlinks = "externallinks.csv"
with open(extlinks, 'w') as openedfile:
    filewriter = csv.writer(openedfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_ALL)
    filewriter.writerow(links)

 
   
    