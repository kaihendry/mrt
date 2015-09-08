Problem: No sane [SMRT map](http://www.smrt.com.sg/) that's in a small SVG file

Goal: Create a small open Web-friendly SVG for navigating [SMRT trains](http://en.wikipedia.org/wiki/SMRT_Trains)

# Plan of action

1. Found bloated [SVG of map](http://www.lta.gov.sg/content/dam/ltaweb/corp/PublicTransport/files/Train%20System%20Map%20Jun%202015.svg) from [LTA](http://www.lta.gov.sg/content/ltaweb/en/public-transport/mrt-and-lrt-trains/train-system-map.html)
2. Remove junk like background and header in Inkscape
3. Run `svgo` over it
4. Publish it at <http://smrt.dabase.com/> with an Appcache so it's fast on mobiles and can be used offline. Also add meta junk so mobile Web apps feel like native ones.
