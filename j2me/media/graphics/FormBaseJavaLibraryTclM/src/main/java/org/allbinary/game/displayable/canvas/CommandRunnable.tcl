#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

oo::class create ::CommandRunnable {
    superclass ::JObject
}

oo::define ::CommandRunnable {
    method initFields_CommandRunnable {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset commandFormInputProcessor {}
        my jset command {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        return
    }
    

    constructor {commandFormInputProcessor command} {
        next
        my initFields_CommandRunnable
        my jset commandFormInputProcessor $commandFormInputProcessor
        my jset command $command
    }
    

    method run {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
            set canvas [[my jget commandFormInputProcessor] getCanvas]
            set commandListener [$canvas getCustomCommandListener]
            $commandListener commandAction [my jget command] $canvas
            [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
        }
    }
}

namespace eval ::CommandRunnable {
}


