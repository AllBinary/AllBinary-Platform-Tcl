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

oo::class create ::LayerInterfaceFactory {
    superclass ::JObject
}

oo::define ::LayerInterfaceFactory {
    method initFields_LayerInterfaceFactory {} {
        my jset logUtil {}
        my jset list {}
        my jset HASHTABLE_LABEL {}
        my jset logUtil [::LogUtil::getInstance]
        my jset list [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        my jset HASHTABLE_LABEL "Hashtable: "
        return
    }

    constructor {} {
        next
        my initFields_LayerInterfaceFactory
    }
    
    

    method init {} {
        my jset list [::BasicArrayListD new]
    }
    

    method getNexInstance {hashtable x y z} {
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF [[[[::StringMaker new] append [my jget HASHTABLE_LABEL]] append [[::StringUtil::getInstance] toString1 $hashtable]] toString] [self] [$commonStrings jget GET_INSTANCE]
        set typeInteger [$hashtable get [::Layer::staticGet_ID]]
        set layerInterfaceFactoryInterface [[[my jget list] jget objectArray] get [expr {[$typeInteger intValue] - 1}]]
        return [$layerInterfaceFactoryInterface getNextInstance $hashtable $x $y $z]
    }
    

    method add {layerInterfaceFactoryInterface} {
        [my jget list] add $layerInterfaceFactoryInterface
    }
}

namespace eval ::LayerInterfaceFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::LayerInterfaceFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::LayerInterfaceFactory::staticGet_SINGLETON]
    }
}


