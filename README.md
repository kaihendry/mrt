Problem: No [SMRT map](http://www.smrt.com.sg/Trains/NetworkMap.aspx) that's in a sane small SVG file

* [PDF](http://www.smrt.com.sg/Portals/0/PDFs/Trains/Network_Map_100112.pdf) is 92K, but [PDFs are bad](http://dabase.com/blog/PDF-A_versus_HTML/) and closed :(
* Hugh, complex and sucky [Website is unusable from a mobile](http://www.smrt.com.sg/Trains/NetworkMap.aspx)

Goal: Create a small open Web-friendly SVG for navigating [SMRT trains](http://en.wikipedia.org/wiki/SMRT_Trains)

# Plan of action

1. Split map.svg into: `cck-line.svg green-line.svg legend.svg purple-line.svg red-line.svg yellow-line.svg` So people can work on them separately and reduce the chance of resolving an XML conflict _shudder_
2. Convert [complex paths](http://s.natalian.org/2012-12-02/1354431225_1366x768.png) to simpler SVG constructs. e.g. Lots of SVG points to text.
3. Re-combine `split-lines/*.svg` back into map.svg
4. Live a suckless lifestyle

# Tips

* [svgo](https://github.com/svg/svgo) 0.1.6 hilarious carves up [[map.min.svg]]
* Use [inkscape](http://en.wikipedia.org/wiki/Inkscape), save to plain SVG. Optimise SVG seems broken.
* [Resize page to drawing](http://s.natalian.org/2012-12-02/1354414212_1366x768.png)
* F2 to select text paths, F1 then delete to review
* [Scour](http://www.codedread.com/scour/) seems to help a little, but not much and we don't really know what it does
* Using Droid Sans 18 size. Bold for junctions.
* Using Droid Sans 14 size for station numbers
* [Station number boxes have a height of of 15px](http://s.natalian.org/2012-12-02/1354442644_1366x768.png)
* Use the [align tools](http://s.natalian.org/2012-12-02/1354442382_1366x768.png)
* Know some good SVG tips or tools? Please share them!
