#
#
#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

#Single View Application 
INSTALLER_VERSION="$1"

TEMPLATES_VERSION="$1"
TEMPLATES_LOCATION="./templates"
TEMPLATES_NAME="INSTALL_TEMPLATES_$TEMPLATES_VERSION.pkg"
#weird... using the TEMPLATES_DESTINATION variable doesn't work, but pasting it in does!
#TEMPLATES_DESTINATION="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/Application"

pkgbuild --root $TEMPLATES_LOCATION --identifier com.c4ios.installer.templates --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/Application $TEMPLATES_NAME

DOCSET_VERSION="$1"
DOCSET_LOCATION="./docs"
DOCSET_NAME="INSTALL_DOCSET_$DOCSET_VERSION.pkg"
#weird... using the DOCSET_DESTINATION variable doesn't work, but pasting it in does!
#DOCSET_DESTINATION="/Users/$USER/Desktop/Install/DocSets"
pkgbuild --root "$DOCSET_LOCATION" --identifier com.c4ios.installer.docset --version $INSTALLER_VERSION --install-location /Users/$USER/Library/Developer/Shared/Documentation/DocSets/ $DOCSET_NAME