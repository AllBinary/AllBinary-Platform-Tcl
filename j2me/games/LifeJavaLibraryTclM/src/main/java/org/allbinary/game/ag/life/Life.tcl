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
# package org.allbinary.game.ag.life

oo::class create ::Life {
    superclass ::JObject
}

oo::define ::Life {
    method initFields_Life {} {
        my jset lives 0
        my jset startLives 0
        my jset maxlives 0
        
        
        
        return
    }
    
    

    constructor {lives maxlives} {
        next
        my initFields_Life
        my jset maxlives $maxlives
        if {[expr {$lives > [my jget maxlives]}]} {
            error [jexception Exception "To Many Lives"]
        }
        my jset lives $lives
        my jset startLives $lives
    }
    

    method get {} {
        return [my jget lives]
    }
    

    method set {lives} {
        my jset lives $lives
    }
    

    method reset {} {
        my jset lives [my jget startLives]
    }
    

    method add {lives} {
        if {[expr {![my reachedLimit]}]} {
            if {[expr {[jint [expr {[my jget lives] + $lives}]] <= [jint [my getMaxlives]]}]} {
                my jset lives [jshort ([jint [expr {[my jget lives] + $lives}]])]
            } else {
                my jset lives [my getMaxlives]
            }
        }
    }
    

    method isAlive {} {
        if {[expr {[jint [my jget lives]] <= 0}]} {
            return false
        } else {
            return true
        }
    }
    

    method getMaxlives {} {
        return [my jget maxlives]
    }
    

    method reachedLimit {} {
        if {[expr {[expr {[my jget lives] > [my jget maxlives]}] || [expr {[jint [my jget lives]] < 0}]}]} {
            return true
        } else {
            return false
        }
    }
    

    method deaths {lives} {
        if {[expr {![my reachedLimit]}]} {
            if {[expr {[jint [expr {[my jget lives] - $lives}]] >= 0}]} {
                my jset lives [jshort ([jint [expr {[my jget lives] - $lives}]])]
            } else {
                my jset lives 0
            }
        }
    }
    

    method getStartLives {} {
        return [my jget startLives]
    }
    

    method setStartLives {startLives} {
        my jset startLives $startLives
    }
}

namespace eval ::Life {
    variable NO_LIFEValue {}
    variable NO_LIFESet 0
    proc staticGet_NO_LIFE {} {
        variable NO_LIFEValue
        variable NO_LIFESet
        if {!$NO_LIFESet} {
            set NO_LIFESet 1
            set NO_LIFEValue [::Life::createLife]
        }
        return $NO_LIFEValue
    }
    proc staticSet_NO_LIFE {value} {
        variable NO_LIFEValue
        variable NO_LIFESet
        set NO_LIFESet 1
        set NO_LIFEValue $value
    }
    proc createLife {} {
        try {
            return [::Life new [jshort 0] [jshort 0]]
        } on error {e} {
            error [jexception RuntimeException {}]
        }
    }
}


