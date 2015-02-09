#
#
#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

#Single View Application 
INSTALLER_VERSION="$1"

PROJECT_TEMPLATES_VERSION="$1"
PROJECT_TEMPLATES_LOCATION="./projectTemplates"
PROJECT_TEMPLATES_NAME="INSTALL_TEMPLATES_0_02.pkg"
#weird... using the TEMPLATES_DESTINATION variable doesn't work, but pasting it in does!
#TEMPLATES_DESTINATION="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/Application"
pkgbuild --root $PROJECT_TEMPLATES_LOCATION --identifier com.c4ios.installer.templates --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/iOS/Application $PROJECT_TEMPLATES_NAME

IOS_BASE_VERSION="$1"
IOS_BASE_LOCATION="./iosBase"
IOS_BASE_NAME="INSTALL_IOS_BASE_0_01.pkg"
pkgbuild --root $IOS_BASE_LOCATION --identifier com.c4ios.installer.iosbase --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/iOS $IOS_BASE_NAME

APP_BASE_VERSION="$1"
APP_BASE_LOCATION="./base"
APP_BASE_NAME="INSTALL_APP_BASE_0_01.pkg"
pkgbuild --root $APP_BASE_LOCATION --identifier com.c4ios.installer.appbase --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/Project\ Templates/Base $APP_BASE_NAME

DOCSET_VERSION="$1"
DOCSET_LOCATION="./docs"
DOCSET_NAME="INSTALL_DOCSET_0_01.pkg"
#weird... using the DOCSET_DESTINATION variable doesn't work, but pasting it in does!
#DOCSET_DESTINATION="/Users/$USER/Desktop/Install/DocSets"
pkgbuild --root "$DOCSET_LOCATION" --identifier com.c4ios.installer.docset --version $INSTALLER_VERSION --install-location /Users/$USER/Library/Developer/Shared/Documentation/DocSets/ $DOCSET_NAME

