# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

oo::class create ::GL11Ext {
    superclass ::JObject
}

oo::define ::GL11Ext {
    method initFields_GL11Ext {} {
        return
    }
    

    method glTexParameterfv {target pname param offset} {
        error [jexception AbstractMethodError glTexParameterfv]
    }
    

    method glCurrentPaletteMatrixOES {matrixpaletteindex} {
        error [jexception AbstractMethodError glCurrentPaletteMatrixOES]
    }
    

    method glDrawTexfOES {x y z width height} {
        error [jexception AbstractMethodError glDrawTexfOES]
    }
    

    method glDrawTexfvOES {coords offset} {
        error [jexception AbstractMethodError glDrawTexfvOES]
    }
    

    method glDrawTexfvOES {coords} {
        error [jexception AbstractMethodError glDrawTexfvOES]
    }
    

    method glDrawTexiOES {x y z width height} {
        error [jexception AbstractMethodError glDrawTexiOES]
    }
    

    method glDrawTexivOES {coords offset} {
        error [jexception AbstractMethodError glDrawTexivOES]
    }
    

    method glDrawTexivOES {coords} {
        error [jexception AbstractMethodError glDrawTexivOES]
    }
    

    method glDrawTexsOES {x y z width height} {
        error [jexception AbstractMethodError glDrawTexsOES]
    }
    

    method glDrawTexsvOES {coords offset} {
        error [jexception AbstractMethodError glDrawTexsvOES]
    }
    

    method glDrawTexsvOES {coords} {
        error [jexception AbstractMethodError glDrawTexsvOES]
    }
    

    method glDrawTexxOES {x y z width height} {
        error [jexception AbstractMethodError glDrawTexxOES]
    }
    

    method glDrawTexxvOES {coords offset} {
        error [jexception AbstractMethodError glDrawTexxvOES]
    }
    

    method glDrawTexxvOES {coords} {
        error [jexception AbstractMethodError glDrawTexxvOES]
    }
    

    method glEnable {cap} {
        error [jexception AbstractMethodError glEnable]
    }
    

    method glEnableClientState {array} {
        error [jexception AbstractMethodError glEnableClientState]
    }
    

    method glLoadPaletteFromModelViewMatrixOES {} {
        error [jexception AbstractMethodError glLoadPaletteFromModelViewMatrixOES]
    }
    

    method glMatrixIndexPointerOES {size type stride pointer} {
        error [jexception AbstractMethodError glMatrixIndexPointerOES]
    }
    

    method glMatrixIndexPointerOES {size type stride offset} {
        error [jexception AbstractMethodError glMatrixIndexPointerOES]
    }
    

    method glWeightPointerOES {size type stride pointer} {
        error [jexception AbstractMethodError glWeightPointerOES]
    }
    

    method glWeightPointerOES {size type stride offset} {
        error [jexception AbstractMethodError glWeightPointerOES]
    }
}

namespace eval ::GL11Ext {
    variable GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue {}
    variable GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet 0
    proc staticGet_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES {} {
        variable GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue
        variable GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet
        if {!$GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet} {
            set GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet 1
            set GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue 35742
        }
        return $GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue
    }
    proc staticSet_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES {value} {
        variable GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue
        variable GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet
        set GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet 1
        set GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue $value
    }
    variable GL_MATRIX_INDEX_ARRAY_OESValue {}
    variable GL_MATRIX_INDEX_ARRAY_OESSet 0
    proc staticGet_GL_MATRIX_INDEX_ARRAY_OES {} {
        variable GL_MATRIX_INDEX_ARRAY_OESValue
        variable GL_MATRIX_INDEX_ARRAY_OESSet
        if {!$GL_MATRIX_INDEX_ARRAY_OESSet} {
            set GL_MATRIX_INDEX_ARRAY_OESSet 1
            set GL_MATRIX_INDEX_ARRAY_OESValue 34884
        }
        return $GL_MATRIX_INDEX_ARRAY_OESValue
    }
    proc staticSet_GL_MATRIX_INDEX_ARRAY_OES {value} {
        variable GL_MATRIX_INDEX_ARRAY_OESValue
        variable GL_MATRIX_INDEX_ARRAY_OESSet
        set GL_MATRIX_INDEX_ARRAY_OESSet 1
        set GL_MATRIX_INDEX_ARRAY_OESValue $value
    }
    variable GL_MATRIX_INDEX_ARRAY_POINTER_OESValue {}
    variable GL_MATRIX_INDEX_ARRAY_POINTER_OESSet 0
    proc staticGet_GL_MATRIX_INDEX_ARRAY_POINTER_OES {} {
        variable GL_MATRIX_INDEX_ARRAY_POINTER_OESValue
        variable GL_MATRIX_INDEX_ARRAY_POINTER_OESSet
        if {!$GL_MATRIX_INDEX_ARRAY_POINTER_OESSet} {
            set GL_MATRIX_INDEX_ARRAY_POINTER_OESSet 1
            set GL_MATRIX_INDEX_ARRAY_POINTER_OESValue 34889
        }
        return $GL_MATRIX_INDEX_ARRAY_POINTER_OESValue
    }
    proc staticSet_GL_MATRIX_INDEX_ARRAY_POINTER_OES {value} {
        variable GL_MATRIX_INDEX_ARRAY_POINTER_OESValue
        variable GL_MATRIX_INDEX_ARRAY_POINTER_OESSet
        set GL_MATRIX_INDEX_ARRAY_POINTER_OESSet 1
        set GL_MATRIX_INDEX_ARRAY_POINTER_OESValue $value
    }
    variable GL_MATRIX_INDEX_ARRAY_SIZE_OESValue {}
    variable GL_MATRIX_INDEX_ARRAY_SIZE_OESSet 0
    proc staticGet_GL_MATRIX_INDEX_ARRAY_SIZE_OES {} {
        variable GL_MATRIX_INDEX_ARRAY_SIZE_OESValue
        variable GL_MATRIX_INDEX_ARRAY_SIZE_OESSet
        if {!$GL_MATRIX_INDEX_ARRAY_SIZE_OESSet} {
            set GL_MATRIX_INDEX_ARRAY_SIZE_OESSet 1
            set GL_MATRIX_INDEX_ARRAY_SIZE_OESValue 34886
        }
        return $GL_MATRIX_INDEX_ARRAY_SIZE_OESValue
    }
    proc staticSet_GL_MATRIX_INDEX_ARRAY_SIZE_OES {value} {
        variable GL_MATRIX_INDEX_ARRAY_SIZE_OESValue
        variable GL_MATRIX_INDEX_ARRAY_SIZE_OESSet
        set GL_MATRIX_INDEX_ARRAY_SIZE_OESSet 1
        set GL_MATRIX_INDEX_ARRAY_SIZE_OESValue $value
    }
    variable GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue {}
    variable GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet 0
    proc staticGet_GL_MATRIX_INDEX_ARRAY_STRIDE_OES {} {
        variable GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue
        variable GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet
        if {!$GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet} {
            set GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet 1
            set GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue 34888
        }
        return $GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue
    }
    proc staticSet_GL_MATRIX_INDEX_ARRAY_STRIDE_OES {value} {
        variable GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue
        variable GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet
        set GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet 1
        set GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue $value
    }
    variable GL_MATRIX_INDEX_ARRAY_TYPE_OESValue {}
    variable GL_MATRIX_INDEX_ARRAY_TYPE_OESSet 0
    proc staticGet_GL_MATRIX_INDEX_ARRAY_TYPE_OES {} {
        variable GL_MATRIX_INDEX_ARRAY_TYPE_OESValue
        variable GL_MATRIX_INDEX_ARRAY_TYPE_OESSet
        if {!$GL_MATRIX_INDEX_ARRAY_TYPE_OESSet} {
            set GL_MATRIX_INDEX_ARRAY_TYPE_OESSet 1
            set GL_MATRIX_INDEX_ARRAY_TYPE_OESValue 34887
        }
        return $GL_MATRIX_INDEX_ARRAY_TYPE_OESValue
    }
    proc staticSet_GL_MATRIX_INDEX_ARRAY_TYPE_OES {value} {
        variable GL_MATRIX_INDEX_ARRAY_TYPE_OESValue
        variable GL_MATRIX_INDEX_ARRAY_TYPE_OESSet
        set GL_MATRIX_INDEX_ARRAY_TYPE_OESSet 1
        set GL_MATRIX_INDEX_ARRAY_TYPE_OESValue $value
    }
    variable GL_MATRIX_PALETTE_OESValue {}
    variable GL_MATRIX_PALETTE_OESSet 0
    proc staticGet_GL_MATRIX_PALETTE_OES {} {
        variable GL_MATRIX_PALETTE_OESValue
        variable GL_MATRIX_PALETTE_OESSet
        if {!$GL_MATRIX_PALETTE_OESSet} {
            set GL_MATRIX_PALETTE_OESSet 1
            set GL_MATRIX_PALETTE_OESValue 34880
        }
        return $GL_MATRIX_PALETTE_OESValue
    }
    proc staticSet_GL_MATRIX_PALETTE_OES {value} {
        variable GL_MATRIX_PALETTE_OESValue
        variable GL_MATRIX_PALETTE_OESSet
        set GL_MATRIX_PALETTE_OESSet 1
        set GL_MATRIX_PALETTE_OESValue $value
    }
    variable GL_MAX_PALETTE_MATRICES_OESValue {}
    variable GL_MAX_PALETTE_MATRICES_OESSet 0
    proc staticGet_GL_MAX_PALETTE_MATRICES_OES {} {
        variable GL_MAX_PALETTE_MATRICES_OESValue
        variable GL_MAX_PALETTE_MATRICES_OESSet
        if {!$GL_MAX_PALETTE_MATRICES_OESSet} {
            set GL_MAX_PALETTE_MATRICES_OESSet 1
            set GL_MAX_PALETTE_MATRICES_OESValue 34882
        }
        return $GL_MAX_PALETTE_MATRICES_OESValue
    }
    proc staticSet_GL_MAX_PALETTE_MATRICES_OES {value} {
        variable GL_MAX_PALETTE_MATRICES_OESValue
        variable GL_MAX_PALETTE_MATRICES_OESSet
        set GL_MAX_PALETTE_MATRICES_OESSet 1
        set GL_MAX_PALETTE_MATRICES_OESValue $value
    }
    variable GL_MAX_VERTEX_UNITS_OESValue {}
    variable GL_MAX_VERTEX_UNITS_OESSet 0
    proc staticGet_GL_MAX_VERTEX_UNITS_OES {} {
        variable GL_MAX_VERTEX_UNITS_OESValue
        variable GL_MAX_VERTEX_UNITS_OESSet
        if {!$GL_MAX_VERTEX_UNITS_OESSet} {
            set GL_MAX_VERTEX_UNITS_OESSet 1
            set GL_MAX_VERTEX_UNITS_OESValue 34468
        }
        return $GL_MAX_VERTEX_UNITS_OESValue
    }
    proc staticSet_GL_MAX_VERTEX_UNITS_OES {value} {
        variable GL_MAX_VERTEX_UNITS_OESValue
        variable GL_MAX_VERTEX_UNITS_OESSet
        set GL_MAX_VERTEX_UNITS_OESSet 1
        set GL_MAX_VERTEX_UNITS_OESValue $value
    }
    variable GL_TEXTURE_CROP_RECT_OESValue {}
    variable GL_TEXTURE_CROP_RECT_OESSet 0
    proc staticGet_GL_TEXTURE_CROP_RECT_OES {} {
        variable GL_TEXTURE_CROP_RECT_OESValue
        variable GL_TEXTURE_CROP_RECT_OESSet
        if {!$GL_TEXTURE_CROP_RECT_OESSet} {
            set GL_TEXTURE_CROP_RECT_OESSet 1
            set GL_TEXTURE_CROP_RECT_OESValue 35741
        }
        return $GL_TEXTURE_CROP_RECT_OESValue
    }
    proc staticSet_GL_TEXTURE_CROP_RECT_OES {value} {
        variable GL_TEXTURE_CROP_RECT_OESValue
        variable GL_TEXTURE_CROP_RECT_OESSet
        set GL_TEXTURE_CROP_RECT_OESSet 1
        set GL_TEXTURE_CROP_RECT_OESValue $value
    }
    variable GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue {}
    variable GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet 0
    proc staticGet_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES {} {
        variable GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue
        variable GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet
        if {!$GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet} {
            set GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet 1
            set GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue 34974
        }
        return $GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue
    }
    proc staticSet_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES {value} {
        variable GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue
        variable GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet
        set GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet 1
        set GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue $value
    }
    variable GL_WEIGHT_ARRAY_OESValue {}
    variable GL_WEIGHT_ARRAY_OESSet 0
    proc staticGet_GL_WEIGHT_ARRAY_OES {} {
        variable GL_WEIGHT_ARRAY_OESValue
        variable GL_WEIGHT_ARRAY_OESSet
        if {!$GL_WEIGHT_ARRAY_OESSet} {
            set GL_WEIGHT_ARRAY_OESSet 1
            set GL_WEIGHT_ARRAY_OESValue 34477
        }
        return $GL_WEIGHT_ARRAY_OESValue
    }
    proc staticSet_GL_WEIGHT_ARRAY_OES {value} {
        variable GL_WEIGHT_ARRAY_OESValue
        variable GL_WEIGHT_ARRAY_OESSet
        set GL_WEIGHT_ARRAY_OESSet 1
        set GL_WEIGHT_ARRAY_OESValue $value
    }
    variable GL_WEIGHT_ARRAY_POINTER_OESValue {}
    variable GL_WEIGHT_ARRAY_POINTER_OESSet 0
    proc staticGet_GL_WEIGHT_ARRAY_POINTER_OES {} {
        variable GL_WEIGHT_ARRAY_POINTER_OESValue
        variable GL_WEIGHT_ARRAY_POINTER_OESSet
        if {!$GL_WEIGHT_ARRAY_POINTER_OESSet} {
            set GL_WEIGHT_ARRAY_POINTER_OESSet 1
            set GL_WEIGHT_ARRAY_POINTER_OESValue 34476
        }
        return $GL_WEIGHT_ARRAY_POINTER_OESValue
    }
    proc staticSet_GL_WEIGHT_ARRAY_POINTER_OES {value} {
        variable GL_WEIGHT_ARRAY_POINTER_OESValue
        variable GL_WEIGHT_ARRAY_POINTER_OESSet
        set GL_WEIGHT_ARRAY_POINTER_OESSet 1
        set GL_WEIGHT_ARRAY_POINTER_OESValue $value
    }
    variable GL_WEIGHT_ARRAY_SIZE_OESValue {}
    variable GL_WEIGHT_ARRAY_SIZE_OESSet 0
    proc staticGet_GL_WEIGHT_ARRAY_SIZE_OES {} {
        variable GL_WEIGHT_ARRAY_SIZE_OESValue
        variable GL_WEIGHT_ARRAY_SIZE_OESSet
        if {!$GL_WEIGHT_ARRAY_SIZE_OESSet} {
            set GL_WEIGHT_ARRAY_SIZE_OESSet 1
            set GL_WEIGHT_ARRAY_SIZE_OESValue 34475
        }
        return $GL_WEIGHT_ARRAY_SIZE_OESValue
    }
    proc staticSet_GL_WEIGHT_ARRAY_SIZE_OES {value} {
        variable GL_WEIGHT_ARRAY_SIZE_OESValue
        variable GL_WEIGHT_ARRAY_SIZE_OESSet
        set GL_WEIGHT_ARRAY_SIZE_OESSet 1
        set GL_WEIGHT_ARRAY_SIZE_OESValue $value
    }
    variable GL_WEIGHT_ARRAY_STRIDE_OESValue {}
    variable GL_WEIGHT_ARRAY_STRIDE_OESSet 0
    proc staticGet_GL_WEIGHT_ARRAY_STRIDE_OES {} {
        variable GL_WEIGHT_ARRAY_STRIDE_OESValue
        variable GL_WEIGHT_ARRAY_STRIDE_OESSet
        if {!$GL_WEIGHT_ARRAY_STRIDE_OESSet} {
            set GL_WEIGHT_ARRAY_STRIDE_OESSet 1
            set GL_WEIGHT_ARRAY_STRIDE_OESValue 34474
        }
        return $GL_WEIGHT_ARRAY_STRIDE_OESValue
    }
    proc staticSet_GL_WEIGHT_ARRAY_STRIDE_OES {value} {
        variable GL_WEIGHT_ARRAY_STRIDE_OESValue
        variable GL_WEIGHT_ARRAY_STRIDE_OESSet
        set GL_WEIGHT_ARRAY_STRIDE_OESSet 1
        set GL_WEIGHT_ARRAY_STRIDE_OESValue $value
    }
    variable GL_WEIGHT_ARRAY_TYPE_OESValue {}
    variable GL_WEIGHT_ARRAY_TYPE_OESSet 0
    proc staticGet_GL_WEIGHT_ARRAY_TYPE_OES {} {
        variable GL_WEIGHT_ARRAY_TYPE_OESValue
        variable GL_WEIGHT_ARRAY_TYPE_OESSet
        if {!$GL_WEIGHT_ARRAY_TYPE_OESSet} {
            set GL_WEIGHT_ARRAY_TYPE_OESSet 1
            set GL_WEIGHT_ARRAY_TYPE_OESValue 34473
        }
        return $GL_WEIGHT_ARRAY_TYPE_OESValue
    }
    proc staticSet_GL_WEIGHT_ARRAY_TYPE_OES {value} {
        variable GL_WEIGHT_ARRAY_TYPE_OESValue
        variable GL_WEIGHT_ARRAY_TYPE_OESSet
        set GL_WEIGHT_ARRAY_TYPE_OESSet 1
        set GL_WEIGHT_ARRAY_TYPE_OESValue $value
    }
}


