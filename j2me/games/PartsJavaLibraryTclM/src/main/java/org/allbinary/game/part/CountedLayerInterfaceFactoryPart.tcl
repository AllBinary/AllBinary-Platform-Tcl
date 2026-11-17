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

oo::class create ::CountedLayerInterfaceFactoryPart {
    superclass ::JObject
}

oo::define ::CountedLayerInterfaceFactoryPart {
    method initFields_CountedLayerInterfaceFactoryPart {} {
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset animationInterface {}
        my jset total 0
        my jset totalString {}
        my jset xOffset 0
        my jset countedPickedUpLayerInterfaceFactory {}
        my jset primitiveLongUtil {}
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset animationInterface [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        my jset total 0
        my jset totalString [[::NullUtil::getInstance] jget NULL_CHAR_ARRAY]
        my jset xOffset 0
        my jset countedPickedUpLayerInterfaceFactory [::CountedPickedUpLayerInterfaceFactory::staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY]
        
        return
    }
    

    constructor {total countedPickedUpLayerInterfaceFactory} {
        next
        my initFields_CountedLayerInterfaceFactoryPart
        my jset primitiveLongUtil [::PrimitiveLongUtil::createPowerOfTen 1000]
        my init $total $countedPickedUpLayerInterfaceFactory
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my setXOffset [expr {[$font charsWidth [my jget totalString] 0 [[my jget primitiveLongUtil] getCurrentTotalDigits]] + ([expr {[$font getSize] >> 1}])}]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method init {total countedPickedUpLayerInterfaceFactory} {
        my setCountedPickedUpLayerInterfaceFactory $countedPickedUpLayerInterfaceFactory
        my jset total $total
    }
    

    method getInstance {hashtable x y z} {
        if {[expr {[my jget total] > 0}]} {
            my setTotal [jint [expr {[my jget total] - 1}]]
            return [[my getCountedPickedUpLayerInterfaceFactory] getNextInstance $hashtable $x $y $z]
        } else {
            error [jexception Exception "No more left. Could use a listener to automatically remove"]
        }
    }
    

    method getTotal {} {
        return [my jget total]
    }
    

    method setTotal {total} {
        my jset total $total
        my jset totalString [[my jget primitiveLongUtil] getCharArray $total]
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
    }
    

    method paintThreed {graphics} {
    }
    

    method getAnimationInterface {} {
        return [my jget animationInterface]
    }
    

    method setAnimationInterface {animationInterface} {
        my jset animationInterface $animationInterface
    }
    

    method getXOffset {} {
        return [my jget xOffset]
    }
    

    method setXOffset {totalStringWidth} {
        my jset xOffset $totalStringWidth
    }
    

    method getTotalString {} {
        return [my jget totalString]
    }
    

    method getCountedPickedUpLayerInterfaceFactory {} {
        return [my jget countedPickedUpLayerInterfaceFactory]
    }
    

    method setCountedPickedUpLayerInterfaceFactory {countedPickedUpLayerInterfaceFactory} {
        my jset countedPickedUpLayerInterfaceFactory $countedPickedUpLayerInterfaceFactory
    }
}

namespace eval ::CountedLayerInterfaceFactoryPart {
    variable NULL_COUNTED_LAYER_INTERFACE_FACTORYValue {}
    variable NULL_COUNTED_LAYER_INTERFACE_FACTORYSet 0
    proc staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY {} {
        variable NULL_COUNTED_LAYER_INTERFACE_FACTORYValue
        variable NULL_COUNTED_LAYER_INTERFACE_FACTORYSet
        if {!$NULL_COUNTED_LAYER_INTERFACE_FACTORYSet} {
            set NULL_COUNTED_LAYER_INTERFACE_FACTORYSet 1
            set NULL_COUNTED_LAYER_INTERFACE_FACTORYValue [::CountedLayerInterfaceFactoryPart new 0 [::CountedPickedUpLayerInterfaceFactory::staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY]]
        }
        return $NULL_COUNTED_LAYER_INTERFACE_FACTORYValue
    }
    proc staticSet_NULL_COUNTED_LAYER_INTERFACE_FACTORY {value} {
        variable NULL_COUNTED_LAYER_INTERFACE_FACTORYValue
        variable NULL_COUNTED_LAYER_INTERFACE_FACTORYSet
        set NULL_COUNTED_LAYER_INTERFACE_FACTORYSet 1
        set NULL_COUNTED_LAYER_INTERFACE_FACTORYValue $value
    }
}


