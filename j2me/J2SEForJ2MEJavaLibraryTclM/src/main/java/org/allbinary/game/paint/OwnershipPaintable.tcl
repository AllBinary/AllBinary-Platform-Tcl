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
# package org.allbinary.game.paint

#J2SEForJ2ME
oo::class create ::OwnershipPaintable {
    superclass ::Paintable
}

oo::define ::OwnershipPaintable {
    method initFields_OwnershipPaintable {} {
        my jset logUtil {}
        my jset displayInfo {}
        my jset myFontProcessor {}
        my jset COPYRIGHT {}
        my jset basicColor {}
        my jset color 0
        my jset anchor 0
        my jset COPYRIGHT_Y 0
        my jset beginWidth 0
        my jset logUtil [::LogUtil::getInstance]
        my jset displayInfo [::DisplayInfoSingleton::getInstance]
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset COPYRIGHT "AllBinary Copyright (c) 2011"
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        my jset color [[my jget basicColor] intValue]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset COPYRIGHT_Y 0
        my jset beginWidth 0
        return
    }
    
    

    constructor {} {
        next
        my initFields_OwnershipPaintable
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset COPYRIGHT_Y [expr {2 * [$font getHeight]}]
        my jset beginWidth ([expr {[$font stringWidth [my jget COPYRIGHT]] >> 1}])
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
        my jset color [$basicColor intValue]
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        $graphics setColor [my jget color]
        set halfWidth [[my jget displayInfo] getLastHalfWidth]
        set height [[my jget displayInfo] getLastHeight]
        $graphics drawString [my jget COPYRIGHT] [jint [expr {$halfWidth - [my jget beginWidth]}]] [jint [expr {$height - [my jget COPYRIGHT_Y]}]] [my jget anchor]
    }
}

namespace eval ::OwnershipPaintable {
    proc getInstance {} {
        return [::OwnershipPaintable new]
    }
}


