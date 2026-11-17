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
# package org.allbinary.game.input

oo::class create ::TestInputInterface {
    superclass ::JObject
}

oo::define ::TestInputInterface {
    method initFields_TestInputInterface {} {
        return
    }
    

    method up {} {
        error [jexception AbstractMethodError up]
    }
    

    method down {} {
        error [jexception AbstractMethodError down]
    }
    

    method left {} {
        error [jexception AbstractMethodError left]
    }
    

    method right {} {
        error [jexception AbstractMethodError right]
    }
    

    method strafeLeft {} {
        error [jexception AbstractMethodError strafeLeft]
    }
    

    method strafeRight {} {
        error [jexception AbstractMethodError strafeRight]
    }
}

namespace eval ::TestInputInterface {
}


