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

oo::class create ::AlwaysRepaintBehavior {
    superclass ::RepaintBehavior
}

oo::define ::AlwaysRepaintBehavior {
    method initFields_AlwaysRepaintBehavior {} {
        my jset NAME {}
        my jset NAME "AlwaysRepaintBehavior"
        return
    }

    constructor {} {
        next
        my initFields_AlwaysRepaintBehavior
    }
    
    

    method repaint {canvas} {
        set features [::Features::getInstance]
        set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        if {[$features isFeature [$openGLFeatureFactory jget OPENGL]]} {
            [::DisplayInfoSingleton::getInstance] process
        } else {
            set thread [::Thread new [::RepaintRunnable new $canvas] [my jget NAME]]
            $thread start
        }
    }
    

    method onChangeRepaint {canvas} {
    }
}

namespace eval ::AlwaysRepaintBehavior {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::AlwaysRepaintBehavior new]
        }
        return $instanceCValue
    }
    proc staticSet_instanceC {value} {
        variable instanceCValue
        variable instanceCSet
        set instanceCSet 1
        set instanceCValue $value
    }
    proc getInstance {} {
        return [::AlwaysRepaintBehavior::staticGet_instanceC]
    }
}


