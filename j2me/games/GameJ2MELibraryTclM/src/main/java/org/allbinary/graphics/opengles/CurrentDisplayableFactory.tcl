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
# package org.allbinary.graphics.opengles

oo::class create ::CurrentDisplayableFactory {
    superclass ::JObject
}

oo::define ::CurrentDisplayableFactory {
    method initFields_CurrentDisplayableFactory {} {
        my jset commonStrings {}
        my jset canvasStrings {}
        my jset stringUtil {}
        my jset SET_DISPLAYABLE {}
        my jset SET_RUNNABLE {}
        my jset CLEAR_RUNNABLE {}
        my jset SET_USED_RUNNABLE {}
        my jset RUNNABLE {}
        my jset RUNNABLE_WAS_ALREADY_IN_USE {}
        my jset DEFAULT_CHILD_NAME_LIST {}
        my jset displayable {}
        my jset openGlReadydisplayable {}
        my jset runnable {}
        my jset usedRunnable {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset canvasStrings [::CanvasStrings::getInstance]
        my jset stringUtil [::StringUtil::getInstance]
        my jset SET_DISPLAYABLE "setDisplayable"
        my jset SET_RUNNABLE "setRunnable"
        my jset CLEAR_RUNNABLE "clearRunnable"
        my jset SET_USED_RUNNABLE "setUsedRunnable"
        my jset RUNNABLE "Runnable: "
        my jset RUNNABLE_WAS_ALREADY_IN_USE "Runnable was already in use: "
        my jset DEFAULT_CHILD_NAME_LIST [::BasicArrayListD new]
        my jset displayable [::NullDisplayable::getInstance]
        my jset openGlReadydisplayable [::NullDisplayable::getInstance]
        my jset runnable [::NullWaitGameRunnable::getInstance]
        my jset usedRunnable [::NullWaitGameRunnable::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_CurrentDisplayableFactory
        [my jget DEFAULT_CHILD_NAME_LIST] add [[my jget canvasStrings] jget ABOUT]
        [my jget DEFAULT_CHILD_NAME_LIST] add [[my jget canvasStrings] jget OPTIONS]
        [my jget DEFAULT_CHILD_NAME_LIST] add [::GameInputMappingCanvas::staticGet_NAME]
        [my jget DEFAULT_CHILD_NAME_LIST] add [::GameInputMappingInstructionsCanvas::staticGet_NAME]
        [my jget DEFAULT_CHILD_NAME_LIST] add [::HighScoresCanvas::staticGet_NAME]
    }
    

    method setMyCanvas {displayable} {
        if {[jinstanceof [my jget displayable] ::MyCanvas]} {
            if {[$displayable hasChild [my jget displayable]]} {
                ::PreLogUtil::put [[[[::StringMaker new] append "Child Displayable is already set for: "] append [[my jget stringUtil] toString1 $displayable]] toString] [self] [my jget SET_DISPLAYABLE]
                return
            }
        }
        my setDisplayable $displayable
    }
    

    method setDisplayable {displayable} {
        my jset displayable $displayable
        my setOpenGlReadydisplayable $displayable
    }
    

    method setOpenGlReadydisplayable {openGlReadydisplayable} {
        my jset openGlReadydisplayable $openGlReadydisplayable
        my update
    }
    

    method getOpenGlReadydisplayable {} {
        return [my jget openGlReadydisplayable]
    }
    

    method setRunnable {runnable} {
        ::PreLogUtil::put [[[[::StringMaker new] append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 $runnable]] toString] [self] [my jget SET_RUNNABLE]
        my jset runnable $runnable
        if {[expr {[my jget usedRunnable] ne [my jget runnable]}]} {
            my update
        } else {
            ::PreLogUtil::put [[[[::StringMaker new] append [my jget RUNNABLE_WAS_ALREADY_IN_USE]] append [[my jget stringUtil] toString1 $runnable]] toString] [self] [my jget SET_RUNNABLE]
        }
    }
    

    method clearRunnable {} {
        ::PreLogUtil::put [[[[::StringMaker new] append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 [::NullRunnable::getInstance]]] toString] [self] [my jget CLEAR_RUNNABLE]
        my setUsedRunnable [::NullWaitGameRunnable::getInstance]
    }
    

    method update {} {
        if {1} {
            set commonSeps [::CommonSeps::getInstance]
            set features [::Features::getInstance]
            set stringMaker [::StringMaker new]
            $stringMaker append [[my jget stringUtil] toString1 [my jget openGlReadydisplayable]]
            if {[expr {[::SWTUtil::staticGet_isSWT] && [expr {![$features isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]}]}]} {
                ::PreLogUtil::put [[[[[[$stringMaker append [$commonSeps jget SPACE]] append [::SWTUtil::staticGet_SWT]] append [$commonSeps jget SPACE]] append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 [::NullRunnable::getInstance]]] toString] [self] [[my jget commonStrings] jget UPDATE]
                my setUsedRunnable [::NullWaitGameRunnable::getInstance]
            } elseif {[::J2MEUtil::isHTML]} {
                ::PreLogUtil::put [[[[[[$stringMaker append [$commonSeps jget SPACE]] append [[::GraphicsStrings::getInstance] jget HTML]] append [$commonSeps jget SPACE]] append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 [my jget runnable]]] toString] [self] [[my jget commonStrings] jget UPDATE]
                my setUsedRunnable [my jget runnable]
            } elseif {[expr {[expr {[jinstanceof [my jget openGlReadydisplayable] ::DemoCanvas] || [jinstanceof [my jget openGlReadydisplayable] ::AllBinaryGameCanvas]}] || [$features isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]}]} {
                ::PreLogUtil::put [[[[[[$stringMaker append [$commonSeps jget SPACE]] append [[[::OpenGLFeatureFactory::getInstance] jget OPENGL] toString]] append [$commonSeps jget SPACE]] append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 [my jget runnable]]] toString] [self] [[my jget commonStrings] jget UPDATE]
                my setUsedRunnable [my jget runnable]
            } else {
                ::PreLogUtil::put [[[$stringMaker append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 [::NullRunnable::getInstance]]] toString] [self] [[my jget commonStrings] jget UPDATE]
                my setUsedRunnable [::NullWaitGameRunnable::getInstance]
            }
        }
    }
    

    method getDisplayable {} {
        return [my jget displayable]
    }
    

    method getUsedRunnable {} {
        return [my jget usedRunnable]
    }
    

    method setUsedRunnable {usedRunnable} {
        ::PreLogUtil::put [[[[[[::StringMaker new] append [my jget RUNNABLE]] append [[my jget stringUtil] toString1 [my jget runnable]]] append [[::CommonSeps::getInstance] jget COLON_SEP]] append [[my jget stringUtil] toString1 $usedRunnable]] toString] [self] [my jget SET_USED_RUNNABLE]
        my jset usedRunnable $usedRunnable
    }
}

namespace eval ::CurrentDisplayableFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CurrentDisplayableFactory new]
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
        return [::CurrentDisplayableFactory::staticGet_instance]
    }
}


