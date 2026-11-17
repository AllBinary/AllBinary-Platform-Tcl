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

oo::class create ::PlatformKeyFactory {
    superclass ::JObject
}

oo::define ::PlatformKeyFactory {
    method initFields_PlatformKeyFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_PlatformKeyFactory
    }
    
    

    method getString {keyCode} {
        return [::PCGameKey::getString $keyCode]
    }
    

    method isSubmission {input} {
        return [[::PCKeyFactory::getInstance] isSubmission $input]
    }
    

    method isDelete {input} {
        return [[::PCKeyFactory::getInstance] isDelete $input]
    }
    

    method isBackSpace {input} {
        return [[::PCKeyFactory::getInstance] isBackSpace $input]
    }
    

    method isUp {input} {
        return [[::PCKeyFactory::getInstance] isUp $input]
    }
    

    method isDown {input} {
        return [[::PCKeyFactory::getInstance] isDown $input]
    }
    

    method isEnter {input} {
        return [[::PCKeyFactory::getInstance] isEnter $input]
    }
    

    method isLeft {input} {
        return [[::PCKeyFactory::getInstance] isLeft $input]
    }
    

    method isRight {input} {
        return [[::PCKeyFactory::getInstance] isRight $input]
    }
}

namespace eval ::PlatformKeyFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::PlatformKeyFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::PlatformKeyFactory::staticSet_instance [::PlatformKeyFactory new]
        }
        return [::PlatformKeyFactory::staticGet_instance]
    }
}


