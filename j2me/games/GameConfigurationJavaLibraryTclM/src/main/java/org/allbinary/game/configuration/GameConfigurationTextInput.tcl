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
# package org.allbinary.game.configuration

oo::class create ::GameConfigurationTextInput {
    superclass ::JObject
}

oo::define ::GameConfigurationTextInput {
    method initFields_GameConfigurationTextInput {} {
        my jset label {}
        my jset text {}
        my jset label [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset text [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {label text} {
        next
        my initFields_GameConfigurationTextInput
        my setText $text
        my setLabel $label
        [::GameConfigurationTextInput::staticGet_hashtable] put [my getLabel] [self]
    }
    
    

    method setText {text} {
        my jset text $text
    }
    

    method getText {} {
        return [my jget text]
    }
    

    method setLabel {label} {
        my jset label $label
    }
    

    method getLabel {} {
        return [my jget label]
    }
    
}

namespace eval ::GameConfigurationTextInput {
    variable hashtableValue {}
    variable hashtableSet 0
    proc staticGet_hashtable {} {
        variable hashtableValue
        variable hashtableSet
        if {!$hashtableSet} {
            set hashtableSet 1
            set hashtableValue [[::StdUtil::getInstance] createHashtable]
        }
        return $hashtableValue
    }
    proc staticSet_hashtable {value} {
        variable hashtableValue
        variable hashtableSet
        set hashtableSet 1
        set hashtableValue $value
    }
    variable SIMULATOR_IPValue {}
    variable SIMULATOR_IPSet 0
    proc staticGet_SIMULATOR_IP {} {
        variable SIMULATOR_IPValue
        variable SIMULATOR_IPSet
        if {!$SIMULATOR_IPSet} {
            set SIMULATOR_IPSet 1
            set SIMULATOR_IPValue [::GameConfigurationTextInput new "IP: " "192.168.1.3"]
        }
        return $SIMULATOR_IPValue
    }
    proc staticSet_SIMULATOR_IP {value} {
        variable SIMULATOR_IPValue
        variable SIMULATOR_IPSet
        set SIMULATOR_IPSet 1
        set SIMULATOR_IPValue $value
    }
    variable SIMULATOR_PORTValue {}
    variable SIMULATOR_PORTSet 0
    proc staticGet_SIMULATOR_PORT {} {
        variable SIMULATOR_PORTValue
        variable SIMULATOR_PORTSet
        if {!$SIMULATOR_PORTSet} {
            set SIMULATOR_PORTSet 1
            set SIMULATOR_PORTValue [::GameConfigurationTextInput new "Port: " "8010"]
        }
        return $SIMULATOR_PORTValue
    }
    proc staticSet_SIMULATOR_PORT {value} {
        variable SIMULATOR_PORTValue
        variable SIMULATOR_PORTSet
        set SIMULATOR_PORTSet 1
        set SIMULATOR_PORTValue $value
    }
    proc update {textField} {
        set anyType [$textField getLabel]
        set gameConfigurationTextInput [[::GameConfigurationTextInput::staticGet_hashtable] get $anyType]
        $gameConfigurationTextInput setText [$textField getString]
    }
    proc getHashtable {} {
        return [::GameConfigurationTextInput::staticGet_hashtable]
    }
}


