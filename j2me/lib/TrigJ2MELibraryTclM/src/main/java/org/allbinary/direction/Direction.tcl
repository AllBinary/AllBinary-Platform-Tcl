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
# package org.allbinary.direction

oo::class create ::Direction {
    superclass ::JObject
}

oo::define ::Direction {
    method initFields_Direction {} {
        my jset name {}
        my jset otherName {}
        my jset value 0
        my jset frameFactor 0
        
        
        
        
        return
    }
    

    constructor {name otherName value frameFactor} {
        next
        my initFields_Direction
        my jset name $name
        my jset otherName $otherName
        my jset value $value
        my jset frameFactor $frameFactor
        [::Direction::staticGet_directionArray] set $value [self]
    }
    
    

    method getValue {} {
        return [my jget value]
    }
    

    method getFrameFactor {} {
        return [my jget frameFactor]
    }
    

    method getOtherName {} {
        return [my jget otherName]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Direction: "
        $stringBuffer append [my getName]
        $stringBuffer append " Or: "
        $stringBuffer append [my getOtherName]
        $stringBuffer append " Value: "
        $stringBuffer appendint [my jget value]
        return [$stringBuffer toString]
    }
}

namespace eval ::Direction {
    variable directionArrayValue {}
    variable directionArraySet 0
    proc staticGet_directionArray {} {
        variable directionArrayValue
        variable directionArraySet
        if {!$directionArraySet} {
            set directionArraySet 1
            set directionArrayValue [jarray 13 {}]
        }
        return $directionArrayValue
    }
    proc staticSet_directionArray {value} {
        variable directionArrayValue
        variable directionArraySet
        set directionArraySet 1
        set directionArrayValue $value
    }
    proc getInstance {direction} {
        return [[::Direction::staticGet_directionArray] get $direction]
    }
}


