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
# package org.allbinary.graphics.paint

oo::class create ::LocationPaintableInterface {
    superclass ::JObject
}

oo::define ::LocationPaintableInterface {
    method initFields_LocationPaintableInterface {} {
        return
    }
    

    method paintXY {graphics x y} {
        error [jexception AbstractMethodError paintXY]
    }
}

namespace eval ::LocationPaintableInterface {
}


