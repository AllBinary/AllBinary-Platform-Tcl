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
# package org.allbinary.layer

oo::class create ::LayerInterface {
    superclass ::JObject
}

oo::define ::LayerInterface {
    method initFields_LayerInterface {} {
        return
    }
    

    method getHeight {} {
        error [jexception AbstractMethodError getHeight]
    }
    

    method getWidth {} {
        error [jexception AbstractMethodError getWidth]
    }
    

    method getHalfHeight {} {
        error [jexception AbstractMethodError getHalfHeight]
    }
    

    method getHalfWidth {} {
        error [jexception AbstractMethodError getHalfWidth]
    }
    

    method getXP {} {
        error [jexception AbstractMethodError getXP]
    }
    

    method getYP {} {
        error [jexception AbstractMethodError getYP]
    }
    

    method getZP {} {
        error [jexception AbstractMethodError getZP]
    }
    

    method getX2 {} {
        error [jexception AbstractMethodError getX2]
    }
    

    method getY2 {} {
        error [jexception AbstractMethodError getY2]
    }
    

    method getZ2 {} {
        error [jexception AbstractMethodError getZ2]
    }
    

    method isVisible {} {
        error [jexception AbstractMethodError isVisible]
    }
    

    method moveDXYZ {dx dy dz} {
        error [jexception AbstractMethodError moveDXYZ]
    }
    

    method setVisible {visible} {
        error [jexception AbstractMethodError setVisible]
    }
    

    method implmentsTickableInterface {} {
        error [jexception AbstractMethodError implmentsTickableInterface]
    }
    

    method implmentsCollidableInterface {} {
        error [jexception AbstractMethodError implmentsCollidableInterface]
    }
    

    method implmentsGameInputInterface {} {
        error [jexception AbstractMethodError implmentsGameInputInterface]
    }
    

    method implmentsArtificialIntelligenceCompositeInterface {} {
        error [jexception AbstractMethodError implmentsArtificialIntelligenceCompositeInterface]
    }
    

    method getType {} {
        error [jexception AbstractMethodError getType]
    }
}

namespace eval ::LayerInterface {
}


