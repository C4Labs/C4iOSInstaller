#
#
#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

#Single View Application 
INSTALLER_VERSION="$1"

PROJECT_TEMPLATES_VERSION="$1"
PROJECT_TEMPLATES_LOCATION="./projectTemplates"
PROJECT_TEMPLATES_NAME="INSTALL_TEMPLATES_1_0_0.pkg"
#weird... using the TEMPLATES_DESTINATION variable doesn't work, but pasting it in does!
#TEMPLATES_DESTINATION="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/Application"
pkgbuild --root $PROJECT_TEMPLATES_LOCATION --identifier com.c4ios.installer.templates --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/iOS/Application $PROJECT_TEMPLATES_NAME

LANGUAGECHOICE_VERSION="$1"
LANGUAGECHOICE_LOCATION="./languageChoice"
LANGUAGECHOICE_NAME="INSTALL_LANGUAGECHOICE_1_0_0.pkg"
#weird... using the DOCSET_DESTINATION variable doesn't work, but pasting it in does!
#DOCSET_DESTINATION="/Users/$USER/Desktop/Install/DocSets"
pkgbuild --root "$LANGUAGECHOICE_LOCATION" --identifier com.c4ios.installer.languageChoice --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/Project\ Templates/Base/ $LANGUAGECHOICE_NAME
