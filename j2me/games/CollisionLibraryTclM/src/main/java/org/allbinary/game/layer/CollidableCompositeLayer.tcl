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

oo::class create ::CollidableCompositeLayer {
    superclass ::AllBinaryGameLayer
}

oo::define ::CollidableCompositeLayer {
    method initFields_CollidableCompositeLayer {} {
        my jset collidableInferface {}
        my jset collidableInferface [[::CollidableNeverCollideBehaviorFactory::getInstance] createBehavior]
        return
    }
    
    

    constructor {name layerInfo viewPosition collidableBaseBehaviorFactory} {
        next $name $layerInfo $viewPosition
        my initFields_CollidableCompositeLayer
        if {[expr {$collidableBaseBehaviorFactory ne [::CollidableNeverCollideBehaviorFactory::getInstance]}]} {
            my setCollidableInferface [$collidableBaseBehaviorFactory createBehavior]
        }
    }
    

    method getArtificialIntelligenceInterface {} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
        return [::ArtificialIntelligence::getInstance]
    }
    

    method getCollidableInferface {} {
        return [my jget collidableInferface]
    }
    

    method setCollidableInferface {collidableInferface} {
        my jset collidableInferface $collidableInferface
    }
    

    method implmentsCollidableInterface {} {
        return true
    }
    

    method toStringAppend {stringBuffer} {
        set commonSeps [::CommonSeps::getInstance]
        next $stringBuffer
        $stringBuffer append [$commonSeps jget NEW_LINE]
        $stringBuffer append [[my getCollidableInferface] toString]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        my toStringAppend $stringBuffer
        return [$stringBuffer toString]
    }
}

namespace eval ::CollidableCompositeLayer {
    variable NULL_COLLIDABLE_COMPOSITE_LAYERValue {}
    variable NULL_COLLIDABLE_COMPOSITE_LAYERSet 0
    proc staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER {} {
        variable NULL_COLLIDABLE_COMPOSITE_LAYERValue
        variable NULL_COLLIDABLE_COMPOSITE_LAYERSet
        if {!$NULL_COLLIDABLE_COMPOSITE_LAYERSet} {
            set NULL_COLLIDABLE_COMPOSITE_LAYERSet 1
            set NULL_COLLIDABLE_COMPOSITE_LAYERValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_COLLIDABLE_COMPOSITE_LAYERValue
    }
    proc staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER {value} {
        variable NULL_COLLIDABLE_COMPOSITE_LAYERValue
        variable NULL_COLLIDABLE_COMPOSITE_LAYERSet
        set NULL_COLLIDABLE_COMPOSITE_LAYERSet 1
        set NULL_COLLIDABLE_COMPOSITE_LAYERValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::CollidableCompositeLayer::staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::CollidableCompositeLayer::staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER [::CollidableCompositeLayer new [[::StringUtil::getInstance] jget EMPTY_STRING] [::RectangleFactory::staticGet_SINGLETON] [::ViewPositionBase::staticGet_NULL_VIEW_POSITION] [::CollidableNeverCollideBehaviorFactory::getInstance]]
        }
        return [::CollidableCompositeLayer::staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER]
    }
}


