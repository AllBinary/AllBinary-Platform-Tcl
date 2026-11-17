# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.device

oo::class create ::NullGL10 {
    superclass ::JObject
}

oo::define ::NullGL10 {
    method initFields_NullGL10 {} {
        return
    }

    constructor {} {
        next
        my initFields_NullGL10
    }
    

    method glActiveTexture {texture} {
        return
    }
    

    method glAlphaFunc {func ref} {
        return
    }
    

    method glBindTexture {target texture} {
        return
    }
    

    method glBlendFunc {sfactor dfactor} {
        return
    }
    

    method glClear {mask} {
        return
    }
    

    method glClearColor {red green blue alpha} {
        return
    }
    

    method glClearDepthf {depth} {
        return
    }
    

    method glClearStencil {s} {
        return
    }
    

    method glClientActiveTexture {texture} {
        return
    }
    

    method glColor4f {red green blue alpha} {
        return
    }
    

    method glColorMask {red green blue alpha} {
        return
    }
    

    method glColorPointer {size type stride pointer} {
        return
    }
    

    method glCompressedTexImage2D {target level internalformat width height border imageSize data} {
        return
    }
    

    method glCompressedTexSubImage2D {target level xoffset yoffset width height format imageSize data} {
        return
    }
    

    method glCopyTexImage2D {target level internalformat x y width height border} {
        return
    }
    

    method glCopyTexSubImage2D {target level xoffset yoffset x y width height} {
        return
    }
    

    method glCullFace {mode} {
        return
    }
    

    method glDeleteTextures {n textures offset} {
        return
    }
    

    method glDeleteTextures {n textures} {
        return
    }
    

    method glDepthFunc {func} {
        return
    }
    

    method glDepthMask {flag} {
        return
    }
    

    method glDepthRangef {zNear zFar} {
        return
    }
    

    method glDisable {cap} {
        return
    }
    

    method glDisableClientState {array} {
        return
    }
    

    method glDrawArrays {mode first count} {
        return
    }
    

    method glDrawElements {mode count type indices} {
        return
    }
    

    method glEnable {cap} {
        return
    }
    

    method glEnableClientState {array} {
        return
    }
    

    method glFinish {} {
        return
    }
    

    method glFlush {} {
        return
    }
    

    method glFogf {pname param} {
        return
    }
    

    method glFogfv {pname params offset} {
        return
    }
    

    method glFogfv {pname params} {
        return
    }
    

    method glFrontFace {mode} {
        return
    }
    

    method glFrustumf {left right bottom top zNear zFar} {
        return
    }
    

    method glGenTextures {n textures offset} {
        return
    }
    

    method glGenTextures {n textures} {
        return
    }
    

    method glGetError {} {
        return 0
    }
    

    method glGetIntegerv {pname params offset} {
        return
    }
    

    method glGetIntegerv {pname params} {
        return
    }
    

    method glGetString {name} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method glHint {target mode} {
        return
    }
    

    method glLightModelf {pname param} {
        return
    }
    

    method glLightModelfv {pname params offset} {
        return
    }
    

    method glLightModelfv {pname params} {
        return
    }
    

    method glLightf {light pname param} {
        return
    }
    

    method glLightfv {light pname params offset} {
        return
    }
    

    method glLightfv {light pname params} {
        return
    }
    

    method glLineWidth {width} {
        return
    }
    

    method glLoadIdentity {} {
        return
    }
    

    method glLoadMatrixf {m offset} {
        return
    }
    

    method glLoadMatrixf {m} {
        return
    }
    

    method glLogicOp {opcode} {
        return
    }
    

    method glMaterialf {face pname param} {
        return
    }
    

    method glMaterialfv {face pname params offset} {
        return
    }
    

    method glMaterialfv {face pname params} {
        return
    }
    

    method glMatrixMode {mode} {
        return
    }
    

    method glMultMatrixf {m offset} {
        return
    }
    

    method glMultMatrixf {m} {
        return
    }
    

    method glMultiTexCoord4f {target s t r q} {
        return
    }
    

    method glNormal3f {nx ny nz} {
        return
    }
    

    method glNormalPointer {type stride pointer} {
        return
    }
    

    method glOrthof {left right bottom top zNear zFar} {
        return
    }
    

    method glPixelStorei {pname param} {
        return
    }
    

    method glPointSize {size} {
        return
    }
    

    method glPolygonOffset {factor units} {
        return
    }
    

    method glPopMatrix {} {
        return
    }
    

    method glPushMatrix {} {
        return
    }
    

    method glReadPixels {x y width height format type pixels} {
        return
    }
    

    method glRotatef {angle x y z} {
        return
    }
    

    method glRotatex {angle x y z} {
        return
    }
    

    method glSampleCoverage {value invert} {
        return
    }
    

    method glScalef {x y z} {
        return
    }
    

    method glScalex {x y z} {
        return
    }
    

    method glScissor {x y width height} {
        return
    }
    

    method glShadeModel {mode} {
        return
    }
    

    method glStencilFunc {func ref mask} {
        return
    }
    

    method glStencilMask {mask} {
        return
    }
    

    method glStencilOp {fail zfail zpass} {
        return
    }
    

    method glTexCoordPointer {size type stride pointer} {
        return
    }
    

    method glTexEnvf {target pname param} {
        return
    }
    

    method glTexEnvfv {target pname params offset} {
        return
    }
    

    method glTexEnvfv {target pname params} {
        return
    }
    

    method glTexImage2D {target level internalformat width height border format type pixels} {
        return
    }
    

    method glTexParameterf {target pname param} {
        return
    }
    

    method glTexParameteri {target pname param} {
        return
    }
    

    method glTexSubImage2D {target level xoffset yoffset width height format type pixels} {
        return
    }
    

    method glTranslatef {x y z} {
        return
    }
    

    method glVertexPointer {size type stride pointer} {
        return
    }
    

    method glViewport {x y width height} {
        return
    }
    

    method glBegin {i} {
        return
    }
    

    method glEnd {} {
        return
    }
    

    method glVertex3f {f f2 f3} {
        return
    }
    

    method glPolygonMode {i i1} {
        return
    }
}

namespace eval ::NullGL10 {
    variable NULL_GL10Value {}
    variable NULL_GL10Set 0
    proc staticGet_NULL_GL10 {} {
        variable NULL_GL10Value
        variable NULL_GL10Set
        if {!$NULL_GL10Set} {
            set NULL_GL10Set 1
            set NULL_GL10Value [::NullGL10 new]
        }
        return $NULL_GL10Value
    }
    proc staticSet_NULL_GL10 {value} {
        variable NULL_GL10Value
        variable NULL_GL10Set
        set NULL_GL10Set 1
        set NULL_GL10Value $value
    }
}


