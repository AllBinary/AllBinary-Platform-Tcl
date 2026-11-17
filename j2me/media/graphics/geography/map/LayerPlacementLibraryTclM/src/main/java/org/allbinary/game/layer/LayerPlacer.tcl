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
# package org.allbinary.game.layer

oo::class create ::LayerPlacer {
    superclass ::JObject
}

oo::define ::LayerPlacer {
    method initFields_LayerPlacer {} {
        my jset enumerationUtil {}
        my jset layerInterfaceVisitor {}
        my jset dimension {}
        my jset enumerationUtil [::EnumerationUtil::getInstance]
        
        
        return
    }
    

    constructor {layerInterfaceVisitor dimension} {
        next
        my initFields_LayerPlacer
        my jset layerInterfaceVisitor $layerInterfaceVisitor
        my jset dimension $dimension
    }
    

    method processList {list} {
        set size [$list size]
        set layerPlacementInterface {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerPlacementInterface [[$list jget objectArray] get $index]
            my process $layerPlacementInterface
        }
    }
    

    method process {layerPlacementInterface} {
        set relativePoint [my getPoint $layerPlacementInterface]
        set layerInterfaceFactory [::LayerInterfaceFactory::getInstance]
        set hashtable [$layerPlacementInterface getInstance]
        set enumeration [$hashtable keys]
        set point {}
        set layerHashtable {}
        set x 0
        set y 0
        set z 0
        set layerInterface {}
        while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
            set point [[my jget enumerationUtil] nextElement $enumeration]
            set layerHashtable [$hashtable get $point]
            set x [expr {[$point getX] + [$relativePoint getX]}]
            set y [expr {[$point getY] + [$relativePoint getY]}]
            set z [expr {[$point getZ] + [$relativePoint getZ]}]
            set layerInterface [$layerInterfaceFactory getNexInstance $layerHashtable $x $y $z]
            [my jget layerInterfaceVisitor] visit $layerInterface
        }
    }
    

    method getPoint {layerPlacementInterface} {
        set pointFactory [::PointFactory::getInstance]
        set layerPlacementType [$layerPlacementInterface getLayerType]
        if {[expr {$layerPlacementType eq [[::LayerPlacementTypeFactory::getInstance] jget MAP]}]} {
            set width [$layerPlacementInterface getWidth]
            set height [$layerPlacementInterface getHeight]
            set x ([expr {([expr {[[my jget dimension] getX] - $width}]) / 2}])
            set y ([expr {([expr {[[my jget dimension] getY] - $height}]) / 2}])
            return [$pointFactory createXY $x $y]
        } elseif {[expr {$layerPlacementType eq [[::LayerPlacementTypeFactory::getInstance] jget UP]}]} {
            set width [$layerPlacementInterface getWidth]
            set height [$layerPlacementInterface getHeight]
            set x ([expr {([expr {[[my jget dimension] getX] - $width}]) / 2}])
            set y [expr {-$height}]
            return [$pointFactory createXY $x $y]
        } else {
            error [jexception Exception "PlacementType Not Recognized"]
        }
    }
}

namespace eval ::LayerPlacer {
}


