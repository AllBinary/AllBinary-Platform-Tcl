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
# package org.allbinary.animation

oo::class create ::FeaturedAnimationInterfaceFactoryInterfaceFactory {
    superclass ::FeaturedResourceFactory
}

oo::define ::FeaturedAnimationInterfaceFactoryInterfaceFactory {
    method initFields_FeaturedAnimationInterfaceFactoryInterfaceFactory {} {
        return
    }
    

    constructor {} {
        next
        my initFields_FeaturedAnimationInterfaceFactoryInterfaceFactory
    }
    
    

    method getRectangle {resource} {
        return [my getRectangleXY $resource 0 0]
    }
    

    method getRectangleXY {resource x y} {
        set pointFactory [::PointFactory::getInstance]
        set list [my getList]
        set scale [[[[::GameConfigurationCentral::getInstance] jget SCALE] getValue] intValue]
        set size [[my getList] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set featureInterface [[$list jget objectArray] get $index]
            if {[$featureInterface isFeature]} {
                set rectangle [$featureInterface getRectangle $resource]
                if {[expr {$rectangle ne [::RectangleFactory::staticGet_SINGLETON]}]} {
                    return [::Rectangle new [$pointFactory createXY $x $y] ([expr {([expr {[$rectangle getWidth] * $scale}]) >> 1}]) ([expr {([expr {[$rectangle getHeight] * $scale}]) >> 1}])]
                }
            }
        }
        error [jexception Exception [[[[::StringMaker new] append "No rectangle available for current feature selection or Resource: "] append $resource] toString]]
    }
    

    method getProcedural {resource} {
        return [my getBasicAnimationInterfaceFactoryInstance $resource]
    }
    

    method get {resource} {
        return [my getBasicAnimationInterfaceFactoryInstance $resource]
    }
    

    method getBasicAnimationInterfaceFactoryInstance {resource} {
        set list [my getList]
        set resourceTypeAvailableList [::BasicArrayListD new]
        set size [[my getList] size]
        set featureInterface {}
        set animationInterfaceFactoryInterface {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set featureInterface [[$list jget objectArray] get $index]
            if {[$featureInterface isFeature]} {
                $resourceTypeAvailableList add $featureInterface
                set animationInterfaceFactoryInterface [$featureInterface getBasicAnimationInterfaceFactoryInstance $resource]
                if {[expr {$animationInterfaceFactoryInterface ne [::NullAnimationFactory::staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY]}]} {
                    return $animationInterfaceFactoryInterface
                }
            }
        }
        if {[expr {[$resourceTypeAvailableList size] > 0}]} {
            set NO_ANIMATION_AVAILABLE_FROM "No animation available from: "
            set FOR_FACTORIES " factories: "
            set FOR_RESOURCE " for Resource: "
            set HAS_KEY " has: "
            set RESOURCES_LABEL " resources "
            set stringBuffer [::StringMaker new]
            $stringBuffer append $NO_ANIMATION_AVAILABLE_FROM
            $stringBuffer appendint [$resourceTypeAvailableList size]
            $stringBuffer append [[::CommonSeps::getInstance] jget FORWARD_SLASH]
            $stringBuffer appendint $size
            $stringBuffer append $FOR_FACTORIES
            set size2 [$resourceTypeAvailableList size]
            for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
                $stringBuffer append [[$resourceTypeAvailableList get $index] toString]
                $stringBuffer append [[::CommonSeps::getInstance] jget COMMA_SEP]
            }
            $stringBuffer append $FOR_RESOURCE
            $stringBuffer append $resource
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                $stringBuffer append [[::CommonSeps::getInstance] jget NEW_LINE]
                set featureInterface [[$list jget objectArray] get $index]
                if {[$featureInterface isFeature]} {
                    $stringBuffer append [[::StringUtil::getInstance] toString1 $featureInterface]
                    $stringBuffer append $HAS_KEY
                    $stringBuffer appendint [[$featureInterface getHashtable] size]
                    $stringBuffer append $RESOURCES_LABEL
                }
            }
            error [jexception Exception [$stringBuffer toString]]
        } else {
            set stringBuffer [::StringMaker new]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set featureInterface [[$list jget objectArray] get $index]
                $stringBuffer append [$featureInterface toString]
                $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
            }
            set result [$stringBuffer toString]
            $stringBuffer delete 0 [$stringBuffer length]
            error [jexception Exception [[[[[$stringBuffer append "No feature resource type available for Resource: "] append $resource] append " Resource Factories Available: "] append $result] toString]]
        }
    }
}

namespace eval ::FeaturedAnimationInterfaceFactoryInterfaceFactory {
    variable INSTANCEValue {}
    variable INSTANCESet 0
    proc staticGet_INSTANCE {} {
        variable INSTANCEValue
        variable INSTANCESet
        if {!$INSTANCESet} {
            set INSTANCESet 1
            set INSTANCEValue [::FeaturedAnimationInterfaceFactoryInterfaceFactory new]
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
        return [::FeaturedAnimationInterfaceFactoryInterfaceFactory::staticGet_INSTANCE]
    }
}


