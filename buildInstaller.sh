#  buildInstaller.sh
#
#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

# sets the version for the current installer
VERSION="0_01"

# builds the component packages, passing the current version
sh buildPackageComponents.sh $VERSION 

# defines the names of the component packages, this matches their names defined in the buildPackageComponents.sh script
TEMPLATES_PKG="INSTALL_TEMPLATES_$VERSION.pkg"
DOCSET_PKG="INSTALL_DOCSET_$VERSION.pkg"

#builds the distribution xml
productbuild --synthesize --package $TEMPLATES_PKG --package $DOCSET_PKG distribution.xml

#modifies the distribution 
sh updateDistributionXML.sh

#builds the distribution package
productbuild --distribution distribution.xml --resources ./resources --package-path $TEMPLATES_PKG --package-path $DOCSET_PKG C4Installer_$VERSION.pkg

rm -Rf $TEMPLATES_PKG
rm -Rf $DOCSET_PKG