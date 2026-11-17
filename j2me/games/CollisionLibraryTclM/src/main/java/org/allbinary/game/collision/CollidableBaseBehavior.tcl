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
# package org.allbinary.game.collision

oo::class create ::CollidableBaseBehavior {
    superclass ::JObject
}

oo::define ::CollidableBaseBehavior {
    method initFields_CollidableBaseBehavior {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset layerCollisionUtil {}
        my jset collidable false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset layerCollisionUtil [::LayerCollisionUtil::getInstance]
        my jset collidable true
        return
    }
    

    constructor {collidable} {
        next
        my initFields_CollidableBaseBehavior
        my jset collidable $collidable
    }
    

    method update {} {
    }
    

    method getName {} {
        return [jclassname [self]]
    }
    

    method setCollidable {collidable} {
        my jset collidable $collidable
    }
    

    method isCollidable {ownerLayer} {
        return [my jget collidable]
    }
    

    method collide {ownerLayer allbinaryCollidableLayer} {
        error [jexception Exception [[[[[::StringMaker new] append [[my jget commonStrings] jget NOT_IMPLEMENTED]] append [[::CommonLabels::getInstance] jget COLON_SEP]] append [jclassname [self]]] toString]]
    }
    

    method isCollision {ownerLayer collisionLayer} {
        return [[my jget layerCollisionUtil] isCollision $ownerLayer $collisionLayer]
    }
    

    method isCollisionInterface {ownerLayer collidableInterfaceCompositeInterface} {
        return [[my jget layerCollisionUtil] isCollision $ownerLayer $collidableInterfaceCompositeInterface]
    }
    

    method collideInterface {ownerLayer collidableInterfaceCompositeInterface} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method paint {ownerLayer graphics} {
    }
    

    method getCollisionTypeWith {layerInterface} {
        return [[::CollisionTypeFactory::getInstance] jget NONE]
    }
}

namespace eval ::CollidableBaseBehavior {
}


