#adds: <title>C4 Xcode Templates</title>
xml ed -s /installer-gui-script -t elem -n title -v "C4 Xcode Templates" distribution.xml > distribution1.xml
mv distribution1.xml distribution.xml

#adds: <background file="background.png" />
xml ed -s /installer-gui-script -t elem -n background -i /installer-gui-script/background -t attr -n file -v C4InstallerBackground.png distribution.xml > distribution1.xml
mv distribution1.xml distribution.xml

#modifies: <background file="background.png" mime-type="image/png"/>
xml ed -i /installer-gui-script/background -t attr -n mime-type -v image/png distribution.xml > distribution1.xml
mv distribution1.xml distribution.xml

#adds: <welcome file="resources/welcome.rtf" />
xml ed -s /installer-gui-script -t elem -n welcome -i /installer-gui-script/welcome -t attr -n file -v welcome.rtf distribution.xml > distribution1.xml
mv distribution1.xml distribution.xml

#modifies: <welcome file="./resources/welcome.rtf" mime-type="application/rtf"/>
xml ed -i /installer-gui-script/welcome -t attr -n mime-type -v text/rtf distribution.xml > distribution1.xml
mv distribution1.xml distribution.xml