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
# package org.allbinary.game

oo::class create ::GameMode {
    superclass ::JObject
}

oo::define ::GameMode {
    method initFields_GameMode {} {
        my jset name {}
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {name} {
        next
        my initFields_GameMode
        my setName $name
    }
    

    method setName {name} {
        my jset name $name
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method toString {} {
        return [my getName]
    }
}

namespace eval ::GameMode {
    variable NONEValue {}
    variable NONESet 0
    proc staticGet_NONE {} {
        variable NONEValue
        variable NONESet
        if {!$NONESet} {
            set NONESet 1
            set NONEValue [::GameMode new [[::StringUtil::getInstance] jget NULL_STRING]]
        }
        return $NONEValue
    }
    proc staticSet_NONE {value} {
        variable NONEValue
        variable NONESet
        set NONESet 1
        set NONEValue $value
    }
    variable SERVERValue {}
    variable SERVERSet 0
    proc staticGet_SERVER {} {
        variable SERVERValue
        variable SERVERSet
        if {!$SERVERSet} {
            set SERVERSet 1
            set SERVERValue [::GameMode new "Server"]
        }
        return $SERVERValue
    }
    proc staticSet_SERVER {value} {
        variable SERVERValue
        variable SERVERSet
        set SERVERSet 1
        set SERVERValue $value
    }
    variable CLIENTValue {}
    variable CLIENTSet 0
    proc staticGet_CLIENT {} {
        variable CLIENTValue
        variable CLIENTSet
        if {!$CLIENTSet} {
            set CLIENTSet 1
            set CLIENTValue [::GameMode new "Client"]
        }
        return $CLIENTValue
    }
    proc staticSet_CLIENT {value} {
        variable CLIENTValue
        variable CLIENTSet
        set CLIENTSet 1
        set CLIENTValue $value
    }
}


