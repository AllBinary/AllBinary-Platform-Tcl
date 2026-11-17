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
# package org.allbinary.game

oo::class create ::IntermissionInterface {
    superclass ::JObject
}

oo::define ::IntermissionInterface {
    method initFields_IntermissionInterface {} {
        return
    }
    

    method getTimeDelayHelper {} {
        error [jexception AbstractMethodError getTimeDelayHelper]
    }
    

    method isEnabled {} {
        error [jexception AbstractMethodError isEnabled]
    }
    

    method setEnabled {value} {
        error [jexception AbstractMethodError setEnabled]
    }
    

    method setListener {enableListener} {
        error [jexception AbstractMethodError setListener]
    }
}

namespace eval ::IntermissionInterface {
}


