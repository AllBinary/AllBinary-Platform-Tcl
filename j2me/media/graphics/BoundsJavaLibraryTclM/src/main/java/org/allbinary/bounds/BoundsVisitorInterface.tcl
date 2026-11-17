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
# package org.allbinary.bounds

oo::class create ::BoundsVisitorInterface {
    superclass ::JObject
}

oo::define ::BoundsVisitorInterface {
    method initFields_BoundsVisitorInterface {} {
        return
    }
    

    method getX {} {
        error [jexception AbstractMethodError getX]
    }
    

    method getY {} {
        error [jexception AbstractMethodError getY]
    }
    

    method maxX {} {
        error [jexception AbstractMethodError maxX]
    }
    

    method maxY {} {
        error [jexception AbstractMethodError maxY]
    }
    

    method minX {} {
        error [jexception AbstractMethodError minX]
    }
    

    method minY {} {
        error [jexception AbstractMethodError minY]
    }
}

namespace eval ::BoundsVisitorInterface {
}


