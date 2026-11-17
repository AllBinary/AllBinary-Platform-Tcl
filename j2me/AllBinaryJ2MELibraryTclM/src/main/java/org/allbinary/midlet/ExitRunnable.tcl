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
# package org.allbinary.midlet

oo::class create ::ExitRunnable {
    superclass ::JObject
}

oo::define ::ExitRunnable {
    method initFields_ExitRunnable {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset midlet {}
        my jset processor {}
        my jset isProgress false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        
        return
    }
    

    constructor {midlet processor isProgress} {
        next
        my initFields_ExitRunnable
        my jset midlet $midlet
        my jset isProgress $isProgress
        my jset processor $processor
    }
    

    method run {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
            [my jget midlet] destroyAppInRunnable false [my jget isProgress]
            [my jget midlet] setDisplay [::NullCanvas::staticGet_NULL_CANVAS]
            [my jget midlet] notifyDestroyed
            [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
            [my jget processor] process
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
            try {
                [my jget processor] process
            } on error {e2} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
            }
        }
    }
}

namespace eval ::ExitRunnable {
}


