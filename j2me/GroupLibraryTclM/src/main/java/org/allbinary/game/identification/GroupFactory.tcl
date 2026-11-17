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
# package org.allbinary.game.identification

oo::class create ::GroupFactory {
    superclass ::JObject
}

oo::define ::GroupFactory {
    method initFields_GroupFactory {} {
        my jset logUtil {}
        my jset NULL_GROUP_ARRAY {}
        my jset list {}
        my jset index 0
        my jset logUtil [::LogUtil::getInstance]
        my jset NULL_GROUP_ARRAY [jarray 0 {}]
        my jset list [::BasicArrayListD new]
        my jset index 0
        return
    }

    constructor {} {
        next
        my initFields_GroupFactory
    }
    
    

    method getNextGroup {} {
        set group [[[my jget list] jget objectArray] get [my jget index]]
        my jpostinc index 1
        return $group
    }
    

    method getNextGroupByName {name} {
        set group [my getNextGroup]
        $group setName $name
        return $group
    }
    

    method init {groups nameArray} {
        set stringMaker [::StringMaker new]
        set stringUtil [::StringUtil::getInstance]
        set TEAM "Team "
        [my jget list] clear
        my jset index 0
        set size [[my jget list] size]
        set name {}
        while {[expr {$size < [jint $groups]}]} {
            set name [$stringUtil jget EMPTY_STRING]
            if {[expr {$size < [$nameArray length]}]} {
                set name [$nameArray get $size]
            } else {
                $stringMaker delete 0 [$stringMaker length]
                set name [[[$stringMaker append $TEAM] appendint $size] toString]
            }
            [my jget list] add [::Group new $name [jshort ([jint [expr {$size + 3}]])]]
            jpostincr size 1
        }
    }
}

namespace eval ::GroupFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GroupFactory new]
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
        return [::GroupFactory::staticGet_instance]
    }
}


