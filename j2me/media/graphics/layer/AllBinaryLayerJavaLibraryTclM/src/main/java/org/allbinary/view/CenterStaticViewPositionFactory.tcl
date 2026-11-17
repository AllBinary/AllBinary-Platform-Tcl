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
# package org.allbinary.view

oo::class create ::CenterStaticViewPositionFactory {
    superclass ::JObject
}

oo::define ::CenterStaticViewPositionFactory {
    method initFields_CenterStaticViewPositionFactory {} {
        return
    }
    

    constructor {} {
        next
        my initFields_CenterStaticViewPositionFactory
    }
    

    method getInstance {z} {
        set displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        return [::StaticViewPosition new ([expr {[$displayInfoSingleton getLastWidth] >> 1}]) ([expr {[$displayInfoSingleton getLastHeight] >> 1}]) $z]
    }
}

namespace eval ::CenterStaticViewPositionFactory {
}


