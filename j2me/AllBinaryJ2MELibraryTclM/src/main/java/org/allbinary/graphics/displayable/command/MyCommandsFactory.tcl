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
# package org.allbinary.graphics.displayable.command

oo::class create ::MyCommandsFactory {
    superclass ::JObject
}

oo::define ::MyCommandsFactory {
    method initFields_MyCommandsFactory {} {
        my jset NO_COMMAND {}
        my jset GAUGE_CHANGE {}
        my jset SET_DISPLAYABLE {}
        my jset PAUSE_COMMAND {}
        my jset RESUME_COMMAND {}
        my jset NO_COMMAND [::Command new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::StringUtil::getInstance] jget EMPTY_STRING] [expr {-1}] [expr {-1}]]
        my jset GAUGE_CHANGE [::Command new "GAUGE_CHANGE" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_ITEM] 1]
        my jset SET_DISPLAYABLE [::Command new "Display" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 2]
        my jset PAUSE_COMMAND [::Command new "Pause" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 0]
        my jset RESUME_COMMAND [::Command new "Resume" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 0]
        return
    }
    
    

    constructor {} {
        next
        my initFields_MyCommandsFactory
    }
}

namespace eval ::MyCommandsFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MyCommandsFactory new]
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
        return [::MyCommandsFactory::staticGet_instance]
    }
}


