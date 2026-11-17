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
# package org.allbinary.graphics.color

oo::class create ::BasicColorFactory {
    superclass ::JObject
}

oo::define ::BasicColorFactory {
    method initFields_BasicColorFactory {} {
        my jset NULL_COLOR {}
        my jset TAN {}
        my jset SKIN_PINK {}
        my jset RED {}
        my jset LIGHT_RED {}
        my jset DARK_GREEN {}
        my jset GREEN {}
        my jset LIGHT_GREEN {}
        my jset PURPLE {}
        my jset BLUE {}
        my jset LIGHT_BLUE {}
        my jset VERY_LIGHT_BLUE {}
        my jset PUCE {}
        my jset AQUA {}
        my jset YELLOW {}
        my jset PINK {}
        my jset BLACK {}
        my jset GREY {}
        my jset LIGHT_GREY {}
        my jset DARK_GREY {}
        my jset ORANGE {}
        my jset BROWN {}
        my jset WHITE {}
        my jset TRANSPARENT_COLOR {}
        my jset TRANSPARENT_GREY {}
        my jset TRANSPARENT_BLACK {}
        my jset TRANSPARENT_RED {}
        my jset CLEAR_COLOR {}
        my jset BORDER_COLOR {}
        my jset NULL_COLOR [my createInstanceARGB 255 255 255 255 "null color"]
        my jset TAN [my createInstance 0xE9D8B5]
        my jset SKIN_PINK [my createInstance 0xFDCECE]
        my jset RED [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0xFF0000 "red"]
        my jset LIGHT_RED [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0xFFA0A0 "light red"]
        my jset DARK_GREEN [my createInstance 0x00FF00]
        my jset GREEN [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0x00DD00 "green"]
        my jset LIGHT_GREEN [my createInstance 0x007700]
        my jset PURPLE [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0x400040 "purple"]
        my jset BLUE [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0x0000FF "blue"]
        my jset LIGHT_BLUE [my createInstance 0x00aaff]
        my jset VERY_LIGHT_BLUE [my createInstance 0x000033]
        my jset PUCE [my createInstance 0xFF00AA]
        my jset AQUA [my createInstance 0x00FFFF]
        my jset YELLOW [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0xFFFF00 "yellow"]
        my jset PINK [my createInstance 0xFF00FF]
        my jset BLACK [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0x000000 "black"]
        my jset GREY [my createInstanceAN [[::BasicColorUtil::getInstance] jget ALPHA] 0xAAAAAA "grey"]
        my jset LIGHT_GREY [my createInstance 0xC0C0C0]
        my jset DARK_GREY [my createInstance 0x404040]
        my jset ORANGE [my createInstance 0xe07718]
        my jset BROWN [my createInstance 0x956B00]
        my jset WHITE [my createInstance 0xFFFFFF]
        my jset TRANSPARENT_COLOR [my createInstanceAN 0x00000000 0x000000 [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my jset TRANSPARENT_GREY [my createInstanceAN 0x52000000 0xECECEC [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my jset TRANSPARENT_BLACK [my createInstanceAN 0x52000000 0x000000 [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my jset TRANSPARENT_RED [my createInstanceAN 0x52000000 0xFF0000 [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my jset CLEAR_COLOR [my jget BLACK]
        my jset BORDER_COLOR [my jget WHITE]
        return
    }

    constructor {} {
        next
        my initFields_BasicColorFactory
    }
    
    

    method createInstance {value} {
        return [::BasicColor new [[::BasicColorUtil::getInstance] jget ALPHA] $value [[::StringUtil::getInstance] jget EMPTY_STRING]]
    }
    

    method createInstanceA {alphaValue value} {
        return [::BasicColor new $alphaValue $value [[::StringUtil::getInstance] jget EMPTY_STRING]]
    }
    

    method createInstanceAN {alphaValue value name} {
        return [::BasicColor new $alphaValue $value $name]
    }
    

    method createInstanceARGB {alphaValue r g b name} {
        set ALPHA_MASK 0xFF000000
        return [::BasicColor new $alphaValue [jint [expr {[jint [expr {[jint [expr {([expr {([jint [expr {$alphaValue << 24}]]) & $ALPHA_MASK}]) + ([expr {([jint [expr {$r << 16}]]) & 0x00FF0000}])}]] + ([expr {([jint [expr {$g << 8}]]) & 0x0000FF00}])}]] + ([expr {$b & 0x000000FF}])}]] [[::StringUtil::getInstance] jget EMPTY_STRING]]
    }
}

namespace eval ::BasicColorFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicColorFactory new]
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
        return [::BasicColorFactory::staticGet_instance]
    }
}


