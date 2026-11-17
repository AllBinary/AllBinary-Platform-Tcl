# Generated Code Do Not Modify
# package javax.microedition.lcdui

oo::class create ::NullCanvas {
    superclass ::Canvas
}

oo::define ::NullCanvas {
    method initFields_NullCanvas {} {
        return
    }
    

    constructor {} {
        next
        my initFields_NullCanvas
    }
    

    method setFullScreenMode {mode} {
    }
    

    method sizeChanged {w h} {
    }
    

    method getCommandStack {} {
        error [jexception RuntimeException {}]
    }
    

    method isCommand {command} {
        error [jexception RuntimeException {}]
    }
    

    method addCommand {command} {
    }
    

    method removeCommand {command} {
    }
    

    method removeAllCommands {} {
    }
    

    method setCommandListener {l} {
    }
    

    method getCustomCommandListener {} {
        error [jexception RuntimeException {}]
    }
    

    method isPaused {} {
        error [jexception RuntimeException {}]
    }
    

    method removePauseCommand {} {
    }
    

    method pause {} {
    }
    

    method unPause {} {
    }
    

    method process {} {
    }
    

    method paint {graphics} {
    }
    

    method destroy {} {
    }
    

    method setPaused {isPaused} {
        error [jexception RuntimeException {}]
    }
    

    method pointerDragged {x y} {
    }
    

    method pointerPressed {x y} {
    }
    

    method pointerReleased {x y} {
    }
}

namespace eval ::NullCanvas {
    variable NULL_CANVASValue {}
    variable NULL_CANVASSet 0
    proc staticGet_NULL_CANVAS {} {
        variable NULL_CANVASValue
        variable NULL_CANVASSet
        if {!$NULL_CANVASSet} {
            set NULL_CANVASSet 1
            set NULL_CANVASValue [::NullCanvas new]
        }
        return $NULL_CANVASValue
    }
    proc staticSet_NULL_CANVAS {value} {
        variable NULL_CANVASValue
        variable NULL_CANVASSet
        set NULL_CANVASSet 1
        set NULL_CANVASValue $value
    }
}


