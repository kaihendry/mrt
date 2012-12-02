[ -e smrt-station-names.html ] || curl -o smrt-station-names.html 'http://www.smrt.com.sg/Portals/_default/Skins/SMRTDefault/train/html5/index.html#'
cat smrt-station-names.html | \
grep -E 'h4 |li.*aspx' | \
# <h4 class="bp">Bukit Panjang LRT</h4>
sed -E 's-.*class="(.+)">(.+)</h4>-\1: "\2"-' | \
# <li><a target="_blank" href="/Trains/NetworkMap/AngMoKio.aspx">Ang Mo Kio</a></li>
sed -E 's-.*<li>.*href="/Trains/NetworkMap/(.+).aspx">(.+)</a>.*-\1: "\2"-' | \
tee station-names.reb

exit


According to this Rebol script:

>> x: load %station-names.reb
== [ns: "North South Line"
    Admiralty: "Admiralty"
    AngMoKio: "Ang Mo Kio"
    Bishan: "Bishan"
    Braddell: "Braddell" ...

>> foreach [a s] x [unless equal? to-string a  ajoin parse s " -" [print [a s]] ]
ns North South Line
ew East West Line
cc Circle Line
bp Bukit Panjang LRT
== none

All statation names are abbreviated into webpage names by removing
the spaces or dashes from them and preserving the capitalization.
I propose to use these compact names as canonical names in graph definitions.
