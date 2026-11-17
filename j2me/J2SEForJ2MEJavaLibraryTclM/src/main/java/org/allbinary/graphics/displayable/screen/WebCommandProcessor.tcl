#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

oo::class create ::WebCommandProcessor {
    superclass ::JObject
}

oo::define ::WebCommandProcessor {
    method initFields_WebCommandProcessor {} {
        my jset logUtil {}
        my jset aboutCommandProcessor {}
        my jset list {}
        my jset logUtil [::LogUtil::getInstance]
        my jset aboutCommandProcessor [::AboutCommandProcessor::getInstance]
        my jset list [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_WebCommandProcessor
    }
    
    

    method process {midletCommandListener command canvas} {
        try {
            if {[expr {[::Desktop::isDesktopSupported] && [[::Desktop::getDesktop] isSupported [[::Desktop::staticGet_Action] jget BROWSE]]}]} {
                [::Desktop::getDesktop] browse [::URI new [[my jget list] removeAt 0]]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget PROCESS] $e
        }
    }
}

namespace eval ::WebCommandProcessor {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::WebCommandProcessor new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::WebCommandProcessor::staticGet_instance]
    }
}


