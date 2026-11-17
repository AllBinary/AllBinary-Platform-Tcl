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
# package org.allbinary.graphics.displayable

oo::class create ::BaseScalable {
    superclass ::JObject
}

oo::define ::BaseScalable {
    method initFields_BaseScalable {} {
        return
    }

    constructor {} {
        next
        my initFields_BaseScalable
    }
    

    method getRatio {ratio} {
        return 1.0
    }
    

    method getLeft {xOffset} {
        return [expr {-1}]
    }
    

    method getTop {yOffset} {
        return [expr {-1}]
    }
    

    method scale {ratio} {
    }
}

namespace eval ::BaseScalable {
}


