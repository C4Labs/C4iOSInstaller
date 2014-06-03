#
#
#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

#Single View Application 
INSTALLER_VERSION="$1"

TEMPLATES_VERSION="$1"
TEMPLATES_LOCATION="./templates"
TEMPLATES_NAME="INSTALL_TEMPLATES_$TEMPLATES_VERSION.pkg"
TEMPLATES_DESTINATION="/Users/$USER/Desktop/Install/Templates"

pkgbuild --root "$TEMPLATES_LOCATION" --identifier com.c4ios.installer.templates --version $INSTALLER_VERSION --install-location $TEMPLATES_DESTINATION $TEMPLATES_NAME

DOCSET_VERSION="$1"
DOCSET_LOCATION="./docs"
DOCSET_NAME="INSTALL_DOCSET_$DOCSET_VERSION.pkg"
DOCSET_DESTINATION="/Users/$USER/Desktop/Install/DocSets"
#/Users/$USER/Library/Developer/Shared/Documentation/DocSets/
pkgbuild --root "$DOCSET_LOCATION" --identifier com.c4ios.installer.docset --version $INSTALLER_VERSION --install-location $DOCSET_DESTINATION $DOCSET_NAME