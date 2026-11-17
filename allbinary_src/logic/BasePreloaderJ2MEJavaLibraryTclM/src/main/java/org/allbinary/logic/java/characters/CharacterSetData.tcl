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
# package org.allbinary.logic.java.characters

oo::class create ::CharacterSetData {
    superclass ::JObject
}

oo::define ::CharacterSetData {
    method initFields_CharacterSetData {} {
        my jset US_ASCII {}
        my jset ISO_8859_1 {}
        my jset UTF_8 {}
        my jset UTF_16 {}
        my jset UTF_16BE {}
        my jset UTF_16LE {}
        my jset US_ASCII "US-ASCII"
        my jset ISO_8859_1 "ISO-8859-1"
        my jset UTF_8 "UTF-8"
        my jset UTF_16 "UTF-16"
        my jset UTF_16BE "UTF-16BE"
        my jset UTF_16LE "UTF-16LE"
        return
    }
    
    

    constructor {} {
        next
        my initFields_CharacterSetData
    }
}

namespace eval ::CharacterSetData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CharacterSetData new]
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
        return [::CharacterSetData::staticGet_instance]
    }
}


