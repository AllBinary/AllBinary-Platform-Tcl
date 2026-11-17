# Generated Code Do Not Modify
# package javax.microedition.lcdui

oo::class create ::NullCommandListener {
    superclass ::JObject
}

oo::define ::NullCommandListener {
    method initFields_NullCommandListener {} {
        return
    }

    constructor {} {
        next
        my initFields_NullCommandListener
    }
    

    method commandAction {c d} {
    }
}

namespace eval ::NullCommandListener {
    variable NULL_COMMAND_LISTENERValue {}
    variable NULL_COMMAND_LISTENERSet 0
    proc staticGet_NULL_COMMAND_LISTENER {} {
        variable NULL_COMMAND_LISTENERValue
        variable NULL_COMMAND_LISTENERSet
        if {!$NULL_COMMAND_LISTENERSet} {
            set NULL_COMMAND_LISTENERSet 1
            set NULL_COMMAND_LISTENERValue [::NullCommandListener new]
        }
        return $NULL_COMMAND_LISTENERValue
    }
    proc staticSet_NULL_COMMAND_LISTENER {value} {
        variable NULL_COMMAND_LISTENERValue
        variable NULL_COMMAND_LISTENERSet
        set NULL_COMMAND_LISTENERSet 1
        set NULL_COMMAND_LISTENERValue $value
    }
}


