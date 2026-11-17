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
# package org.allbinary.animation

oo::class create ::TimedVectorAnimationFactory {
    superclass ::JObject
}

oo::define ::TimedVectorAnimationFactory {
    method initFields_TimedVectorAnimationFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_TimedVectorAnimationFactory
    }
    

    method getInstance {points basicColor} {
        return [::TimedVectorAnimation new $points $basicColor [::AnimationBehavior::getInstance]]
    }
}

namespace eval ::TimedVectorAnimationFactory {
}


