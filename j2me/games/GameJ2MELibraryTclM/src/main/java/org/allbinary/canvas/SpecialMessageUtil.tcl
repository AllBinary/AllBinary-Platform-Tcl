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

oo::class create ::SpecialMessageUtil {
    superclass ::JObject
}

oo::define ::SpecialMessageUtil {
    method initFields_SpecialMessageUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_SpecialMessageUtil
    }
    
    

    method get {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [::Memory::getInfo]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::GameStatisticsFactory::getInstance] toString]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append " Option: "
        if {[[::Features::getInstance] isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL_AUTO_SELECT]]} {
            $stringBuffer append [[[::OpenGLFeatureFactory::getInstance] jget OPENGL_AUTO_SELECT] getName]
        } else {
            $stringBuffer append [[[::OpenGLFeatureFactory::getInstance] jget OPENGL_MINIMUM] getName]
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::SpecialMessageUtil {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::SpecialMessageUtil new]
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
        return [::SpecialMessageUtil::staticGet_SINGLETON]
    }
}


