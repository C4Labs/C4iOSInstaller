#  buildInstaller.sh
#
#  Created by Travis Kirton on 14-06-02.

# sets the version for the current installer
VERSION="1_0_0"

# builds the component packages, passing the current version
sh buildPackageComponents.sh $VERSION 

# defines the names of the component packages, this matches their names defined in the buildPackageComponents.sh script
TEMPLATES_PKG="INSTALL_TEMPLATES_1_0_0.pkg"
LANGUAGECHOICE_PKG="INSTALL_LANGUAGECHOICE_1_0_0.pkg"

#builds the distribution xml
productbuild --synthesize --package $TEMPLATES_PKG --package $LANGUAGECHOICE_PKG distribution.xml

#modifies the distribution LANGUAGECHOICE_PKG
sh updateDistributionXML.sh

#builds the distribution package
productbuild --distribution distribution.xml --resources ./resources unsigned.pkg

#signs the package
productsign --sign "Developer ID Installer: Travis Stuart Kirton (75C7KVJZ99)" unsigned.pkg signed.pkg

#renames the package
mv signed.pkg C4Installer_$VERSION.pkg

rm -Rf $TEMPLATES_PKG
rm -Rf $LANGUAGECHOICE_PKG
rm -Rf unsigned.pkg
