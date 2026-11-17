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
# package org.allbinary.game.part

oo::class create ::MakeCountedPartsSingletonArrayFactory {
    superclass ::JObject
}

oo::define ::MakeCountedPartsSingletonArrayFactory {
    method initFields_MakeCountedPartsSingletonArrayFactory {} {
        my jset logUtil {}
        my jset list {}
        my jset logUtil [::LogUtil::getInstance]
        my jset list [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        return
    }

    constructor {} {
        next
        my initFields_MakeCountedPartsSingletonArrayFactory
    }
    
    

    method getUpdated {partInterfaceArray} {
        my jset list [::BasicArrayListD new]
        for {set index 0} {[expr {$index < [$partInterfaceArray length]}]} {jpostincr index 1} {
            [my jget list] add [$partInterfaceArray get $index]
        }
        set countedBasicArrayList [[::CountedPickedUpLayerInterfaceFactoryPool::getInstance] getList]
        set layerInterfaceFactoryInterface {}
        set size [$countedBasicArrayList size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerInterfaceFactoryInterface [[$countedBasicArrayList jget objectArray] get $index]
            [my jget list] add [::CountedLayerInterfaceFactoryPart new 0 $layerInterfaceFactoryInterface]
        }
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Total Parts: "
        $stringBuffer appendint [[my jget list] size]
        $stringBuffer append " Counted: "
        $stringBuffer appendint [$countedBasicArrayList size]
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget GET_INSTANCE]
        set newPartInterfaceArray [jarray [[my jget list] size] {}]
        set newSize [$newPartInterfaceArray length]
        for {set index 0} {[expr {$index < $newSize}]} {jpostincr index 1} {
            $newPartInterfaceArray set $index [[my jget list] get $index]
        }
        return $newPartInterfaceArray
    }
}

namespace eval ::MakeCountedPartsSingletonArrayFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MakeCountedPartsSingletonArrayFactory new]
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
        return [::MakeCountedPartsSingletonArrayFactory::staticGet_instance]
    }
}


