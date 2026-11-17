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
# package org.allbinary.canvas

#ActualPlatform
oo::class create ::GameStatisticsFactory {
    superclass ::BaseGameStatistics
}

oo::define ::GameStatisticsFactory {
    method initFields_GameStatisticsFactory {} {
        my jset stringBuffer {}
        my jset stringBuffer [::StringMaker new]
        return
    }

    constructor {} {
        next
        my initFields_GameStatisticsFactory
    }
    
    

    method add {string} {
        if {[expr {[[my jget stringBuffer] length] > 12000}]} {
            [my jget stringBuffer] delete 0 [[my jget stringBuffer] length]
            [my jget stringBuffer] append "Old Stats Cleared"
        }
        [my jget stringBuffer] append $string
    }
    

    method toString {} {
        return [[[[::StringMaker new] append [next]] append [[my jget stringBuffer] toString]] toString]
    }
}

namespace eval ::GameStatisticsFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameStatisticsFactory new]
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
        return [::GameStatisticsFactory::staticGet_instance]
    }
}


