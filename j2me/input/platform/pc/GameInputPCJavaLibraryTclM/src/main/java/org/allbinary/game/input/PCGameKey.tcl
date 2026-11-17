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

oo::class create ::PCGameKey {
    superclass ::Input
}

oo::define ::PCGameKey {
    method initFields_PCGameKey {} {
        return
    }
    

    constructor {keyCode name} {
        next $keyCode $name
        my initFields_PCGameKey
        set id [my getId]
        if {[expr {$id >= 0}]} {
            [::InputFactory::getInstance] add $id [self]
        }
    }
    

    method toString {} {
        return [string cat "PCGameKey: " [next]]
    }
    
}

namespace eval ::PCGameKey {
    proc getString {keyCode} {
        set input [[::InputFactory::getInstance] getInstanceById $keyCode]
        if {[expr {$input ne {}}]} {
            return [$input getName]
        } else {
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
    }
}


