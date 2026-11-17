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
# package org.allbinary.game.displayable.canvas

oo::class create ::CanvasUtil {
    superclass ::JObject
}

oo::define ::CanvasUtil {
    method initFields_CanvasUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_CanvasUtil
    }
    
}

namespace eval ::CanvasUtil {
    proc getKeyName {key} {
        set commonPhoneStrings [::CommonPhoneStrings::getInstance]
        if {[expr {$key == [::Canvas::staticGet_UP]}]} {
            return [$commonPhoneStrings jget UP]
        } elseif {[expr {$key == [::Canvas::staticGet_DOWN]}]} {
            return [$commonPhoneStrings jget DOWN]
        } elseif {[expr {$key == [::Canvas::staticGet_RIGHT]}]} {
            return [$commonPhoneStrings jget RIGHT]
        } elseif {[expr {$key == [::Canvas::staticGet_LEFT]}]} {
            return [$commonPhoneStrings jget LEFT]
        } elseif {[expr {$key == [::Canvas::staticGet_FIRE]}]} {
            return [$commonPhoneStrings jget FIRE]
        }
        return "UNKNOWN KEY"
    }
}


