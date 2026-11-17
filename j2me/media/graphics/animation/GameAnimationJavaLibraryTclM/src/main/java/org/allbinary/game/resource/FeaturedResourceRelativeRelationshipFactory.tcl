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
# package org.allbinary.game.resource

oo::class create ::FeaturedResourceRelativeRelationshipFactory {
    superclass ::FeaturedResourceFactory
}

oo::define ::FeaturedResourceRelativeRelationshipFactory {
    method initFields_FeaturedResourceRelativeRelationshipFactory {} {
        my jset basicArrayListUtil {}
        my jset basicArrayListUtil [::BasicArrayListUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_FeaturedResourceRelativeRelationshipFactory
    }
    
    

    method getRelativeRelationshipList {resource layer} {
        set featureReleaseList [my getList]
        set size [[my getList] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set featureInterface [[$featureReleaseList jget objectArray] get $index]
            if {[$featureInterface isFeature]} {
                set list [$featureInterface getResourceRelativeRelationshipList $resource]
                if {[expr {$list ne [[my jget basicArrayListUtil] getImmutableInstance]}]} {
                    return [my duplicate $list $layer]
                }
            }
        }
        error [jexception Exception [[[[::StringMaker new] append "Not available for current feature selection or Resource: "] append $resource] toString]]
    }
    

    method duplicate {list layer} {
        set pointFactory [::PointFactory::getInstance]
        set newList [::BasicArrayListD new]
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set relativeRelationship [[$list jget objectArray] get $index]
            $newList add [::RelativeLayerRelationship new $layer [$pointFactory createXY [$relativeRelationship getX] [$relativeRelationship getY]] [[::BasicArrayListUtil::getInstance] getImmutableInstance]]
        }
        return $newList
    }
}

namespace eval ::FeaturedResourceRelativeRelationshipFactory {
    variable INSTANCEValue {}
    variable INSTANCESet 0
    proc staticGet_INSTANCE {} {
        variable INSTANCEValue
        variable INSTANCESet
        if {!$INSTANCESet} {
            set INSTANCESet 1
            set INSTANCEValue [::FeaturedResourceRelativeRelationshipFactory new]
        }
        return $INSTANCEValue
    }
    proc staticSet_INSTANCE {value} {
        variable INSTANCEValue
        variable INSTANCESet
        set INSTANCESet 1
        set INSTANCEValue $value
    }
    proc getInstance {} {
        return [::FeaturedResourceRelativeRelationshipFactory::staticGet_INSTANCE]
    }
}


