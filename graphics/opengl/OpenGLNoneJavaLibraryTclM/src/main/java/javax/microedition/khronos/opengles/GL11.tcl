# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

oo::class create ::GL11 {
    superclass ::JObject
}

oo::define ::GL11 {
    method initFields_GL11 {} {
        return
    }
    

    method glBindBuffer {target buffer} {
        error [jexception AbstractMethodError glBindBuffer]
    }
    

    method glBufferData {target size data usage} {
        error [jexception AbstractMethodError glBufferData]
    }
    

    method glBufferSubData {target offset size data} {
        error [jexception AbstractMethodError glBufferSubData]
    }
    

    method glClipPlanef {plane equation offset} {
        error [jexception AbstractMethodError glClipPlanef]
    }
    

    method glClipPlanef {plane equation} {
        error [jexception AbstractMethodError glClipPlanef]
    }
    

    method glColor4ub {red green blue alpha} {
        error [jexception AbstractMethodError glColor4ub]
    }
    

    method glColorPointer {size type stride offset} {
        error [jexception AbstractMethodError glColorPointer]
    }
    

    method glDeleteBuffers {n buffers offset} {
        error [jexception AbstractMethodError glDeleteBuffers]
    }
    

    method glDeleteBuffers {n buffers} {
        error [jexception AbstractMethodError glDeleteBuffers]
    }
    

    method glDrawElements {mode count type offset} {
        error [jexception AbstractMethodError glDrawElements]
    }
    

    method glGenBuffers {n buffers offset} {
        error [jexception AbstractMethodError glGenBuffers]
    }
    

    method glGenBuffers {n buffers} {
        error [jexception AbstractMethodError glGenBuffers]
    }
    

    method glGetBufferParameteriv {target pname params offset} {
        error [jexception AbstractMethodError glGetBufferParameteriv]
    }
    

    method glGetBufferParameteriv {target pname params} {
        error [jexception AbstractMethodError glGetBufferParameteriv]
    }
    

    method glGetClipPlanef {pname eqn offset} {
        error [jexception AbstractMethodError glGetClipPlanef]
    }
    

    method glGetClipPlanef {pname eqn} {
        error [jexception AbstractMethodError glGetClipPlanef]
    }
    

    method glGetFloatv {pname params offset} {
        error [jexception AbstractMethodError glGetFloatv]
    }
    

    method glGetFloatv {pname params} {
        error [jexception AbstractMethodError glGetFloatv]
    }
    

    method glGetLightfv {light pname params offset} {
        error [jexception AbstractMethodError glGetLightfv]
    }
    

    method glGetLightfv {light pname params} {
        error [jexception AbstractMethodError glGetLightfv]
    }
    

    method glGetMaterialfv {face pname params offset} {
        error [jexception AbstractMethodError glGetMaterialfv]
    }
    

    method glGetMaterialfv {face pname params} {
        error [jexception AbstractMethodError glGetMaterialfv]
    }
    

    method glGetTexEnviv {env pname params offset} {
        error [jexception AbstractMethodError glGetTexEnviv]
    }
    

    method glGetTexEnviv {env pname params} {
        error [jexception AbstractMethodError glGetTexEnviv]
    }
    

    method glGetTexParameterfv {target pname params offset} {
        error [jexception AbstractMethodError glGetTexParameterfv]
    }
    

    method glGetTexParameterfv {target pname params} {
        error [jexception AbstractMethodError glGetTexParameterfv]
    }
    

    method glGetTexParameteriv {target pname params offset} {
        error [jexception AbstractMethodError glGetTexParameteriv]
    }
    

    method glGetTexParameteriv {target pname params} {
        error [jexception AbstractMethodError glGetTexParameteriv]
    }
    

    method glIsBuffer {buffer} {
        error [jexception AbstractMethodError glIsBuffer]
    }
    

    method glIsEnabled {cap} {
        error [jexception AbstractMethodError glIsEnabled]
    }
    

    method glIsTexture {texture} {
        error [jexception AbstractMethodError glIsTexture]
    }
    

    method glNormalPointer {type stride offset} {
        error [jexception AbstractMethodError glNormalPointer]
    }
    

    method glPointParameterf {pname param} {
        error [jexception AbstractMethodError glPointParameterf]
    }
    

    method glPointParameterfv {pname params offset} {
        error [jexception AbstractMethodError glPointParameterfv]
    }
    

    method glPointParameterfv {pname params} {
        error [jexception AbstractMethodError glPointParameterfv]
    }
    

    method glTexCoordPointer {size type stride offset} {
        error [jexception AbstractMethodError glTexCoordPointer]
    }
    

    method glTexEnvi {target pname param} {
        error [jexception AbstractMethodError glTexEnvi]
    }
    

    method glTexEnviv {target pname params offset} {
        error [jexception AbstractMethodError glTexEnviv]
    }
    

    method glTexEnviv {target pname params} {
        error [jexception AbstractMethodError glTexEnviv]
    }
    

    method glTexParameterfv {target pname params offset} {
        error [jexception AbstractMethodError glTexParameterfv]
    }
    

    method glTexParameterfv {target pname params} {
        error [jexception AbstractMethodError glTexParameterfv]
    }
    

    method glTexParameteriv {target pname params offset} {
        error [jexception AbstractMethodError glTexParameteriv]
    }
    

    method glTexParameteriv {target pname params} {
        error [jexception AbstractMethodError glTexParameteriv]
    }
    

    method glVertexPointer {size type stride offset} {
        error [jexception AbstractMethodError glVertexPointer]
    }
}

namespace eval ::GL11 {
    variable GL_ACTIVE_TEXTUREValue {}
    variable GL_ACTIVE_TEXTURESet 0
    proc staticGet_GL_ACTIVE_TEXTURE {} {
        variable GL_ACTIVE_TEXTUREValue
        variable GL_ACTIVE_TEXTURESet
        if {!$GL_ACTIVE_TEXTURESet} {
            set GL_ACTIVE_TEXTURESet 1
            set GL_ACTIVE_TEXTUREValue 34016
        }
        return $GL_ACTIVE_TEXTUREValue
    }
    proc staticSet_GL_ACTIVE_TEXTURE {value} {
        variable GL_ACTIVE_TEXTUREValue
        variable GL_ACTIVE_TEXTURESet
        set GL_ACTIVE_TEXTURESet 1
        set GL_ACTIVE_TEXTUREValue $value
    }
    variable GL_ADD_SIGNEDValue {}
    variable GL_ADD_SIGNEDSet 0
    proc staticGet_GL_ADD_SIGNED {} {
        variable GL_ADD_SIGNEDValue
        variable GL_ADD_SIGNEDSet
        if {!$GL_ADD_SIGNEDSet} {
            set GL_ADD_SIGNEDSet 1
            set GL_ADD_SIGNEDValue 34164
        }
        return $GL_ADD_SIGNEDValue
    }
    proc staticSet_GL_ADD_SIGNED {value} {
        variable GL_ADD_SIGNEDValue
        variable GL_ADD_SIGNEDSet
        set GL_ADD_SIGNEDSet 1
        set GL_ADD_SIGNEDValue $value
    }
    variable GL_ALPHA_SCALEValue {}
    variable GL_ALPHA_SCALESet 0
    proc staticGet_GL_ALPHA_SCALE {} {
        variable GL_ALPHA_SCALEValue
        variable GL_ALPHA_SCALESet
        if {!$GL_ALPHA_SCALESet} {
            set GL_ALPHA_SCALESet 1
            set GL_ALPHA_SCALEValue 3356
        }
        return $GL_ALPHA_SCALEValue
    }
    proc staticSet_GL_ALPHA_SCALE {value} {
        variable GL_ALPHA_SCALEValue
        variable GL_ALPHA_SCALESet
        set GL_ALPHA_SCALESet 1
        set GL_ALPHA_SCALEValue $value
    }
    variable GL_ALPHA_TEST_FUNCValue {}
    variable GL_ALPHA_TEST_FUNCSet 0
    proc staticGet_GL_ALPHA_TEST_FUNC {} {
        variable GL_ALPHA_TEST_FUNCValue
        variable GL_ALPHA_TEST_FUNCSet
        if {!$GL_ALPHA_TEST_FUNCSet} {
            set GL_ALPHA_TEST_FUNCSet 1
            set GL_ALPHA_TEST_FUNCValue 3009
        }
        return $GL_ALPHA_TEST_FUNCValue
    }
    proc staticSet_GL_ALPHA_TEST_FUNC {value} {
        variable GL_ALPHA_TEST_FUNCValue
        variable GL_ALPHA_TEST_FUNCSet
        set GL_ALPHA_TEST_FUNCSet 1
        set GL_ALPHA_TEST_FUNCValue $value
    }
    variable GL_ALPHA_TEST_REFValue {}
    variable GL_ALPHA_TEST_REFSet 0
    proc staticGet_GL_ALPHA_TEST_REF {} {
        variable GL_ALPHA_TEST_REFValue
        variable GL_ALPHA_TEST_REFSet
        if {!$GL_ALPHA_TEST_REFSet} {
            set GL_ALPHA_TEST_REFSet 1
            set GL_ALPHA_TEST_REFValue 3010
        }
        return $GL_ALPHA_TEST_REFValue
    }
    proc staticSet_GL_ALPHA_TEST_REF {value} {
        variable GL_ALPHA_TEST_REFValue
        variable GL_ALPHA_TEST_REFSet
        set GL_ALPHA_TEST_REFSet 1
        set GL_ALPHA_TEST_REFValue $value
    }
    variable GL_ARRAY_BUFFERValue {}
    variable GL_ARRAY_BUFFERSet 0
    proc staticGet_GL_ARRAY_BUFFER {} {
        variable GL_ARRAY_BUFFERValue
        variable GL_ARRAY_BUFFERSet
        if {!$GL_ARRAY_BUFFERSet} {
            set GL_ARRAY_BUFFERSet 1
            set GL_ARRAY_BUFFERValue 34962
        }
        return $GL_ARRAY_BUFFERValue
    }
    proc staticSet_GL_ARRAY_BUFFER {value} {
        variable GL_ARRAY_BUFFERValue
        variable GL_ARRAY_BUFFERSet
        set GL_ARRAY_BUFFERSet 1
        set GL_ARRAY_BUFFERValue $value
    }
    variable GL_ARRAY_BUFFER_BINDINGValue {}
    variable GL_ARRAY_BUFFER_BINDINGSet 0
    proc staticGet_GL_ARRAY_BUFFER_BINDING {} {
        variable GL_ARRAY_BUFFER_BINDINGValue
        variable GL_ARRAY_BUFFER_BINDINGSet
        if {!$GL_ARRAY_BUFFER_BINDINGSet} {
            set GL_ARRAY_BUFFER_BINDINGSet 1
            set GL_ARRAY_BUFFER_BINDINGValue 34964
        }
        return $GL_ARRAY_BUFFER_BINDINGValue
    }
    proc staticSet_GL_ARRAY_BUFFER_BINDING {value} {
        variable GL_ARRAY_BUFFER_BINDINGValue
        variable GL_ARRAY_BUFFER_BINDINGSet
        set GL_ARRAY_BUFFER_BINDINGSet 1
        set GL_ARRAY_BUFFER_BINDINGValue $value
    }
    variable GL_BLEND_DSTValue {}
    variable GL_BLEND_DSTSet 0
    proc staticGet_GL_BLEND_DST {} {
        variable GL_BLEND_DSTValue
        variable GL_BLEND_DSTSet
        if {!$GL_BLEND_DSTSet} {
            set GL_BLEND_DSTSet 1
            set GL_BLEND_DSTValue 3040
        }
        return $GL_BLEND_DSTValue
    }
    proc staticSet_GL_BLEND_DST {value} {
        variable GL_BLEND_DSTValue
        variable GL_BLEND_DSTSet
        set GL_BLEND_DSTSet 1
        set GL_BLEND_DSTValue $value
    }
    variable GL_BLEND_SRCValue {}
    variable GL_BLEND_SRCSet 0
    proc staticGet_GL_BLEND_SRC {} {
        variable GL_BLEND_SRCValue
        variable GL_BLEND_SRCSet
        if {!$GL_BLEND_SRCSet} {
            set GL_BLEND_SRCSet 1
            set GL_BLEND_SRCValue 3041
        }
        return $GL_BLEND_SRCValue
    }
    proc staticSet_GL_BLEND_SRC {value} {
        variable GL_BLEND_SRCValue
        variable GL_BLEND_SRCSet
        set GL_BLEND_SRCSet 1
        set GL_BLEND_SRCValue $value
    }
    variable GL_BUFFER_ACCESSValue {}
    variable GL_BUFFER_ACCESSSet 0
    proc staticGet_GL_BUFFER_ACCESS {} {
        variable GL_BUFFER_ACCESSValue
        variable GL_BUFFER_ACCESSSet
        if {!$GL_BUFFER_ACCESSSet} {
            set GL_BUFFER_ACCESSSet 1
            set GL_BUFFER_ACCESSValue 35003
        }
        return $GL_BUFFER_ACCESSValue
    }
    proc staticSet_GL_BUFFER_ACCESS {value} {
        variable GL_BUFFER_ACCESSValue
        variable GL_BUFFER_ACCESSSet
        set GL_BUFFER_ACCESSSet 1
        set GL_BUFFER_ACCESSValue $value
    }
    variable GL_BUFFER_SIZEValue {}
    variable GL_BUFFER_SIZESet 0
    proc staticGet_GL_BUFFER_SIZE {} {
        variable GL_BUFFER_SIZEValue
        variable GL_BUFFER_SIZESet
        if {!$GL_BUFFER_SIZESet} {
            set GL_BUFFER_SIZESet 1
            set GL_BUFFER_SIZEValue 34660
        }
        return $GL_BUFFER_SIZEValue
    }
    proc staticSet_GL_BUFFER_SIZE {value} {
        variable GL_BUFFER_SIZEValue
        variable GL_BUFFER_SIZESet
        set GL_BUFFER_SIZESet 1
        set GL_BUFFER_SIZEValue $value
    }
    variable GL_BUFFER_USAGEValue {}
    variable GL_BUFFER_USAGESet 0
    proc staticGet_GL_BUFFER_USAGE {} {
        variable GL_BUFFER_USAGEValue
        variable GL_BUFFER_USAGESet
        if {!$GL_BUFFER_USAGESet} {
            set GL_BUFFER_USAGESet 1
            set GL_BUFFER_USAGEValue 34661
        }
        return $GL_BUFFER_USAGEValue
    }
    proc staticSet_GL_BUFFER_USAGE {value} {
        variable GL_BUFFER_USAGEValue
        variable GL_BUFFER_USAGESet
        set GL_BUFFER_USAGESet 1
        set GL_BUFFER_USAGEValue $value
    }
    variable GL_CLIENT_ACTIVE_TEXTUREValue {}
    variable GL_CLIENT_ACTIVE_TEXTURESet 0
    proc staticGet_GL_CLIENT_ACTIVE_TEXTURE {} {
        variable GL_CLIENT_ACTIVE_TEXTUREValue
        variable GL_CLIENT_ACTIVE_TEXTURESet
        if {!$GL_CLIENT_ACTIVE_TEXTURESet} {
            set GL_CLIENT_ACTIVE_TEXTURESet 1
            set GL_CLIENT_ACTIVE_TEXTUREValue 34017
        }
        return $GL_CLIENT_ACTIVE_TEXTUREValue
    }
    proc staticSet_GL_CLIENT_ACTIVE_TEXTURE {value} {
        variable GL_CLIENT_ACTIVE_TEXTUREValue
        variable GL_CLIENT_ACTIVE_TEXTURESet
        set GL_CLIENT_ACTIVE_TEXTURESet 1
        set GL_CLIENT_ACTIVE_TEXTUREValue $value
    }
    variable GL_CLIP_PLANE0Value {}
    variable GL_CLIP_PLANE0Set 0
    proc staticGet_GL_CLIP_PLANE0 {} {
        variable GL_CLIP_PLANE0Value
        variable GL_CLIP_PLANE0Set
        if {!$GL_CLIP_PLANE0Set} {
            set GL_CLIP_PLANE0Set 1
            set GL_CLIP_PLANE0Value 12288
        }
        return $GL_CLIP_PLANE0Value
    }
    proc staticSet_GL_CLIP_PLANE0 {value} {
        variable GL_CLIP_PLANE0Value
        variable GL_CLIP_PLANE0Set
        set GL_CLIP_PLANE0Set 1
        set GL_CLIP_PLANE0Value $value
    }
    variable GL_CLIP_PLANE1Value {}
    variable GL_CLIP_PLANE1Set 0
    proc staticGet_GL_CLIP_PLANE1 {} {
        variable GL_CLIP_PLANE1Value
        variable GL_CLIP_PLANE1Set
        if {!$GL_CLIP_PLANE1Set} {
            set GL_CLIP_PLANE1Set 1
            set GL_CLIP_PLANE1Value 12289
        }
        return $GL_CLIP_PLANE1Value
    }
    proc staticSet_GL_CLIP_PLANE1 {value} {
        variable GL_CLIP_PLANE1Value
        variable GL_CLIP_PLANE1Set
        set GL_CLIP_PLANE1Set 1
        set GL_CLIP_PLANE1Value $value
    }
    variable GL_CLIP_PLANE2Value {}
    variable GL_CLIP_PLANE2Set 0
    proc staticGet_GL_CLIP_PLANE2 {} {
        variable GL_CLIP_PLANE2Value
        variable GL_CLIP_PLANE2Set
        if {!$GL_CLIP_PLANE2Set} {
            set GL_CLIP_PLANE2Set 1
            set GL_CLIP_PLANE2Value 12290
        }
        return $GL_CLIP_PLANE2Value
    }
    proc staticSet_GL_CLIP_PLANE2 {value} {
        variable GL_CLIP_PLANE2Value
        variable GL_CLIP_PLANE2Set
        set GL_CLIP_PLANE2Set 1
        set GL_CLIP_PLANE2Value $value
    }
    variable GL_CLIP_PLANE3Value {}
    variable GL_CLIP_PLANE3Set 0
    proc staticGet_GL_CLIP_PLANE3 {} {
        variable GL_CLIP_PLANE3Value
        variable GL_CLIP_PLANE3Set
        if {!$GL_CLIP_PLANE3Set} {
            set GL_CLIP_PLANE3Set 1
            set GL_CLIP_PLANE3Value 12291
        }
        return $GL_CLIP_PLANE3Value
    }
    proc staticSet_GL_CLIP_PLANE3 {value} {
        variable GL_CLIP_PLANE3Value
        variable GL_CLIP_PLANE3Set
        set GL_CLIP_PLANE3Set 1
        set GL_CLIP_PLANE3Value $value
    }
    variable GL_CLIP_PLANE4Value {}
    variable GL_CLIP_PLANE4Set 0
    proc staticGet_GL_CLIP_PLANE4 {} {
        variable GL_CLIP_PLANE4Value
        variable GL_CLIP_PLANE4Set
        if {!$GL_CLIP_PLANE4Set} {
            set GL_CLIP_PLANE4Set 1
            set GL_CLIP_PLANE4Value 12292
        }
        return $GL_CLIP_PLANE4Value
    }
    proc staticSet_GL_CLIP_PLANE4 {value} {
        variable GL_CLIP_PLANE4Value
        variable GL_CLIP_PLANE4Set
        set GL_CLIP_PLANE4Set 1
        set GL_CLIP_PLANE4Value $value
    }
    variable GL_CLIP_PLANE5Value {}
    variable GL_CLIP_PLANE5Set 0
    proc staticGet_GL_CLIP_PLANE5 {} {
        variable GL_CLIP_PLANE5Value
        variable GL_CLIP_PLANE5Set
        if {!$GL_CLIP_PLANE5Set} {
            set GL_CLIP_PLANE5Set 1
            set GL_CLIP_PLANE5Value 12293
        }
        return $GL_CLIP_PLANE5Value
    }
    proc staticSet_GL_CLIP_PLANE5 {value} {
        variable GL_CLIP_PLANE5Value
        variable GL_CLIP_PLANE5Set
        set GL_CLIP_PLANE5Set 1
        set GL_CLIP_PLANE5Value $value
    }
    variable GL_COLOR_ARRAY_BUFFER_BINDINGValue {}
    variable GL_COLOR_ARRAY_BUFFER_BINDINGSet 0
    proc staticGet_GL_COLOR_ARRAY_BUFFER_BINDING {} {
        variable GL_COLOR_ARRAY_BUFFER_BINDINGValue
        variable GL_COLOR_ARRAY_BUFFER_BINDINGSet
        if {!$GL_COLOR_ARRAY_BUFFER_BINDINGSet} {
            set GL_COLOR_ARRAY_BUFFER_BINDINGSet 1
            set GL_COLOR_ARRAY_BUFFER_BINDINGValue 34968
        }
        return $GL_COLOR_ARRAY_BUFFER_BINDINGValue
    }
    proc staticSet_GL_COLOR_ARRAY_BUFFER_BINDING {value} {
        variable GL_COLOR_ARRAY_BUFFER_BINDINGValue
        variable GL_COLOR_ARRAY_BUFFER_BINDINGSet
        set GL_COLOR_ARRAY_BUFFER_BINDINGSet 1
        set GL_COLOR_ARRAY_BUFFER_BINDINGValue $value
    }
    variable GL_COLOR_ARRAY_POINTERValue {}
    variable GL_COLOR_ARRAY_POINTERSet 0
    proc staticGet_GL_COLOR_ARRAY_POINTER {} {
        variable GL_COLOR_ARRAY_POINTERValue
        variable GL_COLOR_ARRAY_POINTERSet
        if {!$GL_COLOR_ARRAY_POINTERSet} {
            set GL_COLOR_ARRAY_POINTERSet 1
            set GL_COLOR_ARRAY_POINTERValue 32912
        }
        return $GL_COLOR_ARRAY_POINTERValue
    }
    proc staticSet_GL_COLOR_ARRAY_POINTER {value} {
        variable GL_COLOR_ARRAY_POINTERValue
        variable GL_COLOR_ARRAY_POINTERSet
        set GL_COLOR_ARRAY_POINTERSet 1
        set GL_COLOR_ARRAY_POINTERValue $value
    }
    variable GL_COLOR_ARRAY_SIZEValue {}
    variable GL_COLOR_ARRAY_SIZESet 0
    proc staticGet_GL_COLOR_ARRAY_SIZE {} {
        variable GL_COLOR_ARRAY_SIZEValue
        variable GL_COLOR_ARRAY_SIZESet
        if {!$GL_COLOR_ARRAY_SIZESet} {
            set GL_COLOR_ARRAY_SIZESet 1
            set GL_COLOR_ARRAY_SIZEValue 32897
        }
        return $GL_COLOR_ARRAY_SIZEValue
    }
    proc staticSet_GL_COLOR_ARRAY_SIZE {value} {
        variable GL_COLOR_ARRAY_SIZEValue
        variable GL_COLOR_ARRAY_SIZESet
        set GL_COLOR_ARRAY_SIZESet 1
        set GL_COLOR_ARRAY_SIZEValue $value
    }
    variable GL_COLOR_ARRAY_STRIDEValue {}
    variable GL_COLOR_ARRAY_STRIDESet 0
    proc staticGet_GL_COLOR_ARRAY_STRIDE {} {
        variable GL_COLOR_ARRAY_STRIDEValue
        variable GL_COLOR_ARRAY_STRIDESet
        if {!$GL_COLOR_ARRAY_STRIDESet} {
            set GL_COLOR_ARRAY_STRIDESet 1
            set GL_COLOR_ARRAY_STRIDEValue 32899
        }
        return $GL_COLOR_ARRAY_STRIDEValue
    }
    proc staticSet_GL_COLOR_ARRAY_STRIDE {value} {
        variable GL_COLOR_ARRAY_STRIDEValue
        variable GL_COLOR_ARRAY_STRIDESet
        set GL_COLOR_ARRAY_STRIDESet 1
        set GL_COLOR_ARRAY_STRIDEValue $value
    }
    variable GL_COLOR_ARRAY_TYPEValue {}
    variable GL_COLOR_ARRAY_TYPESet 0
    proc staticGet_GL_COLOR_ARRAY_TYPE {} {
        variable GL_COLOR_ARRAY_TYPEValue
        variable GL_COLOR_ARRAY_TYPESet
        if {!$GL_COLOR_ARRAY_TYPESet} {
            set GL_COLOR_ARRAY_TYPESet 1
            set GL_COLOR_ARRAY_TYPEValue 32898
        }
        return $GL_COLOR_ARRAY_TYPEValue
    }
    proc staticSet_GL_COLOR_ARRAY_TYPE {value} {
        variable GL_COLOR_ARRAY_TYPEValue
        variable GL_COLOR_ARRAY_TYPESet
        set GL_COLOR_ARRAY_TYPESet 1
        set GL_COLOR_ARRAY_TYPEValue $value
    }
    variable GL_COLOR_CLEAR_VALUEValue {}
    variable GL_COLOR_CLEAR_VALUESet 0
    proc staticGet_GL_COLOR_CLEAR_VALUE {} {
        variable GL_COLOR_CLEAR_VALUEValue
        variable GL_COLOR_CLEAR_VALUESet
        if {!$GL_COLOR_CLEAR_VALUESet} {
            set GL_COLOR_CLEAR_VALUESet 1
            set GL_COLOR_CLEAR_VALUEValue 3106
        }
        return $GL_COLOR_CLEAR_VALUEValue
    }
    proc staticSet_GL_COLOR_CLEAR_VALUE {value} {
        variable GL_COLOR_CLEAR_VALUEValue
        variable GL_COLOR_CLEAR_VALUESet
        set GL_COLOR_CLEAR_VALUESet 1
        set GL_COLOR_CLEAR_VALUEValue $value
    }
    variable GL_COLOR_WRITEMASKValue {}
    variable GL_COLOR_WRITEMASKSet 0
    proc staticGet_GL_COLOR_WRITEMASK {} {
        variable GL_COLOR_WRITEMASKValue
        variable GL_COLOR_WRITEMASKSet
        if {!$GL_COLOR_WRITEMASKSet} {
            set GL_COLOR_WRITEMASKSet 1
            set GL_COLOR_WRITEMASKValue 3107
        }
        return $GL_COLOR_WRITEMASKValue
    }
    proc staticSet_GL_COLOR_WRITEMASK {value} {
        variable GL_COLOR_WRITEMASKValue
        variable GL_COLOR_WRITEMASKSet
        set GL_COLOR_WRITEMASKSet 1
        set GL_COLOR_WRITEMASKValue $value
    }
    variable GL_COMBINEValue {}
    variable GL_COMBINESet 0
    proc staticGet_GL_COMBINE {} {
        variable GL_COMBINEValue
        variable GL_COMBINESet
        if {!$GL_COMBINESet} {
            set GL_COMBINESet 1
            set GL_COMBINEValue 34160
        }
        return $GL_COMBINEValue
    }
    proc staticSet_GL_COMBINE {value} {
        variable GL_COMBINEValue
        variable GL_COMBINESet
        set GL_COMBINESet 1
        set GL_COMBINEValue $value
    }
    variable GL_COMBINE_ALPHAValue {}
    variable GL_COMBINE_ALPHASet 0
    proc staticGet_GL_COMBINE_ALPHA {} {
        variable GL_COMBINE_ALPHAValue
        variable GL_COMBINE_ALPHASet
        if {!$GL_COMBINE_ALPHASet} {
            set GL_COMBINE_ALPHASet 1
            set GL_COMBINE_ALPHAValue 34162
        }
        return $GL_COMBINE_ALPHAValue
    }
    proc staticSet_GL_COMBINE_ALPHA {value} {
        variable GL_COMBINE_ALPHAValue
        variable GL_COMBINE_ALPHASet
        set GL_COMBINE_ALPHASet 1
        set GL_COMBINE_ALPHAValue $value
    }
    variable GL_COMBINE_RGBValue {}
    variable GL_COMBINE_RGBSet 0
    proc staticGet_GL_COMBINE_RGB {} {
        variable GL_COMBINE_RGBValue
        variable GL_COMBINE_RGBSet
        if {!$GL_COMBINE_RGBSet} {
            set GL_COMBINE_RGBSet 1
            set GL_COMBINE_RGBValue 34161
        }
        return $GL_COMBINE_RGBValue
    }
    proc staticSet_GL_COMBINE_RGB {value} {
        variable GL_COMBINE_RGBValue
        variable GL_COMBINE_RGBSet
        set GL_COMBINE_RGBSet 1
        set GL_COMBINE_RGBValue $value
    }
    variable GL_CONSTANTValue {}
    variable GL_CONSTANTSet 0
    proc staticGet_GL_CONSTANT {} {
        variable GL_CONSTANTValue
        variable GL_CONSTANTSet
        if {!$GL_CONSTANTSet} {
            set GL_CONSTANTSet 1
            set GL_CONSTANTValue 34166
        }
        return $GL_CONSTANTValue
    }
    proc staticSet_GL_CONSTANT {value} {
        variable GL_CONSTANTValue
        variable GL_CONSTANTSet
        set GL_CONSTANTSet 1
        set GL_CONSTANTValue $value
    }
    variable GL_COORD_REPLACE_OESValue {}
    variable GL_COORD_REPLACE_OESSet 0
    proc staticGet_GL_COORD_REPLACE_OES {} {
        variable GL_COORD_REPLACE_OESValue
        variable GL_COORD_REPLACE_OESSet
        if {!$GL_COORD_REPLACE_OESSet} {
            set GL_COORD_REPLACE_OESSet 1
            set GL_COORD_REPLACE_OESValue 34914
        }
        return $GL_COORD_REPLACE_OESValue
    }
    proc staticSet_GL_COORD_REPLACE_OES {value} {
        variable GL_COORD_REPLACE_OESValue
        variable GL_COORD_REPLACE_OESSet
        set GL_COORD_REPLACE_OESSet 1
        set GL_COORD_REPLACE_OESValue $value
    }
    variable GL_CULL_FACE_MODEValue {}
    variable GL_CULL_FACE_MODESet 0
    proc staticGet_GL_CULL_FACE_MODE {} {
        variable GL_CULL_FACE_MODEValue
        variable GL_CULL_FACE_MODESet
        if {!$GL_CULL_FACE_MODESet} {
            set GL_CULL_FACE_MODESet 1
            set GL_CULL_FACE_MODEValue 2885
        }
        return $GL_CULL_FACE_MODEValue
    }
    proc staticSet_GL_CULL_FACE_MODE {value} {
        variable GL_CULL_FACE_MODEValue
        variable GL_CULL_FACE_MODESet
        set GL_CULL_FACE_MODESet 1
        set GL_CULL_FACE_MODEValue $value
    }
    variable GL_CURRENT_COLORValue {}
    variable GL_CURRENT_COLORSet 0
    proc staticGet_GL_CURRENT_COLOR {} {
        variable GL_CURRENT_COLORValue
        variable GL_CURRENT_COLORSet
        if {!$GL_CURRENT_COLORSet} {
            set GL_CURRENT_COLORSet 1
            set GL_CURRENT_COLORValue 2816
        }
        return $GL_CURRENT_COLORValue
    }
    proc staticSet_GL_CURRENT_COLOR {value} {
        variable GL_CURRENT_COLORValue
        variable GL_CURRENT_COLORSet
        set GL_CURRENT_COLORSet 1
        set GL_CURRENT_COLORValue $value
    }
    variable GL_CURRENT_NORMALValue {}
    variable GL_CURRENT_NORMALSet 0
    proc staticGet_GL_CURRENT_NORMAL {} {
        variable GL_CURRENT_NORMALValue
        variable GL_CURRENT_NORMALSet
        if {!$GL_CURRENT_NORMALSet} {
            set GL_CURRENT_NORMALSet 1
            set GL_CURRENT_NORMALValue 2818
        }
        return $GL_CURRENT_NORMALValue
    }
    proc staticSet_GL_CURRENT_NORMAL {value} {
        variable GL_CURRENT_NORMALValue
        variable GL_CURRENT_NORMALSet
        set GL_CURRENT_NORMALSet 1
        set GL_CURRENT_NORMALValue $value
    }
    variable GL_CURRENT_TEXTURE_COORDSValue {}
    variable GL_CURRENT_TEXTURE_COORDSSet 0
    proc staticGet_GL_CURRENT_TEXTURE_COORDS {} {
        variable GL_CURRENT_TEXTURE_COORDSValue
        variable GL_CURRENT_TEXTURE_COORDSSet
        if {!$GL_CURRENT_TEXTURE_COORDSSet} {
            set GL_CURRENT_TEXTURE_COORDSSet 1
            set GL_CURRENT_TEXTURE_COORDSValue 2819
        }
        return $GL_CURRENT_TEXTURE_COORDSValue
    }
    proc staticSet_GL_CURRENT_TEXTURE_COORDS {value} {
        variable GL_CURRENT_TEXTURE_COORDSValue
        variable GL_CURRENT_TEXTURE_COORDSSet
        set GL_CURRENT_TEXTURE_COORDSSet 1
        set GL_CURRENT_TEXTURE_COORDSValue $value
    }
    variable GL_DEPTH_CLEAR_VALUEValue {}
    variable GL_DEPTH_CLEAR_VALUESet 0
    proc staticGet_GL_DEPTH_CLEAR_VALUE {} {
        variable GL_DEPTH_CLEAR_VALUEValue
        variable GL_DEPTH_CLEAR_VALUESet
        if {!$GL_DEPTH_CLEAR_VALUESet} {
            set GL_DEPTH_CLEAR_VALUESet 1
            set GL_DEPTH_CLEAR_VALUEValue 2931
        }
        return $GL_DEPTH_CLEAR_VALUEValue
    }
    proc staticSet_GL_DEPTH_CLEAR_VALUE {value} {
        variable GL_DEPTH_CLEAR_VALUEValue
        variable GL_DEPTH_CLEAR_VALUESet
        set GL_DEPTH_CLEAR_VALUESet 1
        set GL_DEPTH_CLEAR_VALUEValue $value
    }
    variable GL_DEPTH_FUNCValue {}
    variable GL_DEPTH_FUNCSet 0
    proc staticGet_GL_DEPTH_FUNC {} {
        variable GL_DEPTH_FUNCValue
        variable GL_DEPTH_FUNCSet
        if {!$GL_DEPTH_FUNCSet} {
            set GL_DEPTH_FUNCSet 1
            set GL_DEPTH_FUNCValue 2932
        }
        return $GL_DEPTH_FUNCValue
    }
    proc staticSet_GL_DEPTH_FUNC {value} {
        variable GL_DEPTH_FUNCValue
        variable GL_DEPTH_FUNCSet
        set GL_DEPTH_FUNCSet 1
        set GL_DEPTH_FUNCValue $value
    }
    variable GL_DEPTH_RANGEValue {}
    variable GL_DEPTH_RANGESet 0
    proc staticGet_GL_DEPTH_RANGE {} {
        variable GL_DEPTH_RANGEValue
        variable GL_DEPTH_RANGESet
        if {!$GL_DEPTH_RANGESet} {
            set GL_DEPTH_RANGESet 1
            set GL_DEPTH_RANGEValue 2928
        }
        return $GL_DEPTH_RANGEValue
    }
    proc staticSet_GL_DEPTH_RANGE {value} {
        variable GL_DEPTH_RANGEValue
        variable GL_DEPTH_RANGESet
        set GL_DEPTH_RANGESet 1
        set GL_DEPTH_RANGEValue $value
    }
    variable GL_DEPTH_WRITEMASKValue {}
    variable GL_DEPTH_WRITEMASKSet 0
    proc staticGet_GL_DEPTH_WRITEMASK {} {
        variable GL_DEPTH_WRITEMASKValue
        variable GL_DEPTH_WRITEMASKSet
        if {!$GL_DEPTH_WRITEMASKSet} {
            set GL_DEPTH_WRITEMASKSet 1
            set GL_DEPTH_WRITEMASKValue 2930
        }
        return $GL_DEPTH_WRITEMASKValue
    }
    proc staticSet_GL_DEPTH_WRITEMASK {value} {
        variable GL_DEPTH_WRITEMASKValue
        variable GL_DEPTH_WRITEMASKSet
        set GL_DEPTH_WRITEMASKSet 1
        set GL_DEPTH_WRITEMASKValue $value
    }
    variable GL_DOT3_RGBValue {}
    variable GL_DOT3_RGBSet 0
    proc staticGet_GL_DOT3_RGB {} {
        variable GL_DOT3_RGBValue
        variable GL_DOT3_RGBSet
        if {!$GL_DOT3_RGBSet} {
            set GL_DOT3_RGBSet 1
            set GL_DOT3_RGBValue 34478
        }
        return $GL_DOT3_RGBValue
    }
    proc staticSet_GL_DOT3_RGB {value} {
        variable GL_DOT3_RGBValue
        variable GL_DOT3_RGBSet
        set GL_DOT3_RGBSet 1
        set GL_DOT3_RGBValue $value
    }
    variable GL_DOT3_RGBAValue {}
    variable GL_DOT3_RGBASet 0
    proc staticGet_GL_DOT3_RGBA {} {
        variable GL_DOT3_RGBAValue
        variable GL_DOT3_RGBASet
        if {!$GL_DOT3_RGBASet} {
            set GL_DOT3_RGBASet 1
            set GL_DOT3_RGBAValue 34479
        }
        return $GL_DOT3_RGBAValue
    }
    proc staticSet_GL_DOT3_RGBA {value} {
        variable GL_DOT3_RGBAValue
        variable GL_DOT3_RGBASet
        set GL_DOT3_RGBASet 1
        set GL_DOT3_RGBAValue $value
    }
    variable GL_DYNAMIC_DRAWValue {}
    variable GL_DYNAMIC_DRAWSet 0
    proc staticGet_GL_DYNAMIC_DRAW {} {
        variable GL_DYNAMIC_DRAWValue
        variable GL_DYNAMIC_DRAWSet
        if {!$GL_DYNAMIC_DRAWSet} {
            set GL_DYNAMIC_DRAWSet 1
            set GL_DYNAMIC_DRAWValue 35048
        }
        return $GL_DYNAMIC_DRAWValue
    }
    proc staticSet_GL_DYNAMIC_DRAW {value} {
        variable GL_DYNAMIC_DRAWValue
        variable GL_DYNAMIC_DRAWSet
        set GL_DYNAMIC_DRAWSet 1
        set GL_DYNAMIC_DRAWValue $value
    }
    variable GL_ELEMENT_ARRAY_BUFFERValue {}
    variable GL_ELEMENT_ARRAY_BUFFERSet 0
    proc staticGet_GL_ELEMENT_ARRAY_BUFFER {} {
        variable GL_ELEMENT_ARRAY_BUFFERValue
        variable GL_ELEMENT_ARRAY_BUFFERSet
        if {!$GL_ELEMENT_ARRAY_BUFFERSet} {
            set GL_ELEMENT_ARRAY_BUFFERSet 1
            set GL_ELEMENT_ARRAY_BUFFERValue 34963
        }
        return $GL_ELEMENT_ARRAY_BUFFERValue
    }
    proc staticSet_GL_ELEMENT_ARRAY_BUFFER {value} {
        variable GL_ELEMENT_ARRAY_BUFFERValue
        variable GL_ELEMENT_ARRAY_BUFFERSet
        set GL_ELEMENT_ARRAY_BUFFERSet 1
        set GL_ELEMENT_ARRAY_BUFFERValue $value
    }
    variable GL_ELEMENT_ARRAY_BUFFER_BINDINGValue {}
    variable GL_ELEMENT_ARRAY_BUFFER_BINDINGSet 0
    proc staticGet_GL_ELEMENT_ARRAY_BUFFER_BINDING {} {
        variable GL_ELEMENT_ARRAY_BUFFER_BINDINGValue
        variable GL_ELEMENT_ARRAY_BUFFER_BINDINGSet
        if {!$GL_ELEMENT_ARRAY_BUFFER_BINDINGSet} {
            set GL_ELEMENT_ARRAY_BUFFER_BINDINGSet 1
            set GL_ELEMENT_ARRAY_BUFFER_BINDINGValue 34965
        }
        return $GL_ELEMENT_ARRAY_BUFFER_BINDINGValue
    }
    proc staticSet_GL_ELEMENT_ARRAY_BUFFER_BINDING {value} {
        variable GL_ELEMENT_ARRAY_BUFFER_BINDINGValue
        variable GL_ELEMENT_ARRAY_BUFFER_BINDINGSet
        set GL_ELEMENT_ARRAY_BUFFER_BINDINGSet 1
        set GL_ELEMENT_ARRAY_BUFFER_BINDINGValue $value
    }
    variable GL_FRONT_FACEValue {}
    variable GL_FRONT_FACESet 0
    proc staticGet_GL_FRONT_FACE {} {
        variable GL_FRONT_FACEValue
        variable GL_FRONT_FACESet
        if {!$GL_FRONT_FACESet} {
            set GL_FRONT_FACESet 1
            set GL_FRONT_FACEValue 2886
        }
        return $GL_FRONT_FACEValue
    }
    proc staticSet_GL_FRONT_FACE {value} {
        variable GL_FRONT_FACEValue
        variable GL_FRONT_FACESet
        set GL_FRONT_FACESet 1
        set GL_FRONT_FACEValue $value
    }
    variable GL_GENERATE_MIPMAPValue {}
    variable GL_GENERATE_MIPMAPSet 0
    proc staticGet_GL_GENERATE_MIPMAP {} {
        variable GL_GENERATE_MIPMAPValue
        variable GL_GENERATE_MIPMAPSet
        if {!$GL_GENERATE_MIPMAPSet} {
            set GL_GENERATE_MIPMAPSet 1
            set GL_GENERATE_MIPMAPValue 33169
        }
        return $GL_GENERATE_MIPMAPValue
    }
    proc staticSet_GL_GENERATE_MIPMAP {value} {
        variable GL_GENERATE_MIPMAPValue
        variable GL_GENERATE_MIPMAPSet
        set GL_GENERATE_MIPMAPSet 1
        set GL_GENERATE_MIPMAPValue $value
    }
    variable GL_GENERATE_MIPMAP_HINTValue {}
    variable GL_GENERATE_MIPMAP_HINTSet 0
    proc staticGet_GL_GENERATE_MIPMAP_HINT {} {
        variable GL_GENERATE_MIPMAP_HINTValue
        variable GL_GENERATE_MIPMAP_HINTSet
        if {!$GL_GENERATE_MIPMAP_HINTSet} {
            set GL_GENERATE_MIPMAP_HINTSet 1
            set GL_GENERATE_MIPMAP_HINTValue 33170
        }
        return $GL_GENERATE_MIPMAP_HINTValue
    }
    proc staticSet_GL_GENERATE_MIPMAP_HINT {value} {
        variable GL_GENERATE_MIPMAP_HINTValue
        variable GL_GENERATE_MIPMAP_HINTSet
        set GL_GENERATE_MIPMAP_HINTSet 1
        set GL_GENERATE_MIPMAP_HINTValue $value
    }
    variable GL_INTERPOLATEValue {}
    variable GL_INTERPOLATESet 0
    proc staticGet_GL_INTERPOLATE {} {
        variable GL_INTERPOLATEValue
        variable GL_INTERPOLATESet
        if {!$GL_INTERPOLATESet} {
            set GL_INTERPOLATESet 1
            set GL_INTERPOLATEValue 34165
        }
        return $GL_INTERPOLATEValue
    }
    proc staticSet_GL_INTERPOLATE {value} {
        variable GL_INTERPOLATEValue
        variable GL_INTERPOLATESet
        set GL_INTERPOLATESet 1
        set GL_INTERPOLATEValue $value
    }
    variable GL_LINE_WIDTHValue {}
    variable GL_LINE_WIDTHSet 0
    proc staticGet_GL_LINE_WIDTH {} {
        variable GL_LINE_WIDTHValue
        variable GL_LINE_WIDTHSet
        if {!$GL_LINE_WIDTHSet} {
            set GL_LINE_WIDTHSet 1
            set GL_LINE_WIDTHValue 2849
        }
        return $GL_LINE_WIDTHValue
    }
    proc staticSet_GL_LINE_WIDTH {value} {
        variable GL_LINE_WIDTHValue
        variable GL_LINE_WIDTHSet
        set GL_LINE_WIDTHSet 1
        set GL_LINE_WIDTHValue $value
    }
    variable GL_LOGIC_OP_MODEValue {}
    variable GL_LOGIC_OP_MODESet 0
    proc staticGet_GL_LOGIC_OP_MODE {} {
        variable GL_LOGIC_OP_MODEValue
        variable GL_LOGIC_OP_MODESet
        if {!$GL_LOGIC_OP_MODESet} {
            set GL_LOGIC_OP_MODESet 1
            set GL_LOGIC_OP_MODEValue 3056
        }
        return $GL_LOGIC_OP_MODEValue
    }
    proc staticSet_GL_LOGIC_OP_MODE {value} {
        variable GL_LOGIC_OP_MODEValue
        variable GL_LOGIC_OP_MODESet
        set GL_LOGIC_OP_MODESet 1
        set GL_LOGIC_OP_MODEValue $value
    }
    variable GL_MATRIX_MODEValue {}
    variable GL_MATRIX_MODESet 0
    proc staticGet_GL_MATRIX_MODE {} {
        variable GL_MATRIX_MODEValue
        variable GL_MATRIX_MODESet
        if {!$GL_MATRIX_MODESet} {
            set GL_MATRIX_MODESet 1
            set GL_MATRIX_MODEValue 2976
        }
        return $GL_MATRIX_MODEValue
    }
    proc staticSet_GL_MATRIX_MODE {value} {
        variable GL_MATRIX_MODEValue
        variable GL_MATRIX_MODESet
        set GL_MATRIX_MODESet 1
        set GL_MATRIX_MODEValue $value
    }
    variable GL_MAX_CLIP_PLANESValue {}
    variable GL_MAX_CLIP_PLANESSet 0
    proc staticGet_GL_MAX_CLIP_PLANES {} {
        variable GL_MAX_CLIP_PLANESValue
        variable GL_MAX_CLIP_PLANESSet
        if {!$GL_MAX_CLIP_PLANESSet} {
            set GL_MAX_CLIP_PLANESSet 1
            set GL_MAX_CLIP_PLANESValue 3378
        }
        return $GL_MAX_CLIP_PLANESValue
    }
    proc staticSet_GL_MAX_CLIP_PLANES {value} {
        variable GL_MAX_CLIP_PLANESValue
        variable GL_MAX_CLIP_PLANESSet
        set GL_MAX_CLIP_PLANESSet 1
        set GL_MAX_CLIP_PLANESValue $value
    }
    variable GL_MODELVIEW_MATRIXValue {}
    variable GL_MODELVIEW_MATRIXSet 0
    proc staticGet_GL_MODELVIEW_MATRIX {} {
        variable GL_MODELVIEW_MATRIXValue
        variable GL_MODELVIEW_MATRIXSet
        if {!$GL_MODELVIEW_MATRIXSet} {
            set GL_MODELVIEW_MATRIXSet 1
            set GL_MODELVIEW_MATRIXValue 2982
        }
        return $GL_MODELVIEW_MATRIXValue
    }
    proc staticSet_GL_MODELVIEW_MATRIX {value} {
        variable GL_MODELVIEW_MATRIXValue
        variable GL_MODELVIEW_MATRIXSet
        set GL_MODELVIEW_MATRIXSet 1
        set GL_MODELVIEW_MATRIXValue $value
    }
    variable GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue {}
    variable GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet 0
    proc staticGet_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES {} {
        variable GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue
        variable GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet
        if {!$GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet} {
            set GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet 1
            set GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue 35213
        }
        return $GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue
    }
    proc staticSet_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES {value} {
        variable GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue
        variable GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet
        set GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet 1
        set GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue $value
    }
    variable GL_MODELVIEW_STACK_DEPTHValue {}
    variable GL_MODELVIEW_STACK_DEPTHSet 0
    proc staticGet_GL_MODELVIEW_STACK_DEPTH {} {
        variable GL_MODELVIEW_STACK_DEPTHValue
        variable GL_MODELVIEW_STACK_DEPTHSet
        if {!$GL_MODELVIEW_STACK_DEPTHSet} {
            set GL_MODELVIEW_STACK_DEPTHSet 1
            set GL_MODELVIEW_STACK_DEPTHValue 2979
        }
        return $GL_MODELVIEW_STACK_DEPTHValue
    }
    proc staticSet_GL_MODELVIEW_STACK_DEPTH {value} {
        variable GL_MODELVIEW_STACK_DEPTHValue
        variable GL_MODELVIEW_STACK_DEPTHSet
        set GL_MODELVIEW_STACK_DEPTHSet 1
        set GL_MODELVIEW_STACK_DEPTHValue $value
    }
    variable GL_NORMAL_ARRAY_BUFFER_BINDINGValue {}
    variable GL_NORMAL_ARRAY_BUFFER_BINDINGSet 0
    proc staticGet_GL_NORMAL_ARRAY_BUFFER_BINDING {} {
        variable GL_NORMAL_ARRAY_BUFFER_BINDINGValue
        variable GL_NORMAL_ARRAY_BUFFER_BINDINGSet
        if {!$GL_NORMAL_ARRAY_BUFFER_BINDINGSet} {
            set GL_NORMAL_ARRAY_BUFFER_BINDINGSet 1
            set GL_NORMAL_ARRAY_BUFFER_BINDINGValue 34967
        }
        return $GL_NORMAL_ARRAY_BUFFER_BINDINGValue
    }
    proc staticSet_GL_NORMAL_ARRAY_BUFFER_BINDING {value} {
        variable GL_NORMAL_ARRAY_BUFFER_BINDINGValue
        variable GL_NORMAL_ARRAY_BUFFER_BINDINGSet
        set GL_NORMAL_ARRAY_BUFFER_BINDINGSet 1
        set GL_NORMAL_ARRAY_BUFFER_BINDINGValue $value
    }
    variable GL_NORMAL_ARRAY_POINTERValue {}
    variable GL_NORMAL_ARRAY_POINTERSet 0
    proc staticGet_GL_NORMAL_ARRAY_POINTER {} {
        variable GL_NORMAL_ARRAY_POINTERValue
        variable GL_NORMAL_ARRAY_POINTERSet
        if {!$GL_NORMAL_ARRAY_POINTERSet} {
            set GL_NORMAL_ARRAY_POINTERSet 1
            set GL_NORMAL_ARRAY_POINTERValue 32911
        }
        return $GL_NORMAL_ARRAY_POINTERValue
    }
    proc staticSet_GL_NORMAL_ARRAY_POINTER {value} {
        variable GL_NORMAL_ARRAY_POINTERValue
        variable GL_NORMAL_ARRAY_POINTERSet
        set GL_NORMAL_ARRAY_POINTERSet 1
        set GL_NORMAL_ARRAY_POINTERValue $value
    }
    variable GL_NORMAL_ARRAY_STRIDEValue {}
    variable GL_NORMAL_ARRAY_STRIDESet 0
    proc staticGet_GL_NORMAL_ARRAY_STRIDE {} {
        variable GL_NORMAL_ARRAY_STRIDEValue
        variable GL_NORMAL_ARRAY_STRIDESet
        if {!$GL_NORMAL_ARRAY_STRIDESet} {
            set GL_NORMAL_ARRAY_STRIDESet 1
            set GL_NORMAL_ARRAY_STRIDEValue 32895
        }
        return $GL_NORMAL_ARRAY_STRIDEValue
    }
    proc staticSet_GL_NORMAL_ARRAY_STRIDE {value} {
        variable GL_NORMAL_ARRAY_STRIDEValue
        variable GL_NORMAL_ARRAY_STRIDESet
        set GL_NORMAL_ARRAY_STRIDESet 1
        set GL_NORMAL_ARRAY_STRIDEValue $value
    }
    variable GL_NORMAL_ARRAY_TYPEValue {}
    variable GL_NORMAL_ARRAY_TYPESet 0
    proc staticGet_GL_NORMAL_ARRAY_TYPE {} {
        variable GL_NORMAL_ARRAY_TYPEValue
        variable GL_NORMAL_ARRAY_TYPESet
        if {!$GL_NORMAL_ARRAY_TYPESet} {
            set GL_NORMAL_ARRAY_TYPESet 1
            set GL_NORMAL_ARRAY_TYPEValue 32894
        }
        return $GL_NORMAL_ARRAY_TYPEValue
    }
    proc staticSet_GL_NORMAL_ARRAY_TYPE {value} {
        variable GL_NORMAL_ARRAY_TYPEValue
        variable GL_NORMAL_ARRAY_TYPESet
        set GL_NORMAL_ARRAY_TYPESet 1
        set GL_NORMAL_ARRAY_TYPEValue $value
    }
    variable GL_OPERAND0_ALPHAValue {}
    variable GL_OPERAND0_ALPHASet 0
    proc staticGet_GL_OPERAND0_ALPHA {} {
        variable GL_OPERAND0_ALPHAValue
        variable GL_OPERAND0_ALPHASet
        if {!$GL_OPERAND0_ALPHASet} {
            set GL_OPERAND0_ALPHASet 1
            set GL_OPERAND0_ALPHAValue 34200
        }
        return $GL_OPERAND0_ALPHAValue
    }
    proc staticSet_GL_OPERAND0_ALPHA {value} {
        variable GL_OPERAND0_ALPHAValue
        variable GL_OPERAND0_ALPHASet
        set GL_OPERAND0_ALPHASet 1
        set GL_OPERAND0_ALPHAValue $value
    }
    variable GL_OPERAND0_RGBValue {}
    variable GL_OPERAND0_RGBSet 0
    proc staticGet_GL_OPERAND0_RGB {} {
        variable GL_OPERAND0_RGBValue
        variable GL_OPERAND0_RGBSet
        if {!$GL_OPERAND0_RGBSet} {
            set GL_OPERAND0_RGBSet 1
            set GL_OPERAND0_RGBValue 34192
        }
        return $GL_OPERAND0_RGBValue
    }
    proc staticSet_GL_OPERAND0_RGB {value} {
        variable GL_OPERAND0_RGBValue
        variable GL_OPERAND0_RGBSet
        set GL_OPERAND0_RGBSet 1
        set GL_OPERAND0_RGBValue $value
    }
    variable GL_OPERAND1_ALPHAValue {}
    variable GL_OPERAND1_ALPHASet 0
    proc staticGet_GL_OPERAND1_ALPHA {} {
        variable GL_OPERAND1_ALPHAValue
        variable GL_OPERAND1_ALPHASet
        if {!$GL_OPERAND1_ALPHASet} {
            set GL_OPERAND1_ALPHASet 1
            set GL_OPERAND1_ALPHAValue 34201
        }
        return $GL_OPERAND1_ALPHAValue
    }
    proc staticSet_GL_OPERAND1_ALPHA {value} {
        variable GL_OPERAND1_ALPHAValue
        variable GL_OPERAND1_ALPHASet
        set GL_OPERAND1_ALPHASet 1
        set GL_OPERAND1_ALPHAValue $value
    }
    variable GL_OPERAND1_RGBValue {}
    variable GL_OPERAND1_RGBSet 0
    proc staticGet_GL_OPERAND1_RGB {} {
        variable GL_OPERAND1_RGBValue
        variable GL_OPERAND1_RGBSet
        if {!$GL_OPERAND1_RGBSet} {
            set GL_OPERAND1_RGBSet 1
            set GL_OPERAND1_RGBValue 34193
        }
        return $GL_OPERAND1_RGBValue
    }
    proc staticSet_GL_OPERAND1_RGB {value} {
        variable GL_OPERAND1_RGBValue
        variable GL_OPERAND1_RGBSet
        set GL_OPERAND1_RGBSet 1
        set GL_OPERAND1_RGBValue $value
    }
    variable GL_OPERAND2_ALPHAValue {}
    variable GL_OPERAND2_ALPHASet 0
    proc staticGet_GL_OPERAND2_ALPHA {} {
        variable GL_OPERAND2_ALPHAValue
        variable GL_OPERAND2_ALPHASet
        if {!$GL_OPERAND2_ALPHASet} {
            set GL_OPERAND2_ALPHASet 1
            set GL_OPERAND2_ALPHAValue 34202
        }
        return $GL_OPERAND2_ALPHAValue
    }
    proc staticSet_GL_OPERAND2_ALPHA {value} {
        variable GL_OPERAND2_ALPHAValue
        variable GL_OPERAND2_ALPHASet
        set GL_OPERAND2_ALPHASet 1
        set GL_OPERAND2_ALPHAValue $value
    }
    variable GL_OPERAND2_RGBValue {}
    variable GL_OPERAND2_RGBSet 0
    proc staticGet_GL_OPERAND2_RGB {} {
        variable GL_OPERAND2_RGBValue
        variable GL_OPERAND2_RGBSet
        if {!$GL_OPERAND2_RGBSet} {
            set GL_OPERAND2_RGBSet 1
            set GL_OPERAND2_RGBValue 34194
        }
        return $GL_OPERAND2_RGBValue
    }
    proc staticSet_GL_OPERAND2_RGB {value} {
        variable GL_OPERAND2_RGBValue
        variable GL_OPERAND2_RGBSet
        set GL_OPERAND2_RGBSet 1
        set GL_OPERAND2_RGBValue $value
    }
    variable GL_POINT_DISTANCE_ATTENUATIONValue {}
    variable GL_POINT_DISTANCE_ATTENUATIONSet 0
    proc staticGet_GL_POINT_DISTANCE_ATTENUATION {} {
        variable GL_POINT_DISTANCE_ATTENUATIONValue
        variable GL_POINT_DISTANCE_ATTENUATIONSet
        if {!$GL_POINT_DISTANCE_ATTENUATIONSet} {
            set GL_POINT_DISTANCE_ATTENUATIONSet 1
            set GL_POINT_DISTANCE_ATTENUATIONValue 33065
        }
        return $GL_POINT_DISTANCE_ATTENUATIONValue
    }
    proc staticSet_GL_POINT_DISTANCE_ATTENUATION {value} {
        variable GL_POINT_DISTANCE_ATTENUATIONValue
        variable GL_POINT_DISTANCE_ATTENUATIONSet
        set GL_POINT_DISTANCE_ATTENUATIONSet 1
        set GL_POINT_DISTANCE_ATTENUATIONValue $value
    }
    variable GL_POINT_FADE_THRESHOLD_SIZEValue {}
    variable GL_POINT_FADE_THRESHOLD_SIZESet 0
    proc staticGet_GL_POINT_FADE_THRESHOLD_SIZE {} {
        variable GL_POINT_FADE_THRESHOLD_SIZEValue
        variable GL_POINT_FADE_THRESHOLD_SIZESet
        if {!$GL_POINT_FADE_THRESHOLD_SIZESet} {
            set GL_POINT_FADE_THRESHOLD_SIZESet 1
            set GL_POINT_FADE_THRESHOLD_SIZEValue 33064
        }
        return $GL_POINT_FADE_THRESHOLD_SIZEValue
    }
    proc staticSet_GL_POINT_FADE_THRESHOLD_SIZE {value} {
        variable GL_POINT_FADE_THRESHOLD_SIZEValue
        variable GL_POINT_FADE_THRESHOLD_SIZESet
        set GL_POINT_FADE_THRESHOLD_SIZESet 1
        set GL_POINT_FADE_THRESHOLD_SIZEValue $value
    }
    variable GL_POINT_SIZEValue {}
    variable GL_POINT_SIZESet 0
    proc staticGet_GL_POINT_SIZE {} {
        variable GL_POINT_SIZEValue
        variable GL_POINT_SIZESet
        if {!$GL_POINT_SIZESet} {
            set GL_POINT_SIZESet 1
            set GL_POINT_SIZEValue 2833
        }
        return $GL_POINT_SIZEValue
    }
    proc staticSet_GL_POINT_SIZE {value} {
        variable GL_POINT_SIZEValue
        variable GL_POINT_SIZESet
        set GL_POINT_SIZESet 1
        set GL_POINT_SIZEValue $value
    }
    variable GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue {}
    variable GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet 0
    proc staticGet_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES {} {
        variable GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue
        variable GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet
        if {!$GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet} {
            set GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet 1
            set GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue 35743
        }
        return $GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue
    }
    proc staticSet_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES {value} {
        variable GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue
        variable GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet
        set GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet 1
        set GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue $value
    }
    variable GL_POINT_SIZE_ARRAY_OESValue {}
    variable GL_POINT_SIZE_ARRAY_OESSet 0
    proc staticGet_GL_POINT_SIZE_ARRAY_OES {} {
        variable GL_POINT_SIZE_ARRAY_OESValue
        variable GL_POINT_SIZE_ARRAY_OESSet
        if {!$GL_POINT_SIZE_ARRAY_OESSet} {
            set GL_POINT_SIZE_ARRAY_OESSet 1
            set GL_POINT_SIZE_ARRAY_OESValue 35740
        }
        return $GL_POINT_SIZE_ARRAY_OESValue
    }
    proc staticSet_GL_POINT_SIZE_ARRAY_OES {value} {
        variable GL_POINT_SIZE_ARRAY_OESValue
        variable GL_POINT_SIZE_ARRAY_OESSet
        set GL_POINT_SIZE_ARRAY_OESSet 1
        set GL_POINT_SIZE_ARRAY_OESValue $value
    }
    variable GL_POINT_SIZE_ARRAY_POINTER_OESValue {}
    variable GL_POINT_SIZE_ARRAY_POINTER_OESSet 0
    proc staticGet_GL_POINT_SIZE_ARRAY_POINTER_OES {} {
        variable GL_POINT_SIZE_ARRAY_POINTER_OESValue
        variable GL_POINT_SIZE_ARRAY_POINTER_OESSet
        if {!$GL_POINT_SIZE_ARRAY_POINTER_OESSet} {
            set GL_POINT_SIZE_ARRAY_POINTER_OESSet 1
            set GL_POINT_SIZE_ARRAY_POINTER_OESValue 35212
        }
        return $GL_POINT_SIZE_ARRAY_POINTER_OESValue
    }
    proc staticSet_GL_POINT_SIZE_ARRAY_POINTER_OES {value} {
        variable GL_POINT_SIZE_ARRAY_POINTER_OESValue
        variable GL_POINT_SIZE_ARRAY_POINTER_OESSet
        set GL_POINT_SIZE_ARRAY_POINTER_OESSet 1
        set GL_POINT_SIZE_ARRAY_POINTER_OESValue $value
    }
    variable GL_POINT_SIZE_ARRAY_STRIDE_OESValue {}
    variable GL_POINT_SIZE_ARRAY_STRIDE_OESSet 0
    proc staticGet_GL_POINT_SIZE_ARRAY_STRIDE_OES {} {
        variable GL_POINT_SIZE_ARRAY_STRIDE_OESValue
        variable GL_POINT_SIZE_ARRAY_STRIDE_OESSet
        if {!$GL_POINT_SIZE_ARRAY_STRIDE_OESSet} {
            set GL_POINT_SIZE_ARRAY_STRIDE_OESSet 1
            set GL_POINT_SIZE_ARRAY_STRIDE_OESValue 35211
        }
        return $GL_POINT_SIZE_ARRAY_STRIDE_OESValue
    }
    proc staticSet_GL_POINT_SIZE_ARRAY_STRIDE_OES {value} {
        variable GL_POINT_SIZE_ARRAY_STRIDE_OESValue
        variable GL_POINT_SIZE_ARRAY_STRIDE_OESSet
        set GL_POINT_SIZE_ARRAY_STRIDE_OESSet 1
        set GL_POINT_SIZE_ARRAY_STRIDE_OESValue $value
    }
    variable GL_POINT_SIZE_ARRAY_TYPE_OESValue {}
    variable GL_POINT_SIZE_ARRAY_TYPE_OESSet 0
    proc staticGet_GL_POINT_SIZE_ARRAY_TYPE_OES {} {
        variable GL_POINT_SIZE_ARRAY_TYPE_OESValue
        variable GL_POINT_SIZE_ARRAY_TYPE_OESSet
        if {!$GL_POINT_SIZE_ARRAY_TYPE_OESSet} {
            set GL_POINT_SIZE_ARRAY_TYPE_OESSet 1
            set GL_POINT_SIZE_ARRAY_TYPE_OESValue 35210
        }
        return $GL_POINT_SIZE_ARRAY_TYPE_OESValue
    }
    proc staticSet_GL_POINT_SIZE_ARRAY_TYPE_OES {value} {
        variable GL_POINT_SIZE_ARRAY_TYPE_OESValue
        variable GL_POINT_SIZE_ARRAY_TYPE_OESSet
        set GL_POINT_SIZE_ARRAY_TYPE_OESSet 1
        set GL_POINT_SIZE_ARRAY_TYPE_OESValue $value
    }
    variable GL_POINT_SIZE_MAXValue {}
    variable GL_POINT_SIZE_MAXSet 0
    proc staticGet_GL_POINT_SIZE_MAX {} {
        variable GL_POINT_SIZE_MAXValue
        variable GL_POINT_SIZE_MAXSet
        if {!$GL_POINT_SIZE_MAXSet} {
            set GL_POINT_SIZE_MAXSet 1
            set GL_POINT_SIZE_MAXValue 33063
        }
        return $GL_POINT_SIZE_MAXValue
    }
    proc staticSet_GL_POINT_SIZE_MAX {value} {
        variable GL_POINT_SIZE_MAXValue
        variable GL_POINT_SIZE_MAXSet
        set GL_POINT_SIZE_MAXSet 1
        set GL_POINT_SIZE_MAXValue $value
    }
    variable GL_POINT_SIZE_MINValue {}
    variable GL_POINT_SIZE_MINSet 0
    proc staticGet_GL_POINT_SIZE_MIN {} {
        variable GL_POINT_SIZE_MINValue
        variable GL_POINT_SIZE_MINSet
        if {!$GL_POINT_SIZE_MINSet} {
            set GL_POINT_SIZE_MINSet 1
            set GL_POINT_SIZE_MINValue 33062
        }
        return $GL_POINT_SIZE_MINValue
    }
    proc staticSet_GL_POINT_SIZE_MIN {value} {
        variable GL_POINT_SIZE_MINValue
        variable GL_POINT_SIZE_MINSet
        set GL_POINT_SIZE_MINSet 1
        set GL_POINT_SIZE_MINValue $value
    }
    variable GL_POINT_SPRITE_OESValue {}
    variable GL_POINT_SPRITE_OESSet 0
    proc staticGet_GL_POINT_SPRITE_OES {} {
        variable GL_POINT_SPRITE_OESValue
        variable GL_POINT_SPRITE_OESSet
        if {!$GL_POINT_SPRITE_OESSet} {
            set GL_POINT_SPRITE_OESSet 1
            set GL_POINT_SPRITE_OESValue 34913
        }
        return $GL_POINT_SPRITE_OESValue
    }
    proc staticSet_GL_POINT_SPRITE_OES {value} {
        variable GL_POINT_SPRITE_OESValue
        variable GL_POINT_SPRITE_OESSet
        set GL_POINT_SPRITE_OESSet 1
        set GL_POINT_SPRITE_OESValue $value
    }
    variable GL_POLYGON_OFFSET_FACTORValue {}
    variable GL_POLYGON_OFFSET_FACTORSet 0
    proc staticGet_GL_POLYGON_OFFSET_FACTOR {} {
        variable GL_POLYGON_OFFSET_FACTORValue
        variable GL_POLYGON_OFFSET_FACTORSet
        if {!$GL_POLYGON_OFFSET_FACTORSet} {
            set GL_POLYGON_OFFSET_FACTORSet 1
            set GL_POLYGON_OFFSET_FACTORValue 32824
        }
        return $GL_POLYGON_OFFSET_FACTORValue
    }
    proc staticSet_GL_POLYGON_OFFSET_FACTOR {value} {
        variable GL_POLYGON_OFFSET_FACTORValue
        variable GL_POLYGON_OFFSET_FACTORSet
        set GL_POLYGON_OFFSET_FACTORSet 1
        set GL_POLYGON_OFFSET_FACTORValue $value
    }
    variable GL_POLYGON_OFFSET_UNITSValue {}
    variable GL_POLYGON_OFFSET_UNITSSet 0
    proc staticGet_GL_POLYGON_OFFSET_UNITS {} {
        variable GL_POLYGON_OFFSET_UNITSValue
        variable GL_POLYGON_OFFSET_UNITSSet
        if {!$GL_POLYGON_OFFSET_UNITSSet} {
            set GL_POLYGON_OFFSET_UNITSSet 1
            set GL_POLYGON_OFFSET_UNITSValue 10752
        }
        return $GL_POLYGON_OFFSET_UNITSValue
    }
    proc staticSet_GL_POLYGON_OFFSET_UNITS {value} {
        variable GL_POLYGON_OFFSET_UNITSValue
        variable GL_POLYGON_OFFSET_UNITSSet
        set GL_POLYGON_OFFSET_UNITSSet 1
        set GL_POLYGON_OFFSET_UNITSValue $value
    }
    variable GL_PREVIOUSValue {}
    variable GL_PREVIOUSSet 0
    proc staticGet_GL_PREVIOUS {} {
        variable GL_PREVIOUSValue
        variable GL_PREVIOUSSet
        if {!$GL_PREVIOUSSet} {
            set GL_PREVIOUSSet 1
            set GL_PREVIOUSValue 34168
        }
        return $GL_PREVIOUSValue
    }
    proc staticSet_GL_PREVIOUS {value} {
        variable GL_PREVIOUSValue
        variable GL_PREVIOUSSet
        set GL_PREVIOUSSet 1
        set GL_PREVIOUSValue $value
    }
    variable GL_PRIMARY_COLORValue {}
    variable GL_PRIMARY_COLORSet 0
    proc staticGet_GL_PRIMARY_COLOR {} {
        variable GL_PRIMARY_COLORValue
        variable GL_PRIMARY_COLORSet
        if {!$GL_PRIMARY_COLORSet} {
            set GL_PRIMARY_COLORSet 1
            set GL_PRIMARY_COLORValue 34167
        }
        return $GL_PRIMARY_COLORValue
    }
    proc staticSet_GL_PRIMARY_COLOR {value} {
        variable GL_PRIMARY_COLORValue
        variable GL_PRIMARY_COLORSet
        set GL_PRIMARY_COLORSet 1
        set GL_PRIMARY_COLORValue $value
    }
    variable GL_PROJECTION_MATRIXValue {}
    variable GL_PROJECTION_MATRIXSet 0
    proc staticGet_GL_PROJECTION_MATRIX {} {
        variable GL_PROJECTION_MATRIXValue
        variable GL_PROJECTION_MATRIXSet
        if {!$GL_PROJECTION_MATRIXSet} {
            set GL_PROJECTION_MATRIXSet 1
            set GL_PROJECTION_MATRIXValue 2983
        }
        return $GL_PROJECTION_MATRIXValue
    }
    proc staticSet_GL_PROJECTION_MATRIX {value} {
        variable GL_PROJECTION_MATRIXValue
        variable GL_PROJECTION_MATRIXSet
        set GL_PROJECTION_MATRIXSet 1
        set GL_PROJECTION_MATRIXValue $value
    }
    variable GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue {}
    variable GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet 0
    proc staticGet_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES {} {
        variable GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue
        variable GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet
        if {!$GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet} {
            set GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet 1
            set GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue 35214
        }
        return $GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue
    }
    proc staticSet_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES {value} {
        variable GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue
        variable GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet
        set GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet 1
        set GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue $value
    }
    variable GL_PROJECTION_STACK_DEPTHValue {}
    variable GL_PROJECTION_STACK_DEPTHSet 0
    proc staticGet_GL_PROJECTION_STACK_DEPTH {} {
        variable GL_PROJECTION_STACK_DEPTHValue
        variable GL_PROJECTION_STACK_DEPTHSet
        if {!$GL_PROJECTION_STACK_DEPTHSet} {
            set GL_PROJECTION_STACK_DEPTHSet 1
            set GL_PROJECTION_STACK_DEPTHValue 2980
        }
        return $GL_PROJECTION_STACK_DEPTHValue
    }
    proc staticSet_GL_PROJECTION_STACK_DEPTH {value} {
        variable GL_PROJECTION_STACK_DEPTHValue
        variable GL_PROJECTION_STACK_DEPTHSet
        set GL_PROJECTION_STACK_DEPTHSet 1
        set GL_PROJECTION_STACK_DEPTHValue $value
    }
    variable GL_RGB_SCALEValue {}
    variable GL_RGB_SCALESet 0
    proc staticGet_GL_RGB_SCALE {} {
        variable GL_RGB_SCALEValue
        variable GL_RGB_SCALESet
        if {!$GL_RGB_SCALESet} {
            set GL_RGB_SCALESet 1
            set GL_RGB_SCALEValue 34163
        }
        return $GL_RGB_SCALEValue
    }
    proc staticSet_GL_RGB_SCALE {value} {
        variable GL_RGB_SCALEValue
        variable GL_RGB_SCALESet
        set GL_RGB_SCALESet 1
        set GL_RGB_SCALEValue $value
    }
    variable GL_SAMPLE_BUFFERSValue {}
    variable GL_SAMPLE_BUFFERSSet 0
    proc staticGet_GL_SAMPLE_BUFFERS {} {
        variable GL_SAMPLE_BUFFERSValue
        variable GL_SAMPLE_BUFFERSSet
        if {!$GL_SAMPLE_BUFFERSSet} {
            set GL_SAMPLE_BUFFERSSet 1
            set GL_SAMPLE_BUFFERSValue 32936
        }
        return $GL_SAMPLE_BUFFERSValue
    }
    proc staticSet_GL_SAMPLE_BUFFERS {value} {
        variable GL_SAMPLE_BUFFERSValue
        variable GL_SAMPLE_BUFFERSSet
        set GL_SAMPLE_BUFFERSSet 1
        set GL_SAMPLE_BUFFERSValue $value
    }
    variable GL_SAMPLE_COVERAGE_INVERTValue {}
    variable GL_SAMPLE_COVERAGE_INVERTSet 0
    proc staticGet_GL_SAMPLE_COVERAGE_INVERT {} {
        variable GL_SAMPLE_COVERAGE_INVERTValue
        variable GL_SAMPLE_COVERAGE_INVERTSet
        if {!$GL_SAMPLE_COVERAGE_INVERTSet} {
            set GL_SAMPLE_COVERAGE_INVERTSet 1
            set GL_SAMPLE_COVERAGE_INVERTValue 32939
        }
        return $GL_SAMPLE_COVERAGE_INVERTValue
    }
    proc staticSet_GL_SAMPLE_COVERAGE_INVERT {value} {
        variable GL_SAMPLE_COVERAGE_INVERTValue
        variable GL_SAMPLE_COVERAGE_INVERTSet
        set GL_SAMPLE_COVERAGE_INVERTSet 1
        set GL_SAMPLE_COVERAGE_INVERTValue $value
    }
    variable GL_SAMPLE_COVERAGE_VALUEValue {}
    variable GL_SAMPLE_COVERAGE_VALUESet 0
    proc staticGet_GL_SAMPLE_COVERAGE_VALUE {} {
        variable GL_SAMPLE_COVERAGE_VALUEValue
        variable GL_SAMPLE_COVERAGE_VALUESet
        if {!$GL_SAMPLE_COVERAGE_VALUESet} {
            set GL_SAMPLE_COVERAGE_VALUESet 1
            set GL_SAMPLE_COVERAGE_VALUEValue 32938
        }
        return $GL_SAMPLE_COVERAGE_VALUEValue
    }
    proc staticSet_GL_SAMPLE_COVERAGE_VALUE {value} {
        variable GL_SAMPLE_COVERAGE_VALUEValue
        variable GL_SAMPLE_COVERAGE_VALUESet
        set GL_SAMPLE_COVERAGE_VALUESet 1
        set GL_SAMPLE_COVERAGE_VALUEValue $value
    }
    variable GL_SAMPLESValue {}
    variable GL_SAMPLESSet 0
    proc staticGet_GL_SAMPLES {} {
        variable GL_SAMPLESValue
        variable GL_SAMPLESSet
        if {!$GL_SAMPLESSet} {
            set GL_SAMPLESSet 1
            set GL_SAMPLESValue 32937
        }
        return $GL_SAMPLESValue
    }
    proc staticSet_GL_SAMPLES {value} {
        variable GL_SAMPLESValue
        variable GL_SAMPLESSet
        set GL_SAMPLESSet 1
        set GL_SAMPLESValue $value
    }
    variable GL_SCISSOR_BOXValue {}
    variable GL_SCISSOR_BOXSet 0
    proc staticGet_GL_SCISSOR_BOX {} {
        variable GL_SCISSOR_BOXValue
        variable GL_SCISSOR_BOXSet
        if {!$GL_SCISSOR_BOXSet} {
            set GL_SCISSOR_BOXSet 1
            set GL_SCISSOR_BOXValue 3088
        }
        return $GL_SCISSOR_BOXValue
    }
    proc staticSet_GL_SCISSOR_BOX {value} {
        variable GL_SCISSOR_BOXValue
        variable GL_SCISSOR_BOXSet
        set GL_SCISSOR_BOXSet 1
        set GL_SCISSOR_BOXValue $value
    }
    variable GL_SHADE_MODELValue {}
    variable GL_SHADE_MODELSet 0
    proc staticGet_GL_SHADE_MODEL {} {
        variable GL_SHADE_MODELValue
        variable GL_SHADE_MODELSet
        if {!$GL_SHADE_MODELSet} {
            set GL_SHADE_MODELSet 1
            set GL_SHADE_MODELValue 2900
        }
        return $GL_SHADE_MODELValue
    }
    proc staticSet_GL_SHADE_MODEL {value} {
        variable GL_SHADE_MODELValue
        variable GL_SHADE_MODELSet
        set GL_SHADE_MODELSet 1
        set GL_SHADE_MODELValue $value
    }
    variable GL_SRC0_ALPHAValue {}
    variable GL_SRC0_ALPHASet 0
    proc staticGet_GL_SRC0_ALPHA {} {
        variable GL_SRC0_ALPHAValue
        variable GL_SRC0_ALPHASet
        if {!$GL_SRC0_ALPHASet} {
            set GL_SRC0_ALPHASet 1
            set GL_SRC0_ALPHAValue 34184
        }
        return $GL_SRC0_ALPHAValue
    }
    proc staticSet_GL_SRC0_ALPHA {value} {
        variable GL_SRC0_ALPHAValue
        variable GL_SRC0_ALPHASet
        set GL_SRC0_ALPHASet 1
        set GL_SRC0_ALPHAValue $value
    }
    variable GL_SRC0_RGBValue {}
    variable GL_SRC0_RGBSet 0
    proc staticGet_GL_SRC0_RGB {} {
        variable GL_SRC0_RGBValue
        variable GL_SRC0_RGBSet
        if {!$GL_SRC0_RGBSet} {
            set GL_SRC0_RGBSet 1
            set GL_SRC0_RGBValue 34176
        }
        return $GL_SRC0_RGBValue
    }
    proc staticSet_GL_SRC0_RGB {value} {
        variable GL_SRC0_RGBValue
        variable GL_SRC0_RGBSet
        set GL_SRC0_RGBSet 1
        set GL_SRC0_RGBValue $value
    }
    variable GL_SRC1_ALPHAValue {}
    variable GL_SRC1_ALPHASet 0
    proc staticGet_GL_SRC1_ALPHA {} {
        variable GL_SRC1_ALPHAValue
        variable GL_SRC1_ALPHASet
        if {!$GL_SRC1_ALPHASet} {
            set GL_SRC1_ALPHASet 1
            set GL_SRC1_ALPHAValue 34185
        }
        return $GL_SRC1_ALPHAValue
    }
    proc staticSet_GL_SRC1_ALPHA {value} {
        variable GL_SRC1_ALPHAValue
        variable GL_SRC1_ALPHASet
        set GL_SRC1_ALPHASet 1
        set GL_SRC1_ALPHAValue $value
    }
    variable GL_SRC1_RGBValue {}
    variable GL_SRC1_RGBSet 0
    proc staticGet_GL_SRC1_RGB {} {
        variable GL_SRC1_RGBValue
        variable GL_SRC1_RGBSet
        if {!$GL_SRC1_RGBSet} {
            set GL_SRC1_RGBSet 1
            set GL_SRC1_RGBValue 34177
        }
        return $GL_SRC1_RGBValue
    }
    proc staticSet_GL_SRC1_RGB {value} {
        variable GL_SRC1_RGBValue
        variable GL_SRC1_RGBSet
        set GL_SRC1_RGBSet 1
        set GL_SRC1_RGBValue $value
    }
    variable GL_SRC2_ALPHAValue {}
    variable GL_SRC2_ALPHASet 0
    proc staticGet_GL_SRC2_ALPHA {} {
        variable GL_SRC2_ALPHAValue
        variable GL_SRC2_ALPHASet
        if {!$GL_SRC2_ALPHASet} {
            set GL_SRC2_ALPHASet 1
            set GL_SRC2_ALPHAValue 34186
        }
        return $GL_SRC2_ALPHAValue
    }
    proc staticSet_GL_SRC2_ALPHA {value} {
        variable GL_SRC2_ALPHAValue
        variable GL_SRC2_ALPHASet
        set GL_SRC2_ALPHASet 1
        set GL_SRC2_ALPHAValue $value
    }
    variable GL_SRC2_RGBValue {}
    variable GL_SRC2_RGBSet 0
    proc staticGet_GL_SRC2_RGB {} {
        variable GL_SRC2_RGBValue
        variable GL_SRC2_RGBSet
        if {!$GL_SRC2_RGBSet} {
            set GL_SRC2_RGBSet 1
            set GL_SRC2_RGBValue 34178
        }
        return $GL_SRC2_RGBValue
    }
    proc staticSet_GL_SRC2_RGB {value} {
        variable GL_SRC2_RGBValue
        variable GL_SRC2_RGBSet
        set GL_SRC2_RGBSet 1
        set GL_SRC2_RGBValue $value
    }
    variable GL_STATIC_DRAWValue {}
    variable GL_STATIC_DRAWSet 0
    proc staticGet_GL_STATIC_DRAW {} {
        variable GL_STATIC_DRAWValue
        variable GL_STATIC_DRAWSet
        if {!$GL_STATIC_DRAWSet} {
            set GL_STATIC_DRAWSet 1
            set GL_STATIC_DRAWValue 35044
        }
        return $GL_STATIC_DRAWValue
    }
    proc staticSet_GL_STATIC_DRAW {value} {
        variable GL_STATIC_DRAWValue
        variable GL_STATIC_DRAWSet
        set GL_STATIC_DRAWSet 1
        set GL_STATIC_DRAWValue $value
    }
    variable GL_STENCIL_CLEAR_VALUEValue {}
    variable GL_STENCIL_CLEAR_VALUESet 0
    proc staticGet_GL_STENCIL_CLEAR_VALUE {} {
        variable GL_STENCIL_CLEAR_VALUEValue
        variable GL_STENCIL_CLEAR_VALUESet
        if {!$GL_STENCIL_CLEAR_VALUESet} {
            set GL_STENCIL_CLEAR_VALUESet 1
            set GL_STENCIL_CLEAR_VALUEValue 2961
        }
        return $GL_STENCIL_CLEAR_VALUEValue
    }
    proc staticSet_GL_STENCIL_CLEAR_VALUE {value} {
        variable GL_STENCIL_CLEAR_VALUEValue
        variable GL_STENCIL_CLEAR_VALUESet
        set GL_STENCIL_CLEAR_VALUESet 1
        set GL_STENCIL_CLEAR_VALUEValue $value
    }
    variable GL_STENCIL_FAILValue {}
    variable GL_STENCIL_FAILSet 0
    proc staticGet_GL_STENCIL_FAIL {} {
        variable GL_STENCIL_FAILValue
        variable GL_STENCIL_FAILSet
        if {!$GL_STENCIL_FAILSet} {
            set GL_STENCIL_FAILSet 1
            set GL_STENCIL_FAILValue 2964
        }
        return $GL_STENCIL_FAILValue
    }
    proc staticSet_GL_STENCIL_FAIL {value} {
        variable GL_STENCIL_FAILValue
        variable GL_STENCIL_FAILSet
        set GL_STENCIL_FAILSet 1
        set GL_STENCIL_FAILValue $value
    }
    variable GL_STENCIL_FUNCValue {}
    variable GL_STENCIL_FUNCSet 0
    proc staticGet_GL_STENCIL_FUNC {} {
        variable GL_STENCIL_FUNCValue
        variable GL_STENCIL_FUNCSet
        if {!$GL_STENCIL_FUNCSet} {
            set GL_STENCIL_FUNCSet 1
            set GL_STENCIL_FUNCValue 2962
        }
        return $GL_STENCIL_FUNCValue
    }
    proc staticSet_GL_STENCIL_FUNC {value} {
        variable GL_STENCIL_FUNCValue
        variable GL_STENCIL_FUNCSet
        set GL_STENCIL_FUNCSet 1
        set GL_STENCIL_FUNCValue $value
    }
    variable GL_STENCIL_PASS_DEPTH_FAILValue {}
    variable GL_STENCIL_PASS_DEPTH_FAILSet 0
    proc staticGet_GL_STENCIL_PASS_DEPTH_FAIL {} {
        variable GL_STENCIL_PASS_DEPTH_FAILValue
        variable GL_STENCIL_PASS_DEPTH_FAILSet
        if {!$GL_STENCIL_PASS_DEPTH_FAILSet} {
            set GL_STENCIL_PASS_DEPTH_FAILSet 1
            set GL_STENCIL_PASS_DEPTH_FAILValue 2965
        }
        return $GL_STENCIL_PASS_DEPTH_FAILValue
    }
    proc staticSet_GL_STENCIL_PASS_DEPTH_FAIL {value} {
        variable GL_STENCIL_PASS_DEPTH_FAILValue
        variable GL_STENCIL_PASS_DEPTH_FAILSet
        set GL_STENCIL_PASS_DEPTH_FAILSet 1
        set GL_STENCIL_PASS_DEPTH_FAILValue $value
    }
    variable GL_STENCIL_PASS_DEPTH_PASSValue {}
    variable GL_STENCIL_PASS_DEPTH_PASSSet 0
    proc staticGet_GL_STENCIL_PASS_DEPTH_PASS {} {
        variable GL_STENCIL_PASS_DEPTH_PASSValue
        variable GL_STENCIL_PASS_DEPTH_PASSSet
        if {!$GL_STENCIL_PASS_DEPTH_PASSSet} {
            set GL_STENCIL_PASS_DEPTH_PASSSet 1
            set GL_STENCIL_PASS_DEPTH_PASSValue 2966
        }
        return $GL_STENCIL_PASS_DEPTH_PASSValue
    }
    proc staticSet_GL_STENCIL_PASS_DEPTH_PASS {value} {
        variable GL_STENCIL_PASS_DEPTH_PASSValue
        variable GL_STENCIL_PASS_DEPTH_PASSSet
        set GL_STENCIL_PASS_DEPTH_PASSSet 1
        set GL_STENCIL_PASS_DEPTH_PASSValue $value
    }
    variable GL_STENCIL_REFValue {}
    variable GL_STENCIL_REFSet 0
    proc staticGet_GL_STENCIL_REF {} {
        variable GL_STENCIL_REFValue
        variable GL_STENCIL_REFSet
        if {!$GL_STENCIL_REFSet} {
            set GL_STENCIL_REFSet 1
            set GL_STENCIL_REFValue 2967
        }
        return $GL_STENCIL_REFValue
    }
    proc staticSet_GL_STENCIL_REF {value} {
        variable GL_STENCIL_REFValue
        variable GL_STENCIL_REFSet
        set GL_STENCIL_REFSet 1
        set GL_STENCIL_REFValue $value
    }
    variable GL_STENCIL_VALUE_MASKValue {}
    variable GL_STENCIL_VALUE_MASKSet 0
    proc staticGet_GL_STENCIL_VALUE_MASK {} {
        variable GL_STENCIL_VALUE_MASKValue
        variable GL_STENCIL_VALUE_MASKSet
        if {!$GL_STENCIL_VALUE_MASKSet} {
            set GL_STENCIL_VALUE_MASKSet 1
            set GL_STENCIL_VALUE_MASKValue 2963
        }
        return $GL_STENCIL_VALUE_MASKValue
    }
    proc staticSet_GL_STENCIL_VALUE_MASK {value} {
        variable GL_STENCIL_VALUE_MASKValue
        variable GL_STENCIL_VALUE_MASKSet
        set GL_STENCIL_VALUE_MASKSet 1
        set GL_STENCIL_VALUE_MASKValue $value
    }
    variable GL_STENCIL_WRITEMASKValue {}
    variable GL_STENCIL_WRITEMASKSet 0
    proc staticGet_GL_STENCIL_WRITEMASK {} {
        variable GL_STENCIL_WRITEMASKValue
        variable GL_STENCIL_WRITEMASKSet
        if {!$GL_STENCIL_WRITEMASKSet} {
            set GL_STENCIL_WRITEMASKSet 1
            set GL_STENCIL_WRITEMASKValue 2968
        }
        return $GL_STENCIL_WRITEMASKValue
    }
    proc staticSet_GL_STENCIL_WRITEMASK {value} {
        variable GL_STENCIL_WRITEMASKValue
        variable GL_STENCIL_WRITEMASKSet
        set GL_STENCIL_WRITEMASKSet 1
        set GL_STENCIL_WRITEMASKValue $value
    }
    variable GL_SUBTRACTValue {}
    variable GL_SUBTRACTSet 0
    proc staticGet_GL_SUBTRACT {} {
        variable GL_SUBTRACTValue
        variable GL_SUBTRACTSet
        if {!$GL_SUBTRACTSet} {
            set GL_SUBTRACTSet 1
            set GL_SUBTRACTValue 34023
        }
        return $GL_SUBTRACTValue
    }
    proc staticSet_GL_SUBTRACT {value} {
        variable GL_SUBTRACTValue
        variable GL_SUBTRACTSet
        set GL_SUBTRACTSet 1
        set GL_SUBTRACTValue $value
    }
    variable GL_TEXTURE_BINDING_2DValue {}
    variable GL_TEXTURE_BINDING_2DSet 0
    proc staticGet_GL_TEXTURE_BINDING_2D {} {
        variable GL_TEXTURE_BINDING_2DValue
        variable GL_TEXTURE_BINDING_2DSet
        if {!$GL_TEXTURE_BINDING_2DSet} {
            set GL_TEXTURE_BINDING_2DSet 1
            set GL_TEXTURE_BINDING_2DValue 32873
        }
        return $GL_TEXTURE_BINDING_2DValue
    }
    proc staticSet_GL_TEXTURE_BINDING_2D {value} {
        variable GL_TEXTURE_BINDING_2DValue
        variable GL_TEXTURE_BINDING_2DSet
        set GL_TEXTURE_BINDING_2DSet 1
        set GL_TEXTURE_BINDING_2DValue $value
    }
    variable GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue {}
    variable GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet 0
    proc staticGet_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING {} {
        variable GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue
        variable GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet
        if {!$GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet} {
            set GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet 1
            set GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue 34970
        }
        return $GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue
    }
    proc staticSet_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING {value} {
        variable GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue
        variable GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet
        set GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet 1
        set GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue $value
    }
    variable GL_TEXTURE_COORD_ARRAY_POINTERValue {}
    variable GL_TEXTURE_COORD_ARRAY_POINTERSet 0
    proc staticGet_GL_TEXTURE_COORD_ARRAY_POINTER {} {
        variable GL_TEXTURE_COORD_ARRAY_POINTERValue
        variable GL_TEXTURE_COORD_ARRAY_POINTERSet
        if {!$GL_TEXTURE_COORD_ARRAY_POINTERSet} {
            set GL_TEXTURE_COORD_ARRAY_POINTERSet 1
            set GL_TEXTURE_COORD_ARRAY_POINTERValue 32914
        }
        return $GL_TEXTURE_COORD_ARRAY_POINTERValue
    }
    proc staticSet_GL_TEXTURE_COORD_ARRAY_POINTER {value} {
        variable GL_TEXTURE_COORD_ARRAY_POINTERValue
        variable GL_TEXTURE_COORD_ARRAY_POINTERSet
        set GL_TEXTURE_COORD_ARRAY_POINTERSet 1
        set GL_TEXTURE_COORD_ARRAY_POINTERValue $value
    }
    variable GL_TEXTURE_COORD_ARRAY_SIZEValue {}
    variable GL_TEXTURE_COORD_ARRAY_SIZESet 0
    proc staticGet_GL_TEXTURE_COORD_ARRAY_SIZE {} {
        variable GL_TEXTURE_COORD_ARRAY_SIZEValue
        variable GL_TEXTURE_COORD_ARRAY_SIZESet
        if {!$GL_TEXTURE_COORD_ARRAY_SIZESet} {
            set GL_TEXTURE_COORD_ARRAY_SIZESet 1
            set GL_TEXTURE_COORD_ARRAY_SIZEValue 32904
        }
        return $GL_TEXTURE_COORD_ARRAY_SIZEValue
    }
    proc staticSet_GL_TEXTURE_COORD_ARRAY_SIZE {value} {
        variable GL_TEXTURE_COORD_ARRAY_SIZEValue
        variable GL_TEXTURE_COORD_ARRAY_SIZESet
        set GL_TEXTURE_COORD_ARRAY_SIZESet 1
        set GL_TEXTURE_COORD_ARRAY_SIZEValue $value
    }
    variable GL_TEXTURE_COORD_ARRAY_STRIDEValue {}
    variable GL_TEXTURE_COORD_ARRAY_STRIDESet 0
    proc staticGet_GL_TEXTURE_COORD_ARRAY_STRIDE {} {
        variable GL_TEXTURE_COORD_ARRAY_STRIDEValue
        variable GL_TEXTURE_COORD_ARRAY_STRIDESet
        if {!$GL_TEXTURE_COORD_ARRAY_STRIDESet} {
            set GL_TEXTURE_COORD_ARRAY_STRIDESet 1
            set GL_TEXTURE_COORD_ARRAY_STRIDEValue 32906
        }
        return $GL_TEXTURE_COORD_ARRAY_STRIDEValue
    }
    proc staticSet_GL_TEXTURE_COORD_ARRAY_STRIDE {value} {
        variable GL_TEXTURE_COORD_ARRAY_STRIDEValue
        variable GL_TEXTURE_COORD_ARRAY_STRIDESet
        set GL_TEXTURE_COORD_ARRAY_STRIDESet 1
        set GL_TEXTURE_COORD_ARRAY_STRIDEValue $value
    }
    variable GL_TEXTURE_COORD_ARRAY_TYPEValue {}
    variable GL_TEXTURE_COORD_ARRAY_TYPESet 0
    proc staticGet_GL_TEXTURE_COORD_ARRAY_TYPE {} {
        variable GL_TEXTURE_COORD_ARRAY_TYPEValue
        variable GL_TEXTURE_COORD_ARRAY_TYPESet
        if {!$GL_TEXTURE_COORD_ARRAY_TYPESet} {
            set GL_TEXTURE_COORD_ARRAY_TYPESet 1
            set GL_TEXTURE_COORD_ARRAY_TYPEValue 32905
        }
        return $GL_TEXTURE_COORD_ARRAY_TYPEValue
    }
    proc staticSet_GL_TEXTURE_COORD_ARRAY_TYPE {value} {
        variable GL_TEXTURE_COORD_ARRAY_TYPEValue
        variable GL_TEXTURE_COORD_ARRAY_TYPESet
        set GL_TEXTURE_COORD_ARRAY_TYPESet 1
        set GL_TEXTURE_COORD_ARRAY_TYPEValue $value
    }
    variable GL_TEXTURE_MATRIXValue {}
    variable GL_TEXTURE_MATRIXSet 0
    proc staticGet_GL_TEXTURE_MATRIX {} {
        variable GL_TEXTURE_MATRIXValue
        variable GL_TEXTURE_MATRIXSet
        if {!$GL_TEXTURE_MATRIXSet} {
            set GL_TEXTURE_MATRIXSet 1
            set GL_TEXTURE_MATRIXValue 2984
        }
        return $GL_TEXTURE_MATRIXValue
    }
    proc staticSet_GL_TEXTURE_MATRIX {value} {
        variable GL_TEXTURE_MATRIXValue
        variable GL_TEXTURE_MATRIXSet
        set GL_TEXTURE_MATRIXSet 1
        set GL_TEXTURE_MATRIXValue $value
    }
    variable GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue {}
    variable GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet 0
    proc staticGet_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES {} {
        variable GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue
        variable GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet
        if {!$GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet} {
            set GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet 1
            set GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue 35215
        }
        return $GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue
    }
    proc staticSet_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES {value} {
        variable GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue
        variable GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet
        set GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet 1
        set GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue $value
    }
    variable GL_TEXTURE_STACK_DEPTHValue {}
    variable GL_TEXTURE_STACK_DEPTHSet 0
    proc staticGet_GL_TEXTURE_STACK_DEPTH {} {
        variable GL_TEXTURE_STACK_DEPTHValue
        variable GL_TEXTURE_STACK_DEPTHSet
        if {!$GL_TEXTURE_STACK_DEPTHSet} {
            set GL_TEXTURE_STACK_DEPTHSet 1
            set GL_TEXTURE_STACK_DEPTHValue 2981
        }
        return $GL_TEXTURE_STACK_DEPTHValue
    }
    proc staticSet_GL_TEXTURE_STACK_DEPTH {value} {
        variable GL_TEXTURE_STACK_DEPTHValue
        variable GL_TEXTURE_STACK_DEPTHSet
        set GL_TEXTURE_STACK_DEPTHSet 1
        set GL_TEXTURE_STACK_DEPTHValue $value
    }
    variable GL_VERTEX_ARRAY_BUFFER_BINDINGValue {}
    variable GL_VERTEX_ARRAY_BUFFER_BINDINGSet 0
    proc staticGet_GL_VERTEX_ARRAY_BUFFER_BINDING {} {
        variable GL_VERTEX_ARRAY_BUFFER_BINDINGValue
        variable GL_VERTEX_ARRAY_BUFFER_BINDINGSet
        if {!$GL_VERTEX_ARRAY_BUFFER_BINDINGSet} {
            set GL_VERTEX_ARRAY_BUFFER_BINDINGSet 1
            set GL_VERTEX_ARRAY_BUFFER_BINDINGValue 34966
        }
        return $GL_VERTEX_ARRAY_BUFFER_BINDINGValue
    }
    proc staticSet_GL_VERTEX_ARRAY_BUFFER_BINDING {value} {
        variable GL_VERTEX_ARRAY_BUFFER_BINDINGValue
        variable GL_VERTEX_ARRAY_BUFFER_BINDINGSet
        set GL_VERTEX_ARRAY_BUFFER_BINDINGSet 1
        set GL_VERTEX_ARRAY_BUFFER_BINDINGValue $value
    }
    variable GL_VERTEX_ARRAY_POINTERValue {}
    variable GL_VERTEX_ARRAY_POINTERSet 0
    proc staticGet_GL_VERTEX_ARRAY_POINTER {} {
        variable GL_VERTEX_ARRAY_POINTERValue
        variable GL_VERTEX_ARRAY_POINTERSet
        if {!$GL_VERTEX_ARRAY_POINTERSet} {
            set GL_VERTEX_ARRAY_POINTERSet 1
            set GL_VERTEX_ARRAY_POINTERValue 32910
        }
        return $GL_VERTEX_ARRAY_POINTERValue
    }
    proc staticSet_GL_VERTEX_ARRAY_POINTER {value} {
        variable GL_VERTEX_ARRAY_POINTERValue
        variable GL_VERTEX_ARRAY_POINTERSet
        set GL_VERTEX_ARRAY_POINTERSet 1
        set GL_VERTEX_ARRAY_POINTERValue $value
    }
    variable GL_VERTEX_ARRAY_SIZEValue {}
    variable GL_VERTEX_ARRAY_SIZESet 0
    proc staticGet_GL_VERTEX_ARRAY_SIZE {} {
        variable GL_VERTEX_ARRAY_SIZEValue
        variable GL_VERTEX_ARRAY_SIZESet
        if {!$GL_VERTEX_ARRAY_SIZESet} {
            set GL_VERTEX_ARRAY_SIZESet 1
            set GL_VERTEX_ARRAY_SIZEValue 32890
        }
        return $GL_VERTEX_ARRAY_SIZEValue
    }
    proc staticSet_GL_VERTEX_ARRAY_SIZE {value} {
        variable GL_VERTEX_ARRAY_SIZEValue
        variable GL_VERTEX_ARRAY_SIZESet
        set GL_VERTEX_ARRAY_SIZESet 1
        set GL_VERTEX_ARRAY_SIZEValue $value
    }
    variable GL_VERTEX_ARRAY_STRIDEValue {}
    variable GL_VERTEX_ARRAY_STRIDESet 0
    proc staticGet_GL_VERTEX_ARRAY_STRIDE {} {
        variable GL_VERTEX_ARRAY_STRIDEValue
        variable GL_VERTEX_ARRAY_STRIDESet
        if {!$GL_VERTEX_ARRAY_STRIDESet} {
            set GL_VERTEX_ARRAY_STRIDESet 1
            set GL_VERTEX_ARRAY_STRIDEValue 32892
        }
        return $GL_VERTEX_ARRAY_STRIDEValue
    }
    proc staticSet_GL_VERTEX_ARRAY_STRIDE {value} {
        variable GL_VERTEX_ARRAY_STRIDEValue
        variable GL_VERTEX_ARRAY_STRIDESet
        set GL_VERTEX_ARRAY_STRIDESet 1
        set GL_VERTEX_ARRAY_STRIDEValue $value
    }
    variable GL_VERTEX_ARRAY_TYPEValue {}
    variable GL_VERTEX_ARRAY_TYPESet 0
    proc staticGet_GL_VERTEX_ARRAY_TYPE {} {
        variable GL_VERTEX_ARRAY_TYPEValue
        variable GL_VERTEX_ARRAY_TYPESet
        if {!$GL_VERTEX_ARRAY_TYPESet} {
            set GL_VERTEX_ARRAY_TYPESet 1
            set GL_VERTEX_ARRAY_TYPEValue 32891
        }
        return $GL_VERTEX_ARRAY_TYPEValue
    }
    proc staticSet_GL_VERTEX_ARRAY_TYPE {value} {
        variable GL_VERTEX_ARRAY_TYPEValue
        variable GL_VERTEX_ARRAY_TYPESet
        set GL_VERTEX_ARRAY_TYPESet 1
        set GL_VERTEX_ARRAY_TYPEValue $value
    }
    variable GL_VIEWPORTValue {}
    variable GL_VIEWPORTSet 0
    proc staticGet_GL_VIEWPORT {} {
        variable GL_VIEWPORTValue
        variable GL_VIEWPORTSet
        if {!$GL_VIEWPORTSet} {
            set GL_VIEWPORTSet 1
            set GL_VIEWPORTValue 2978
        }
        return $GL_VIEWPORTValue
    }
    proc staticSet_GL_VIEWPORT {value} {
        variable GL_VIEWPORTValue
        variable GL_VIEWPORTSet
        set GL_VIEWPORTSet 1
        set GL_VIEWPORTValue $value
    }
    variable GL_WRITE_ONLYValue {}
    variable GL_WRITE_ONLYSet 0
    proc staticGet_GL_WRITE_ONLY {} {
        variable GL_WRITE_ONLYValue
        variable GL_WRITE_ONLYSet
        if {!$GL_WRITE_ONLYSet} {
            set GL_WRITE_ONLYSet 1
            set GL_WRITE_ONLYValue 35001
        }
        return $GL_WRITE_ONLYValue
    }
    proc staticSet_GL_WRITE_ONLY {value} {
        variable GL_WRITE_ONLYValue
        variable GL_WRITE_ONLYSet
        set GL_WRITE_ONLYSet 1
        set GL_WRITE_ONLYValue $value
    }
}


