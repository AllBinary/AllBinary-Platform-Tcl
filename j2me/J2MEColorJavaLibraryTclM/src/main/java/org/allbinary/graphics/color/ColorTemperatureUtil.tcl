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

oo::class create ::ColorTemperatureUtil {
    superclass ::JObject
}

oo::define ::ColorTemperatureUtil {
    method initFields_ColorTemperatureUtil {} {
        my jset basicColorFactory {}
        my jset basicColorFactory [::BasicColorFactory::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_ColorTemperatureUtil
    }
    
    

    method getBasicColor {thirdTemp} {
        set basicColor [[my jget basicColorFactory] jget RED]
        if {[expr {$thirdTemp > 3700}]} {
            set basicColor [[my jget basicColorFactory] jget PURPLE]
        } elseif {[expr {$thirdTemp > 3200}]} {
            set basicColor [[my jget basicColorFactory] jget BLUE]
        } elseif {[expr {$thirdTemp > 2700}]} {
            set basicColor [[my jget basicColorFactory] jget PUCE]
        } elseif {[expr {$thirdTemp > 2200}]} {
            set basicColor [[my jget basicColorFactory] jget WHITE]
        } elseif {[expr {$thirdTemp > 1700}]} {
            set basicColor [[my jget basicColorFactory] jget GREEN]
        } elseif {[expr {$thirdTemp > 1200}]} {
            set basicColor [[my jget basicColorFactory] jget YELLOW]
        } elseif {[expr {$thirdTemp > 700}]} {
            set basicColor [[my jget basicColorFactory] jget ORANGE]
        }
        return $basicColor
    }
}

namespace eval ::ColorTemperatureUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ColorTemperatureUtil new]
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
        return [::ColorTemperatureUtil::staticGet_instance]
    }
}


