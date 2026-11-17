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
# package org.allbinary.animation.vector

oo::class create ::LineAnimation {
    superclass ::Animation
}

oo::define ::LineAnimation {
    method initFields_LineAnimation {} {
        my jset newLine {}
        my jset tempLine {}
        my jset line {}
        my jset newLine [jarrayof 2 {jarray 2 0}]
        my jset tempLine [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY]
        my jset line [jarrayof 2 {jarray 2 0}]
        return
    }
    

    constructor {basicColor} {
        next
        my initFields_LineAnimation
        my setBasicColorP $basicColor
    }
    

    method init {x y} {
        [[my jget newLine] get 0] set 0 $x
        [[my jget newLine] get 0] set 1 $y
        [[my jget newLine] get 1] set 0 $x
        [[my jget newLine] get 1] set 1 $y
        my jset tempLine [my jget line]
        my jset line [my jget newLine]
        my jset newLine [my jget tempLine]
    }
    

    method setPosition {x y z} {
        [[my jget newLine] get 0] set 0 [[[my jget line] get 1] get 0]
        [[my jget newLine] get 0] set 1 [[[my jget line] get 1] get 1]
        [[my jget newLine] get 1] set 0 $x
        [[my jget newLine] get 1] set 1 $y
        my jset tempLine [my jget line]
        my jset line [my jget newLine]
        my jset newLine [my jget tempLine]
    }
    

    method paintXY {graphics x y} {
        set currentLine [my jget line]
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my getBasicColorP] [my getColor]
        $graphics drawLine [[$currentLine get 0] get 0] [[$currentLine get 0] get 1] [[$currentLine get 1] get 0] [[$currentLine get 1] get 1]
    }
    

    method nextFrame {} {
    }
    

    method getBasicColorP {} {
        return [next]
    }
    

    method setBasicColorP {basicColor} {
        next $basicColor
    }
}

namespace eval ::LineAnimation {
}


