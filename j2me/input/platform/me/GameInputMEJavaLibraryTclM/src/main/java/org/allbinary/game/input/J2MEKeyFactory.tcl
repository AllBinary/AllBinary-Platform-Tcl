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
# package org.allbinary.game.input

oo::class create ::J2MEKeyFactory {
    superclass ::JObject
}

oo::define ::J2MEKeyFactory {
    method initFields_J2MEKeyFactory {} {
        my jset gameKeyFactory {}
        my jset gameKeyFactory [::GameKeyFactory::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_J2MEKeyFactory
    }
    

    method init {} {
        set gameKeyArray [jarrayfrom [list [[my jget gameKeyFactory] jget DOWN] [[my jget gameKeyFactory] jget FIRE] [[my jget gameKeyFactory] jget GAME_A] [[my jget gameKeyFactory] jget GAME_B] [[my jget gameKeyFactory] jget GAME_C] [[my jget gameKeyFactory] jget GAME_D] [[my jget gameKeyFactory] jget KEY_NUM0] [[my jget gameKeyFactory] jget KEY_NUM1] [[my jget gameKeyFactory] jget KEY_NUM2] [[my jget gameKeyFactory] jget KEY_NUM3] [[my jget gameKeyFactory] jget KEY_NUM4] [[my jget gameKeyFactory] jget KEY_NUM5] [[my jget gameKeyFactory] jget KEY_NUM6] [[my jget gameKeyFactory] jget KEY_NUM7] [[my jget gameKeyFactory] jget KEY_NUM8] [[my jget gameKeyFactory] jget KEY_NUM9] [[my jget gameKeyFactory] jget KEY_POUND] [[my jget gameKeyFactory] jget KEY_STAR] [[my jget gameKeyFactory] jget LEFT] [[my jget gameKeyFactory] jget LEVEL_DOWN] [[my jget gameKeyFactory] jget LEVEL_UP] [[my jget gameKeyFactory] jget NONE] [[my jget gameKeyFactory] jget RIGHT] [[my jget gameKeyFactory] jget UP]]]
        set inputFactory [::InputFactory::getInstance]
        for {set index [$gameKeyArray length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            $inputFactory add [[$gameKeyArray get $index] getId] [$gameKeyArray get $index]
        }
    }
    

    method isSubmission {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget FIRE]}]} {
            return true
        }
        return false
    }
    

    method isDelete {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget GAME_D]}]} {
            return true
        }
        return false
    }
    

    method isBackSpace {input} {
        return false
    }
    

    method isUp {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget UP]}]} {
            return true
        }
        return false
    }
    

    method isDown {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget DOWN]}]} {
            return true
        }
        return false
    }
    

    method isLeft {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget LEFT]}]} {
            return true
        }
        return false
    }
    

    method isRight {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget RIGHT]}]} {
            return true
        }
        return false
    }
    

    method isEnter {input} {
        if {[expr {$input eq [[my jget gameKeyFactory] jget FIRE]}]} {
            return true
        }
        return false
    }
}

namespace eval ::J2MEKeyFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::J2MEKeyFactory new]
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
        return [::J2MEKeyFactory::staticGet_instance]
    }
}


