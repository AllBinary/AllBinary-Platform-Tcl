# Generated Code Do Not Modify
# package org.allbinary.game.collision

oo::class create ::CollisionThreedProcessor {
    superclass ::CollisionProcessor
}

oo::define ::CollisionThreedProcessor {
    method initFields_CollisionThreedProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_CollisionThreedProcessor
    }
    

    method isCollision {myLayer myLayer2} {
        if {[expr {[expr {[expr {[expr {[expr {[expr {[$myLayer2 getXP] >= [$myLayer getX2]}] || [expr {[$myLayer2 getYP] >= [$myLayer getY2]}]}] || [expr {[$myLayer2 getX2] <= [$myLayer getXP]}]}] || [expr {[$myLayer2 getY2] <= [$myLayer getYP]}]}] || [expr {[$myLayer2 getZP] < [$myLayer getZ2]}]}] || [expr {[$myLayer2 getZ2] > [$myLayer getZP]}]}]} {
            return false
        } else {
            return true
        }
    }
}

namespace eval ::CollisionThreedProcessor {
}


