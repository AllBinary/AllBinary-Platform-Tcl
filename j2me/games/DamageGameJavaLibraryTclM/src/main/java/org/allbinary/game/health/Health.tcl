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
# package org.allbinary.game.health

oo::class create ::Health {
    superclass ::JObject
}

oo::define ::Health {
    method initFields_Health {} {
        my jset health 0
        my jset maxHealth 0
        my jset healthListenerInterface {}
        my jset health 0
        my jset maxHealth 0
        my jset healthListenerInterface [::NullHealthListener::staticGet_NULL_HEALTH_LISTENER]
        return
    }
    

    constructor {maxHealth} {
        next
        my initFields_Health
        my setMaxHealth $maxHealth
        my setHealth $maxHealth
    }
    

    method heal {ahealth} {
        set newHealth [jint [expr {[my getHealth] + $ahealth}]]
        if {[expr {$newHealth > [my getMaxHealth]}]} {
            my setHealth [my getMaxHealth]
        } else {
            my setHealth $newHealth
        }
    }
    

    method healMax {} {
        my setHealth [my getMaxHealth]
    }
    

    method isDamaged {} {
        if {[expr {[my getHealth] != [my getMaxHealth]}]} {
            return true
        } else {
            return false
        }
    }
    

    method damage {ahealth} {
        if {[expr {$ahealth < 0}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append "******* Trying to heal when damaging. Damage: "
            $stringBuffer appendint $ahealth
            $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
            $stringBuffer append [my toString]
            ::ForcedLogUtil::log [$stringBuffer toString] [self]
            return
        }
        set health [jint [expr {[my getHealth] - $ahealth}]]
        my setHealth $health
    }
    

    method isAlive {} {
        if {[expr {[my getHealth] <= 0}]} {
            return false
        } else {
            return true
        }
    }
    

    method getMaxHealth {} {
        return [my jget maxHealth]
    }
    

    method setMaxHealth {maxHealth} {
        my jset maxHealth $maxHealth
    }
    

    method setHealth {health} {
        if {[expr {$health > [my getMaxHealth]}]} {
            my jset health [my getMaxHealth]
        } elseif {[expr {$health < 0}]} {
            my jset health 0
        } else {
            my jset health $health
        }
        if {[expr {[my jget healthListenerInterface] ne {}}]} {
            [my jget healthListenerInterface] onHealthChange
        }
    }
    

    method getHealth {} {
        return [my jget health]
    }
    

    method addListener {healthGraphic} {
        my jset healthListenerInterface $healthGraphic
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [::Health::staticGet_HEALTH_LABEL]
        $stringBuffer appendint [my jget health]
        $stringBuffer append [::Health::staticGet_MAX_HEALTH_LABEL]
        $stringBuffer appendint [my jget maxHealth]
        return [$stringBuffer toString]
    }
}

namespace eval ::Health {
    variable NULL_HEALTHValue {}
    variable NULL_HEALTHSet 0
    proc staticGet_NULL_HEALTH {} {
        variable NULL_HEALTHValue
        variable NULL_HEALTHSet
        if {!$NULL_HEALTHSet} {
            set NULL_HEALTHSet 1
            set NULL_HEALTHValue [::Health new 0]
        }
        return $NULL_HEALTHValue
    }
    proc staticSet_NULL_HEALTH {value} {
        variable NULL_HEALTHValue
        variable NULL_HEALTHSet
        set NULL_HEALTHSet 1
        set NULL_HEALTHValue $value
    }
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "Health Resource"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
    variable HEALTH_LABELValue {}
    variable HEALTH_LABELSet 0
    proc staticGet_HEALTH_LABEL {} {
        variable HEALTH_LABELValue
        variable HEALTH_LABELSet
        if {!$HEALTH_LABELSet} {
            set HEALTH_LABELSet 1
            set HEALTH_LABELValue "Health: "
        }
        return $HEALTH_LABELValue
    }
    proc staticSet_HEALTH_LABEL {value} {
        variable HEALTH_LABELValue
        variable HEALTH_LABELSet
        set HEALTH_LABELSet 1
        set HEALTH_LABELValue $value
    }
    variable MAX_HEALTH_LABELValue {}
    variable MAX_HEALTH_LABELSet 0
    proc staticGet_MAX_HEALTH_LABEL {} {
        variable MAX_HEALTH_LABELValue
        variable MAX_HEALTH_LABELSet
        if {!$MAX_HEALTH_LABELSet} {
            set MAX_HEALTH_LABELSet 1
            set MAX_HEALTH_LABELValue " Max: "
        }
        return $MAX_HEALTH_LABELValue
    }
    proc staticSet_MAX_HEALTH_LABEL {value} {
        variable MAX_HEALTH_LABELValue
        variable MAX_HEALTH_LABELSet
        set MAX_HEALTH_LABELSet 1
        set MAX_HEALTH_LABELValue $value
    }
}


