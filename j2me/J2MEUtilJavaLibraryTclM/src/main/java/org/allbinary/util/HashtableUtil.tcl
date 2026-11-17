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
# package org.allbinary.util

oo::class create ::HashtableUtil {
    superclass ::JObject
}

oo::define ::HashtableUtil {
    method initFields_HashtableUtil {} {
        my jset enumerationUtil {}
        my jset enumerationUtil [::EnumerationUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_HashtableUtil
    }
    
    

    method putAll {fromHashtable hashtable} {
        set enumeration [$fromHashtable keys]
        set keyCanBeNull {}
        set valueCanBeNull {}
        while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
            set keyCanBeNull [[my jget enumerationUtil] nextElement $enumeration]
            set valueCanBeNull [$hashtable get $keyCanBeNull]
            if {[expr {$valueCanBeNull eq {}}]} {
            } else {
                $hashtable put $keyCanBeNull $valueCanBeNull
            }
        }
    }
    

    method getKeysAsArray {hashtable} {
        set objectArray [jarray [$hashtable size] {}]
        set index 0
        set enumeration [$hashtable keys]
        while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
            $objectArray set [jpostincr index 1] [[my jget enumerationUtil] nextElement $enumeration]
        }
        return $objectArray
    }
    

    method getKeysAsList {hashtable} {
        set list [::BasicArrayListS new [$hashtable size]]
        set enumeration [$hashtable keys]
        while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
            $list add [[my jget enumerationUtil] nextElement $enumeration]
        }
        return $list
    }
}

namespace eval ::HashtableUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::HashtableUtil new]
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
        return [::HashtableUtil::staticGet_instance]
    }
}


