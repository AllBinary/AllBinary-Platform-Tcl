# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

oo::class create ::RepaintBehavior {
    superclass ::JObject
}

oo::define ::RepaintBehavior {
    method initFields_RepaintBehavior {} {
        my jset logUtil {}
        my jset NAME {}
        my jset logUtil [::LogUtil::getInstance]
        my jset NAME "RepaintBehavior"
        return
    }

    constructor {} {
        next
        my initFields_RepaintBehavior
    }
    
    

    method repaint {canvas} {
    }
    

    method onChangeRepaint {canvas} {
        set features [::Features::getInstance]
        set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        if {[$features isFeature [$openGLFeatureFactory jget OPENGL]]} {
            [::DisplayInfoSingleton::getInstance] process
        } else {
            set thread [::Thread new [::RepaintRunnable new $canvas] [my jget NAME]]
            $thread start
        }
    }
}

namespace eval ::RepaintBehavior {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::RepaintBehavior new]
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
        return [::RepaintBehavior::staticGet_instance]
    }
}


