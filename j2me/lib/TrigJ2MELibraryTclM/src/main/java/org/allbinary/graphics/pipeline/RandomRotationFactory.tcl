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
# package org.allbinary.graphics.pipeline

oo::class create ::RandomRotationFactory {
    superclass ::JObject
}

oo::define ::RandomRotationFactory {
    method initFields_RandomRotationFactory {} {
        my jset myRandomFactory {}
        my jset angleFactory {}
        my jset myRandomFactory [::MyRandomFactory::getInstance]
        my jset angleFactory [::AngleFactory::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_RandomRotationFactory
    }
    
    

    method getInstanceList {vector howMuch} {
        set graphicsPipe [::BasicGraphicsPipeline new $vector]
        $graphicsPipe createMatrix
        $graphicsPipe rotateToAngle [[my jget angleFactory] getAt [my getNextRandomAngle $howMuch]]
        return [$graphicsPipe getMatrix]
    }
    

    method getNextRandomAngle {howMuch} {
        return [[my jget myRandomFactory] getNextInt [jint [expr {$howMuch * 10}]]]
    }
}

namespace eval ::RandomRotationFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::RandomRotationFactory new]
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
        return [::RandomRotationFactory::staticGet_instance]
    }
}


