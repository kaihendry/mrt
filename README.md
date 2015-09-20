Problem: No sane [MRT map](http://www.smrt.com.sg/) that's in a small SVG file

Goal: Create a small open Web-friendly SVG for navigating [MRT trains](http://en.wikipedia.org/wiki/SMRT_Trains)

<a title="By Aforl. (Own work.) [CC BY-SA 3.0 (http://creativecommons.org/licenses/by-sa/3.0)], via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File%3ASingapore_MRT_and_LRT_System_Map.svg"><img width="512" alt="Singapore MRT and LRT System Map" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Singapore_MRT_and_LRT_System_Map.svg/512px-Singapore_MRT_and_LRT_System_Map.svg.png"/></a>

# Plan of action

1. Found [LTA](http://www.lta.gov.sg/content/ltaweb/en/public-transport/mrt-and-lrt-trains/train-system-map.html)
[SVG of map](http://www.lta.gov.sg/content/dam/ltaweb/corp/PublicTransport/files/Train%20System%20Map%20Jun%202015.svg) too bloated and text poorly marked up. Wikipedia user [Aforl](https://commons.wikimedia.org/wiki/User:Aforl) has a much better [SMRT map](https://commons.wikimedia.org/wiki/File:Singapore_MRT_and_LRT_System_Map.svg).
2. Run `svgo` over it.
3. Publish it at <http://mrt.dabase.com/> with an Appcache so it's fast on mobiles and can be used offline. Also add meta junk so mobile Web apps feel like native ones.

# CHALLENGE: Make the SVG smaller!

I will acknowledge anyone who manages to shave more than 10% off the size of
the map.svg without significantly deteriorating the rendering.

* 131K [Aforl](https://commons.wikimedia.org/wiki/User:Aforl)
* 1.5M hendry
* 2.6M LTA
