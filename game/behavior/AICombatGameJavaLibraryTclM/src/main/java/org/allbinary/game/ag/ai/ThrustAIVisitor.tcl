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
# package org.allbinary.game.ag.ai

oo::class create ::ThrustAIVisitor {
    superclass ::Visitor
}

oo::define ::ThrustAIVisitor {
    method initFields_ThrustAIVisitor {} {
        my jset logUtil {}
        my jset TRUE {}
        my jset logUtil [::LogUtil::getInstance]
        my jset TRUE [[::BooleanFactory::getInstance] jget TRUE]
        return
    }
    

    constructor {} {
        next
        my initFields_ThrustAIVisitor
    }
    

    method visit {anyType} {
        try {
            set basicAI $anyType
            $basicAI processKeyAI [::Canvas::staticGet_UP]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget VISIT] $e
        }
        return [my jget TRUE]
    }
}

namespace eval ::ThrustAIVisitor {
}


