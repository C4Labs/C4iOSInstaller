#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

#  Single View Application 
INSTALLER_VERSION="$1"

PROJECT_TEMPLATES_VERSION="$1"
PROJECT_TEMPLATES_LOCATION="./Application"
PROJECT_TEMPLATES_NAME="INSTALL_TEMPLATES_1_0_0.pkg"
pkgbuild --root $PROJECT_TEMPLATES_LOCATION --identifier com.c4ios.installer.templates --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/iOS/Application $PROJECT_TEMPLATES_NAME

BASE_VERSION="$1"
BASE_LOCATION="./Base"
BASE_NAME="INSTALL_BASE_1_0_0.pkg"
pkgbuild --root $BASE_LOCATION --identifier com.c4ios.installer.base --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/Project\ Templates/Base/ $BASE_NAME

IOS_VERSION="$1"
IOS_LOCATION="./iOS"
IOS_NAME="INSTALL_IOS_1_0_0.pkg"
pkgbuild --root $IOS_LOCATION --identifier com.c4ios.installer.iOS --version $INSTALLER_VERSION --install-location /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/iOS $IOS_NAME