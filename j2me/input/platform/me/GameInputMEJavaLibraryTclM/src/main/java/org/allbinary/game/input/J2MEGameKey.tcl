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

oo::class create ::J2MEGameKey {
    superclass ::Input
}

oo::define ::J2MEGameKey {
    method initFields_J2MEGameKey {} {
        return
    }
    

    constructor {key keyName} {
        next $key $keyName
        my initFields_J2MEGameKey
        set id [my getId]
        if {[expr {$id >= 0}]} {
            set inputFactory [::InputFactory::getInstance]
            $inputFactory add $id [self]
        }
    }
    

    method toString {} {
        return [[[[::StringMaker new] append "J2MEGameKey: "] append [next]] toString]
    }
    
}

namespace eval ::J2MEGameKey {
    proc getString {keyCode} {
        set input [[::InputFactory::getInstance] getInstanceById $keyCode]
        if {[expr {$input ne {}}]} {
            return [$input getName]
        } else {
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
    }
}


