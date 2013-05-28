#!/bin/sh

#  C4iOSMoveDocset.sh
#  
#
#  Created by Travis Kirton on 12-05-25.
#  Copyright (c) 2012 POSTFL. All rights reserved.

[ ! -d /Users/$USER/Library/Developer ] && sudo mkdir /Users/$USER/Library/Developer || echo "exists"
[ ! -d /Users/$USER/Library/Developer/Shared ] && sudo mkdir /Users/$USER/Library/Developer/Shared || echo "exists"
[ ! -d /Users/$USER/Library/Developer/Shared/Documentation ] && sudo mkdir /Users/$USER/Library/Developer/Shared/Documentation || echo "exists"
[ ! -d /Users/$USER/Library/Developer/Shared/Documentation/DocSets ] && sudo mkdir /Users/$USER/Library/Developer/Shared/Documentation/DocSets || echo "exists"
sudo mv /Users/com.C4iOS.C4.docset /Users/$USER/Library/Developer/Shared/Documentation/DocSets