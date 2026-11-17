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
# package org.allbinary.layer

oo::class create ::AllBinaryLayer {
    superclass ::Layer
}

oo::define ::AllBinaryLayer {
    method initFields_AllBinaryLayer {} {
        my jset viewPositionEvent {}
        my jset halfWidth 0
        my jset halfHeight 0
        my jset name {}
        my jset viewPosition {}
        my jset viewPositionEvent [::ViewPositionEvent new [self]]
        my jset halfWidth 0
        my jset halfHeight 0
        
        my jset viewPosition [::ViewPositionBase::staticGet_NULL_VIEW_POSITION]
        return
    }
    

    constructor {name rectangle viewPosition} {
        next [$rectangle getWidth] [$rectangle getHeight]
        my initFields_AllBinaryLayer
        set localName {}
        set localName [[[[[::StringMaker new] append $name] append [[::CommonSeps::getInstance] jget COLON]] append [::Integer::toHexString [[::TsUtil::getInstance] hashCode1 [self]]]] toString]
        my jset name $localName
        set point [$rectangle getPoint]
        my setPosition [$point getX] [$point getY] [$point getZ]
        my setHalfWidth ([expr {[my getWidth] >> 1}])
        my setHalfHeight ([expr {[my getHeight] >> 1}])
        my jset viewPosition $viewPosition
        [my jget viewPosition] setAllbinaryLayer [self]
    }
    

    method setPosition {x y z} {
        next $x $y $z
    }
    

    method moveDXYZ {dx dy dz} {
        next $dx $dy $dz
    }
    

    method getXP {} {
        return [next]
    }
    

    method getYP {} {
        return [next]
    }
    

    method getZP {} {
        return [next]
    }
    

    method getWidth {} {
        return [next]
    }
    

    method getHeight {} {
        return [next]
    }
    

    method setVisible {visible} {
        next $visible
    }
    

    method isVisible {} {
        return [next]
    }
    

    method paint {graphics} {
        next $graphics
    }
    

    method onChangeEvent {layerManagerEvent} {
    }
    

    method paintThreed {graphics} {
    }
    

    method getX2 {} {
        return [jint [expr {[my getXP] + [my getWidth]}]]
    }
    

    method getY2 {} {
        return [jint [expr {[my getYP] + [my getHeight]}]]
    }
    

    method getZ2 {} {
        return [jint ([expr {[my getZP] + [my getDepth]}])]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method setHalfWidth {halfWidth} {
        my jset halfWidth $halfWidth
    }
    

    method getHalfWidth {} {
        return [my jget halfWidth]
    }
    

    method setHalfHeight {halfHeight} {
        my jset halfHeight $halfHeight
    }
    

    method getHalfHeight {} {
        return [my jget halfHeight]
    }
    

    method getHalfDepth {} {
        return [jdiv [jint [my getDepth]] 2]
    }
    

    method getViewPosition {} {
        return [my jget viewPosition]
    }
    

    method setViewPosition {viewPosition} {
        my jset viewPosition $viewPosition
    }
    

    method getGroupInterface {} {
        return [[::BasicGroupFactory::getInstance] jget NONE_ARRAY]
    }
    

    method implmentsTickableInterface {} {
        return false
    }
    

    method implmentsGameInputInterface {} {
        return false
    }
    

    method implmentsArtificialIntelligenceCompositeInterface {} {
        return false
    }
    

    method implmentsCollidableInterface {} {
        return false
    }
    

    method implementsThreedInterface {} {
        return [[::OpenGLFeatureUtil::getInstance] isAnyThreed]
    }
    

    method getType {} {
        return [expr {-1}]
    }
    

    method getMultiPlayerType {} {
        return [expr {-1}]
    }
    

    method toStringAppend {stringBuffer} {
        set commonSeps [::CommonSeps::getInstance]
        set positionStrings [::PositionStrings::getInstance]
        set commonLabels [::CommonLabels::getInstance]
        $stringBuffer append [my getName]
        $stringBuffer append [$commonSeps jget COLON]
        $stringBuffer append [::AllBinaryLayer::staticGet_TYPE]
        $stringBuffer appendint [my getType]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$positionStrings jget X_LABEL]
        $stringBuffer appendint [my getXP]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$positionStrings jget Y_LABEL]
        $stringBuffer appendint [my getYP]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$positionStrings jget Z_LABEL]
        $stringBuffer appendint [my getZP]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$commonLabels jget WIDTH_LABEL]
        $stringBuffer appendint [my getWidth]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$commonLabels jget HEIGHT_LABEL]
        $stringBuffer appendint [my getHeight]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        my toStringAppend $stringBuffer
        return [$stringBuffer toString]
    }
}

namespace eval ::AllBinaryLayer {
    variable NULL_ALLBINARY_LAYERValue {}
    variable NULL_ALLBINARY_LAYERSet 0
    proc staticGet_NULL_ALLBINARY_LAYER {} {
        variable NULL_ALLBINARY_LAYERValue
        variable NULL_ALLBINARY_LAYERSet
        if {!$NULL_ALLBINARY_LAYERSet} {
            set NULL_ALLBINARY_LAYERSet 1
            set NULL_ALLBINARY_LAYERValue [::AllBinaryLayer new [[::StringUtil::getInstance] jget EMPTY_STRING] [::RectangleFactory::staticGet_SINGLETON] [::ViewPositionBase::staticGet_NULL_VIEW_POSITION]]
        }
        return $NULL_ALLBINARY_LAYERValue
    }
    proc staticSet_NULL_ALLBINARY_LAYER {value} {
        variable NULL_ALLBINARY_LAYERValue
        variable NULL_ALLBINARY_LAYERSet
        set NULL_ALLBINARY_LAYERSet 1
        set NULL_ALLBINARY_LAYERValue $value
    }
    variable TYPEValue {}
    variable TYPESet 0
    proc staticGet_TYPE {} {
        variable TYPEValue
        variable TYPESet
        if {!$TYPESet} {
            set TYPESet 1
            set TYPEValue "Type: "
        }
        return $TYPEValue
    }
    proc staticSet_TYPE {value} {
        variable TYPEValue
        variable TYPESet
        set TYPESet 1
        set TYPEValue $value
    }
}


