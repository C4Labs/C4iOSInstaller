#  buildIn/Users/travis/Development/C4iOSInstaller/buildInstaller.shstaller.sh
#
#  Created by Travis Kirton on 14-06-02.

# sets the version for the current installer
VERSION="0_02"

# builds the component packages, passing the current version
sh buildPackageComponents.sh $VERSION 

# defines the names of the component packages, this matches their names defined in the buildPackageComponents.sh script
TEMPLATES_PKG="INSTALL_TEMPLATES_0_02.pkg"
IOSBASE_PKG="INSTALL_IOS_BASE_0_01.pkg"
APPBASE_PKG="INSTALL_APP_BASE_0_01.pkg"
DOCSET_PKG="INSTALL_DOCSET_0_01.pkg"

#builds the distribution xml
productbuild --synthesize --package $TEMPLATES_PKG --package $IOSBASE_PKG --package $APPBASE_PKG --package $DOCSET_PKG distribution.xml

#modifies the distribution 
sh updateDistributionXML.sh

#builds the distribution package
productbuild --distribution distribution.xml --resources ./resources unsigned.pkg

#signs the package
productsign --sign "Developer ID Installer: Travis Stuart Kirton (75C7KVJZ99)" unsigned.pkg signed.pkg

#renames the package
mv signed.pkg C4Installer_$VERSION.pkg

rm -Rf $TEMPLATES_PKG
rm -Rf $IOSBASE_PKG
rm -Rf $APPBASE_PKG
rm -Rf $DOCSET_PKG
rm -Rf unsigned.pkg
