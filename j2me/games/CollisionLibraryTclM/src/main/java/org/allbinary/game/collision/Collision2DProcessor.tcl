# Generated Code Do Not Modify
# package org.allbinary.game.collision

oo::class create ::Collision2DProcessor {
    superclass ::CollisionProcessor
}

oo::define ::Collision2DProcessor {
    method initFields_Collision2DProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_Collision2DProcessor
    }
    

    method isCollision {myLayer myLayer2} {
        if {[expr {[expr {[expr {[expr {[$myLayer2 getXP] >= [$myLayer getX2]}] || [expr {[$myLayer2 getYP] >= [$myLayer getY2]}]}] || [expr {[$myLayer2 getX2] <= [$myLayer getXP]}]}] || [expr {[$myLayer2 getY2] <= [$myLayer getYP]}]}]} {
            return false
        } else {
            return true
        }
    }
}

namespace eval ::Collision2DProcessor {
}


