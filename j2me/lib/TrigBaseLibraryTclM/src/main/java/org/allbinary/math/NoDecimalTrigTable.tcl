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
# package org.allbinary.math

oo::class create ::NoDecimalTrigTable {
    superclass ::JObject
}

oo::define ::NoDecimalTrigTable {
    method initFields_NoDecimalTrigTable {} {
        my jset mathUtil {}
        my jset noDecimalSin {}
        my jset noDecimalCos {}
        my jset noDecimalTan {}
        my jset SCALE 0
        my jset mathUtil [::MathUtil::getInstance]
        
        
        
        my jset SCALE 10000
        return
    }
    
    

    constructor {} {
        next
        my initFields_NoDecimalTrigTable
        set TOTAL_ANGLE [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]]
        set MAX_VALUE ([::Integer::staticGet_MAX_VALUE])
        my jset noDecimalSin [jarray $TOTAL_ANGLE 0]
        my jset noDecimalCos [jarray $TOTAL_ANGLE 0]
        my jset noDecimalTan [jarray [jint [expr {$TOTAL_ANGLE + 1}]] 0]
        [my jget noDecimalSin] set 0 0
        [my jget noDecimalSin] set 1 174
        [my jget noDecimalSin] set 2 348
        [my jget noDecimalSin] set 3 523
        [my jget noDecimalSin] set 4 697
        [my jget noDecimalSin] set 5 871
        [my jget noDecimalSin] set 6 1045
        [my jget noDecimalSin] set 7 1218
        [my jget noDecimalSin] set 8 1391
        [my jget noDecimalSin] set 9 1564
        [my jget noDecimalSin] set 10 1736
        [my jget noDecimalSin] set 11 1908
        [my jget noDecimalSin] set 12 2079
        [my jget noDecimalSin] set 13 2249
        [my jget noDecimalSin] set 14 2419
        [my jget noDecimalSin] set 15 2588
        [my jget noDecimalSin] set 16 2756
        [my jget noDecimalSin] set 17 2923
        [my jget noDecimalSin] set 18 3090
        [my jget noDecimalSin] set 19 3255
        [my jget noDecimalSin] set 20 3420
        [my jget noDecimalSin] set 21 3583
        [my jget noDecimalSin] set 22 3746
        [my jget noDecimalSin] set 23 3907
        [my jget noDecimalSin] set 24 4067
        [my jget noDecimalSin] set 25 4226
        [my jget noDecimalSin] set 26 4383
        [my jget noDecimalSin] set 27 4539
        [my jget noDecimalSin] set 28 4694
        [my jget noDecimalSin] set 29 4848
        [my jget noDecimalSin] set 30 4999
        [my jget noDecimalSin] set 31 5150
        [my jget noDecimalSin] set 32 5299
        [my jget noDecimalSin] set 33 5446
        [my jget noDecimalSin] set 34 5591
        [my jget noDecimalSin] set 35 5735
        [my jget noDecimalSin] set 36 5877
        [my jget noDecimalSin] set 37 6018
        [my jget noDecimalSin] set 38 6156
        [my jget noDecimalSin] set 39 6293
        [my jget noDecimalSin] set 40 6427
        [my jget noDecimalSin] set 41 6560
        [my jget noDecimalSin] set 42 6691
        [my jget noDecimalSin] set 43 6819
        [my jget noDecimalSin] set 44 6946
        [my jget noDecimalSin] set 45 7071
        [my jget noDecimalSin] set 46 7193
        [my jget noDecimalSin] set 47 7313
        [my jget noDecimalSin] set 48 7431
        [my jget noDecimalSin] set 49 7547
        [my jget noDecimalSin] set 50 7660
        [my jget noDecimalSin] set 51 7771
        [my jget noDecimalSin] set 52 7880
        [my jget noDecimalSin] set 53 7986
        [my jget noDecimalSin] set 54 8090
        [my jget noDecimalSin] set 55 8191
        [my jget noDecimalSin] set 56 8290
        [my jget noDecimalSin] set 57 8386
        [my jget noDecimalSin] set 58 8480
        [my jget noDecimalSin] set 59 8571
        [my jget noDecimalSin] set 60 8660
        [my jget noDecimalSin] set 61 8746
        [my jget noDecimalSin] set 62 8829
        [my jget noDecimalSin] set 63 8910
        [my jget noDecimalSin] set 64 8987
        [my jget noDecimalSin] set 65 9063
        [my jget noDecimalSin] set 66 9135
        [my jget noDecimalSin] set 67 9205
        [my jget noDecimalSin] set 68 9271
        [my jget noDecimalSin] set 69 9335
        [my jget noDecimalSin] set 70 9396
        [my jget noDecimalSin] set 71 9455
        [my jget noDecimalSin] set 72 9510
        [my jget noDecimalSin] set 73 9563
        [my jget noDecimalSin] set 74 9612
        [my jget noDecimalSin] set 75 9659
        [my jget noDecimalSin] set 76 9702
        [my jget noDecimalSin] set 77 9743
        [my jget noDecimalSin] set 78 9781
        [my jget noDecimalSin] set 79 9816
        [my jget noDecimalSin] set 80 9848
        [my jget noDecimalSin] set 81 9876
        [my jget noDecimalSin] set 82 9902
        [my jget noDecimalSin] set 83 9925
        [my jget noDecimalSin] set 84 9945
        [my jget noDecimalSin] set 85 9961
        [my jget noDecimalSin] set 86 9975
        [my jget noDecimalSin] set 87 9986
        [my jget noDecimalSin] set 88 9993
        [my jget noDecimalSin] set 89 9998
        [my jget noDecimalSin] set 90 10000
        [my jget noDecimalSin] set 91 9998
        [my jget noDecimalSin] set 92 9993
        [my jget noDecimalSin] set 93 9986
        [my jget noDecimalSin] set 94 9975
        [my jget noDecimalSin] set 95 9961
        [my jget noDecimalSin] set 96 9945
        [my jget noDecimalSin] set 97 9925
        [my jget noDecimalSin] set 98 9902
        [my jget noDecimalSin] set 99 9876
        [my jget noDecimalSin] set 100 9848
        [my jget noDecimalSin] set 101 9816
        [my jget noDecimalSin] set 102 9781
        [my jget noDecimalSin] set 103 9743
        [my jget noDecimalSin] set 104 9702
        [my jget noDecimalSin] set 105 9659
        [my jget noDecimalSin] set 106 9612
        [my jget noDecimalSin] set 107 9563
        [my jget noDecimalSin] set 108 9510
        [my jget noDecimalSin] set 109 9455
        [my jget noDecimalSin] set 110 9396
        [my jget noDecimalSin] set 111 9335
        [my jget noDecimalSin] set 112 9271
        [my jget noDecimalSin] set 113 9205
        [my jget noDecimalSin] set 114 9135
        [my jget noDecimalSin] set 115 9063
        [my jget noDecimalSin] set 116 8987
        [my jget noDecimalSin] set 117 8910
        [my jget noDecimalSin] set 118 8829
        [my jget noDecimalSin] set 119 8746
        [my jget noDecimalSin] set 120 8660
        [my jget noDecimalSin] set 121 8571
        [my jget noDecimalSin] set 122 8480
        [my jget noDecimalSin] set 123 8386
        [my jget noDecimalSin] set 124 8290
        [my jget noDecimalSin] set 125 8191
        [my jget noDecimalSin] set 126 8090
        [my jget noDecimalSin] set 127 7986
        [my jget noDecimalSin] set 128 7880
        [my jget noDecimalSin] set 129 7771
        [my jget noDecimalSin] set 130 7660
        [my jget noDecimalSin] set 131 7547
        [my jget noDecimalSin] set 132 7431
        [my jget noDecimalSin] set 133 7313
        [my jget noDecimalSin] set 134 7193
        [my jget noDecimalSin] set 135 7071
        [my jget noDecimalSin] set 136 6946
        [my jget noDecimalSin] set 137 6819
        [my jget noDecimalSin] set 138 6691
        [my jget noDecimalSin] set 139 6560
        [my jget noDecimalSin] set 140 6427
        [my jget noDecimalSin] set 141 6293
        [my jget noDecimalSin] set 142 6156
        [my jget noDecimalSin] set 143 6018
        [my jget noDecimalSin] set 144 5877
        [my jget noDecimalSin] set 145 5735
        [my jget noDecimalSin] set 146 5591
        [my jget noDecimalSin] set 147 5446
        [my jget noDecimalSin] set 148 5299
        [my jget noDecimalSin] set 149 5150
        [my jget noDecimalSin] set 150 4999
        [my jget noDecimalSin] set 151 4848
        [my jget noDecimalSin] set 152 4694
        [my jget noDecimalSin] set 153 4539
        [my jget noDecimalSin] set 154 4383
        [my jget noDecimalSin] set 155 4226
        [my jget noDecimalSin] set 156 4067
        [my jget noDecimalSin] set 157 3907
        [my jget noDecimalSin] set 158 3746
        [my jget noDecimalSin] set 159 3583
        [my jget noDecimalSin] set 160 3420
        [my jget noDecimalSin] set 161 3255
        [my jget noDecimalSin] set 162 3090
        [my jget noDecimalSin] set 163 2923
        [my jget noDecimalSin] set 164 2756
        [my jget noDecimalSin] set 165 2588
        [my jget noDecimalSin] set 166 2419
        [my jget noDecimalSin] set 167 2249
        [my jget noDecimalSin] set 168 2079
        [my jget noDecimalSin] set 169 1908
        [my jget noDecimalSin] set 170 1736
        [my jget noDecimalSin] set 171 1564
        [my jget noDecimalSin] set 172 1391
        [my jget noDecimalSin] set 173 1218
        [my jget noDecimalSin] set 174 1045
        [my jget noDecimalSin] set 175 871
        [my jget noDecimalSin] set 176 697
        [my jget noDecimalSin] set 177 523
        [my jget noDecimalSin] set 178 348
        [my jget noDecimalSin] set 179 174
        [my jget noDecimalSin] set 180 0
        [my jget noDecimalSin] set 181 [expr {-174}]
        [my jget noDecimalSin] set 182 [expr {-348}]
        [my jget noDecimalSin] set 183 [expr {-523}]
        [my jget noDecimalSin] set 184 [expr {-697}]
        [my jget noDecimalSin] set 185 [expr {-871}]
        [my jget noDecimalSin] set 186 [expr {-1045}]
        [my jget noDecimalSin] set 187 [expr {-1218}]
        [my jget noDecimalSin] set 188 [expr {-1391}]
        [my jget noDecimalSin] set 189 [expr {-1564}]
        [my jget noDecimalSin] set 190 [expr {-1736}]
        [my jget noDecimalSin] set 191 [expr {-1908}]
        [my jget noDecimalSin] set 192 [expr {-2079}]
        [my jget noDecimalSin] set 193 [expr {-2249}]
        [my jget noDecimalSin] set 194 [expr {-2419}]
        [my jget noDecimalSin] set 195 [expr {-2588}]
        [my jget noDecimalSin] set 196 [expr {-2756}]
        [my jget noDecimalSin] set 197 [expr {-2923}]
        [my jget noDecimalSin] set 198 [expr {-3090}]
        [my jget noDecimalSin] set 199 [expr {-3255}]
        [my jget noDecimalSin] set 200 [expr {-3420}]
        [my jget noDecimalSin] set 201 [expr {-3583}]
        [my jget noDecimalSin] set 202 [expr {-3746}]
        [my jget noDecimalSin] set 203 [expr {-3907}]
        [my jget noDecimalSin] set 204 [expr {-4067}]
        [my jget noDecimalSin] set 205 [expr {-4226}]
        [my jget noDecimalSin] set 206 [expr {-4383}]
        [my jget noDecimalSin] set 207 [expr {-4539}]
        [my jget noDecimalSin] set 208 [expr {-4694}]
        [my jget noDecimalSin] set 209 [expr {-4848}]
        [my jget noDecimalSin] set 210 [expr {-5000}]
        [my jget noDecimalSin] set 211 [expr {-5150}]
        [my jget noDecimalSin] set 212 [expr {-5299}]
        [my jget noDecimalSin] set 213 [expr {-5446}]
        [my jget noDecimalSin] set 214 [expr {-5591}]
        [my jget noDecimalSin] set 215 [expr {-5735}]
        [my jget noDecimalSin] set 216 [expr {-5877}]
        [my jget noDecimalSin] set 217 [expr {-6018}]
        [my jget noDecimalSin] set 218 [expr {-6156}]
        [my jget noDecimalSin] set 219 [expr {-6293}]
        [my jget noDecimalSin] set 220 [expr {-6427}]
        [my jget noDecimalSin] set 221 [expr {-6560}]
        [my jget noDecimalSin] set 222 [expr {-6691}]
        [my jget noDecimalSin] set 223 [expr {-6819}]
        [my jget noDecimalSin] set 224 [expr {-6946}]
        [my jget noDecimalSin] set 225 [expr {-7071}]
        [my jget noDecimalSin] set 226 [expr {-7193}]
        [my jget noDecimalSin] set 227 [expr {-7313}]
        [my jget noDecimalSin] set 228 [expr {-7431}]
        [my jget noDecimalSin] set 229 [expr {-7547}]
        [my jget noDecimalSin] set 230 [expr {-7660}]
        [my jget noDecimalSin] set 231 [expr {-7771}]
        [my jget noDecimalSin] set 232 [expr {-7880}]
        [my jget noDecimalSin] set 233 [expr {-7986}]
        [my jget noDecimalSin] set 234 [expr {-8090}]
        [my jget noDecimalSin] set 235 [expr {-8191}]
        [my jget noDecimalSin] set 236 [expr {-8290}]
        [my jget noDecimalSin] set 237 [expr {-8386}]
        [my jget noDecimalSin] set 238 [expr {-8480}]
        [my jget noDecimalSin] set 239 [expr {-8571}]
        [my jget noDecimalSin] set 240 [expr {-8660}]
        [my jget noDecimalSin] set 241 [expr {-8746}]
        [my jget noDecimalSin] set 242 [expr {-8829}]
        [my jget noDecimalSin] set 243 [expr {-8910}]
        [my jget noDecimalSin] set 244 [expr {-8987}]
        [my jget noDecimalSin] set 245 [expr {-9063}]
        [my jget noDecimalSin] set 246 [expr {-9135}]
        [my jget noDecimalSin] set 247 [expr {-9205}]
        [my jget noDecimalSin] set 248 [expr {-9271}]
        [my jget noDecimalSin] set 249 [expr {-9335}]
        [my jget noDecimalSin] set 250 [expr {-9396}]
        [my jget noDecimalSin] set 251 [expr {-9455}]
        [my jget noDecimalSin] set 252 [expr {-9510}]
        [my jget noDecimalSin] set 253 [expr {-9563}]
        [my jget noDecimalSin] set 254 [expr {-9612}]
        [my jget noDecimalSin] set 255 [expr {-9659}]
        [my jget noDecimalSin] set 256 [expr {-9702}]
        [my jget noDecimalSin] set 257 [expr {-9743}]
        [my jget noDecimalSin] set 258 [expr {-9781}]
        [my jget noDecimalSin] set 259 [expr {-9816}]
        [my jget noDecimalSin] set 260 [expr {-9848}]
        [my jget noDecimalSin] set 261 [expr {-9876}]
        [my jget noDecimalSin] set 262 [expr {-9902}]
        [my jget noDecimalSin] set 263 [expr {-9925}]
        [my jget noDecimalSin] set 264 [expr {-9945}]
        [my jget noDecimalSin] set 265 [expr {-9961}]
        [my jget noDecimalSin] set 266 [expr {-9975}]
        [my jget noDecimalSin] set 267 [expr {-9986}]
        [my jget noDecimalSin] set 268 [expr {-9993}]
        [my jget noDecimalSin] set 269 [expr {-9998}]
        [my jget noDecimalSin] set 270 [expr {-10000}]
        [my jget noDecimalSin] set 271 [expr {-9998}]
        [my jget noDecimalSin] set 272 [expr {-9993}]
        [my jget noDecimalSin] set 273 [expr {-9986}]
        [my jget noDecimalSin] set 274 [expr {-9975}]
        [my jget noDecimalSin] set 275 [expr {-9961}]
        [my jget noDecimalSin] set 276 [expr {-9945}]
        [my jget noDecimalSin] set 277 [expr {-9925}]
        [my jget noDecimalSin] set 278 [expr {-9902}]
        [my jget noDecimalSin] set 279 [expr {-9876}]
        [my jget noDecimalSin] set 280 [expr {-9848}]
        [my jget noDecimalSin] set 281 [expr {-9816}]
        [my jget noDecimalSin] set 282 [expr {-9781}]
        [my jget noDecimalSin] set 283 [expr {-9743}]
        [my jget noDecimalSin] set 284 [expr {-9702}]
        [my jget noDecimalSin] set 285 [expr {-9659}]
        [my jget noDecimalSin] set 286 [expr {-9612}]
        [my jget noDecimalSin] set 287 [expr {-9563}]
        [my jget noDecimalSin] set 288 [expr {-9510}]
        [my jget noDecimalSin] set 289 [expr {-9455}]
        [my jget noDecimalSin] set 290 [expr {-9396}]
        [my jget noDecimalSin] set 291 [expr {-9335}]
        [my jget noDecimalSin] set 292 [expr {-9271}]
        [my jget noDecimalSin] set 293 [expr {-9205}]
        [my jget noDecimalSin] set 294 [expr {-9135}]
        [my jget noDecimalSin] set 295 [expr {-9063}]
        [my jget noDecimalSin] set 296 [expr {-8987}]
        [my jget noDecimalSin] set 297 [expr {-8910}]
        [my jget noDecimalSin] set 298 [expr {-8829}]
        [my jget noDecimalSin] set 299 [expr {-8746}]
        [my jget noDecimalSin] set 300 [expr {-8660}]
        [my jget noDecimalSin] set 301 [expr {-8571}]
        [my jget noDecimalSin] set 302 [expr {-8480}]
        [my jget noDecimalSin] set 303 [expr {-8386}]
        [my jget noDecimalSin] set 304 [expr {-8290}]
        [my jget noDecimalSin] set 305 [expr {-8191}]
        [my jget noDecimalSin] set 306 [expr {-8090}]
        [my jget noDecimalSin] set 307 [expr {-7986}]
        [my jget noDecimalSin] set 308 [expr {-7880}]
        [my jget noDecimalSin] set 309 [expr {-7771}]
        [my jget noDecimalSin] set 310 [expr {-7660}]
        [my jget noDecimalSin] set 311 [expr {-7547}]
        [my jget noDecimalSin] set 312 [expr {-7431}]
        [my jget noDecimalSin] set 313 [expr {-7313}]
        [my jget noDecimalSin] set 314 [expr {-7193}]
        [my jget noDecimalSin] set 315 [expr {-7071}]
        [my jget noDecimalSin] set 316 [expr {-6946}]
        [my jget noDecimalSin] set 317 [expr {-6819}]
        [my jget noDecimalSin] set 318 [expr {-6691}]
        [my jget noDecimalSin] set 319 [expr {-6560}]
        [my jget noDecimalSin] set 320 [expr {-6427}]
        [my jget noDecimalSin] set 321 [expr {-6293}]
        [my jget noDecimalSin] set 322 [expr {-6156}]
        [my jget noDecimalSin] set 323 [expr {-6018}]
        [my jget noDecimalSin] set 324 [expr {-5877}]
        [my jget noDecimalSin] set 325 [expr {-5735}]
        [my jget noDecimalSin] set 326 [expr {-5591}]
        [my jget noDecimalSin] set 327 [expr {-5446}]
        [my jget noDecimalSin] set 328 [expr {-5299}]
        [my jget noDecimalSin] set 329 [expr {-5150}]
        [my jget noDecimalSin] set 330 [expr {-5000}]
        [my jget noDecimalSin] set 331 [expr {-4848}]
        [my jget noDecimalSin] set 332 [expr {-4694}]
        [my jget noDecimalSin] set 333 [expr {-4539}]
        [my jget noDecimalSin] set 334 [expr {-4383}]
        [my jget noDecimalSin] set 335 [expr {-4226}]
        [my jget noDecimalSin] set 336 [expr {-4067}]
        [my jget noDecimalSin] set 337 [expr {-3907}]
        [my jget noDecimalSin] set 338 [expr {-3746}]
        [my jget noDecimalSin] set 339 [expr {-3583}]
        [my jget noDecimalSin] set 340 [expr {-3420}]
        [my jget noDecimalSin] set 341 [expr {-3255}]
        [my jget noDecimalSin] set 342 [expr {-3090}]
        [my jget noDecimalSin] set 343 [expr {-2923}]
        [my jget noDecimalSin] set 344 [expr {-2756}]
        [my jget noDecimalSin] set 345 [expr {-2588}]
        [my jget noDecimalSin] set 346 [expr {-2419}]
        [my jget noDecimalSin] set 347 [expr {-2249}]
        [my jget noDecimalSin] set 348 [expr {-2079}]
        [my jget noDecimalSin] set 349 [expr {-1908}]
        [my jget noDecimalSin] set 350 [expr {-1736}]
        [my jget noDecimalSin] set 351 [expr {-1564}]
        [my jget noDecimalSin] set 352 [expr {-1391}]
        [my jget noDecimalSin] set 353 [expr {-1218}]
        [my jget noDecimalSin] set 354 [expr {-1045}]
        [my jget noDecimalSin] set 355 [expr {-871}]
        [my jget noDecimalSin] set 356 [expr {-697}]
        [my jget noDecimalSin] set 357 [expr {-523}]
        [my jget noDecimalSin] set 358 [expr {-348}]
        [my jget noDecimalSin] set 359 [expr {-174}]
        [my jget noDecimalCos] set 0 10000
        [my jget noDecimalCos] set 1 9998
        [my jget noDecimalCos] set 2 9993
        [my jget noDecimalCos] set 3 9986
        [my jget noDecimalCos] set 4 9975
        [my jget noDecimalCos] set 5 9961
        [my jget noDecimalCos] set 6 9945
        [my jget noDecimalCos] set 7 9925
        [my jget noDecimalCos] set 8 9902
        [my jget noDecimalCos] set 9 9876
        [my jget noDecimalCos] set 10 9848
        [my jget noDecimalCos] set 11 9816
        [my jget noDecimalCos] set 12 9781
        [my jget noDecimalCos] set 13 9743
        [my jget noDecimalCos] set 14 9702
        [my jget noDecimalCos] set 15 9659
        [my jget noDecimalCos] set 16 9612
        [my jget noDecimalCos] set 17 9563
        [my jget noDecimalCos] set 18 9510
        [my jget noDecimalCos] set 19 9455
        [my jget noDecimalCos] set 20 9396
        [my jget noDecimalCos] set 21 9335
        [my jget noDecimalCos] set 22 9271
        [my jget noDecimalCos] set 23 9205
        [my jget noDecimalCos] set 24 9135
        [my jget noDecimalCos] set 25 9063
        [my jget noDecimalCos] set 26 8987
        [my jget noDecimalCos] set 27 8910
        [my jget noDecimalCos] set 28 8829
        [my jget noDecimalCos] set 29 8746
        [my jget noDecimalCos] set 30 8660
        [my jget noDecimalCos] set 31 8571
        [my jget noDecimalCos] set 32 8480
        [my jget noDecimalCos] set 33 8386
        [my jget noDecimalCos] set 34 8290
        [my jget noDecimalCos] set 35 8191
        [my jget noDecimalCos] set 36 8090
        [my jget noDecimalCos] set 37 7986
        [my jget noDecimalCos] set 38 7880
        [my jget noDecimalCos] set 39 7771
        [my jget noDecimalCos] set 40 7660
        [my jget noDecimalCos] set 41 7547
        [my jget noDecimalCos] set 42 7431
        [my jget noDecimalCos] set 43 7313
        [my jget noDecimalCos] set 44 7193
        [my jget noDecimalCos] set 45 7071
        [my jget noDecimalCos] set 46 6946
        [my jget noDecimalCos] set 47 6819
        [my jget noDecimalCos] set 48 6691
        [my jget noDecimalCos] set 49 6560
        [my jget noDecimalCos] set 50 6427
        [my jget noDecimalCos] set 51 6293
        [my jget noDecimalCos] set 52 6156
        [my jget noDecimalCos] set 53 6018
        [my jget noDecimalCos] set 54 5877
        [my jget noDecimalCos] set 55 5735
        [my jget noDecimalCos] set 56 5591
        [my jget noDecimalCos] set 57 5446
        [my jget noDecimalCos] set 58 5299
        [my jget noDecimalCos] set 59 5150
        [my jget noDecimalCos] set 60 5000
        [my jget noDecimalCos] set 61 4848
        [my jget noDecimalCos] set 62 4694
        [my jget noDecimalCos] set 63 4539
        [my jget noDecimalCos] set 64 4383
        [my jget noDecimalCos] set 65 4226
        [my jget noDecimalCos] set 66 4067
        [my jget noDecimalCos] set 67 3907
        [my jget noDecimalCos] set 68 3746
        [my jget noDecimalCos] set 69 3583
        [my jget noDecimalCos] set 70 3420
        [my jget noDecimalCos] set 71 3255
        [my jget noDecimalCos] set 72 3090
        [my jget noDecimalCos] set 73 2923
        [my jget noDecimalCos] set 74 2756
        [my jget noDecimalCos] set 75 2588
        [my jget noDecimalCos] set 76 2419
        [my jget noDecimalCos] set 77 2249
        [my jget noDecimalCos] set 78 2079
        [my jget noDecimalCos] set 79 1908
        [my jget noDecimalCos] set 80 1736
        [my jget noDecimalCos] set 81 1564
        [my jget noDecimalCos] set 82 1391
        [my jget noDecimalCos] set 83 1218
        [my jget noDecimalCos] set 84 1045
        [my jget noDecimalCos] set 85 871
        [my jget noDecimalCos] set 86 697
        [my jget noDecimalCos] set 87 523
        [my jget noDecimalCos] set 88 348
        [my jget noDecimalCos] set 89 174
        [my jget noDecimalCos] set 90 0
        [my jget noDecimalCos] set 91 [expr {-174}]
        [my jget noDecimalCos] set 92 [expr {-348}]
        [my jget noDecimalCos] set 93 [expr {-523}]
        [my jget noDecimalCos] set 94 [expr {-697}]
        [my jget noDecimalCos] set 95 [expr {-871}]
        [my jget noDecimalCos] set 96 [expr {-1045}]
        [my jget noDecimalCos] set 97 [expr {-1218}]
        [my jget noDecimalCos] set 98 [expr {-1391}]
        [my jget noDecimalCos] set 99 [expr {-1564}]
        [my jget noDecimalCos] set 100 [expr {-1736}]
        [my jget noDecimalCos] set 101 [expr {-1908}]
        [my jget noDecimalCos] set 102 [expr {-2079}]
        [my jget noDecimalCos] set 103 [expr {-2249}]
        [my jget noDecimalCos] set 104 [expr {-2419}]
        [my jget noDecimalCos] set 105 [expr {-2588}]
        [my jget noDecimalCos] set 106 [expr {-2756}]
        [my jget noDecimalCos] set 107 [expr {-2923}]
        [my jget noDecimalCos] set 108 [expr {-3090}]
        [my jget noDecimalCos] set 109 [expr {-3255}]
        [my jget noDecimalCos] set 110 [expr {-3420}]
        [my jget noDecimalCos] set 111 [expr {-3583}]
        [my jget noDecimalCos] set 112 [expr {-3746}]
        [my jget noDecimalCos] set 113 [expr {-3907}]
        [my jget noDecimalCos] set 114 [expr {-4067}]
        [my jget noDecimalCos] set 115 [expr {-4226}]
        [my jget noDecimalCos] set 116 [expr {-4383}]
        [my jget noDecimalCos] set 117 [expr {-4539}]
        [my jget noDecimalCos] set 118 [expr {-4694}]
        [my jget noDecimalCos] set 119 [expr {-4848}]
        [my jget noDecimalCos] set 120 [expr {-4999}]
        [my jget noDecimalCos] set 121 [expr {-5150}]
        [my jget noDecimalCos] set 122 [expr {-5299}]
        [my jget noDecimalCos] set 123 [expr {-5446}]
        [my jget noDecimalCos] set 124 [expr {-5591}]
        [my jget noDecimalCos] set 125 [expr {-5735}]
        [my jget noDecimalCos] set 126 [expr {-5877}]
        [my jget noDecimalCos] set 127 [expr {-6018}]
        [my jget noDecimalCos] set 128 [expr {-6156}]
        [my jget noDecimalCos] set 129 [expr {-6293}]
        [my jget noDecimalCos] set 130 [expr {-6427}]
        [my jget noDecimalCos] set 131 [expr {-6560}]
        [my jget noDecimalCos] set 132 [expr {-6691}]
        [my jget noDecimalCos] set 133 [expr {-6819}]
        [my jget noDecimalCos] set 134 [expr {-6946}]
        [my jget noDecimalCos] set 135 [expr {-7071}]
        [my jget noDecimalCos] set 136 [expr {-7193}]
        [my jget noDecimalCos] set 137 [expr {-7313}]
        [my jget noDecimalCos] set 138 [expr {-7431}]
        [my jget noDecimalCos] set 139 [expr {-7547}]
        [my jget noDecimalCos] set 140 [expr {-7660}]
        [my jget noDecimalCos] set 141 [expr {-7771}]
        [my jget noDecimalCos] set 142 [expr {-7880}]
        [my jget noDecimalCos] set 143 [expr {-7986}]
        [my jget noDecimalCos] set 144 [expr {-8090}]
        [my jget noDecimalCos] set 145 [expr {-8191}]
        [my jget noDecimalCos] set 146 [expr {-8290}]
        [my jget noDecimalCos] set 147 [expr {-8386}]
        [my jget noDecimalCos] set 148 [expr {-8480}]
        [my jget noDecimalCos] set 149 [expr {-8571}]
        [my jget noDecimalCos] set 150 [expr {-8660}]
        [my jget noDecimalCos] set 151 [expr {-8746}]
        [my jget noDecimalCos] set 152 [expr {-8829}]
        [my jget noDecimalCos] set 153 [expr {-8910}]
        [my jget noDecimalCos] set 154 [expr {-8987}]
        [my jget noDecimalCos] set 155 [expr {-9063}]
        [my jget noDecimalCos] set 156 [expr {-9135}]
        [my jget noDecimalCos] set 157 [expr {-9205}]
        [my jget noDecimalCos] set 158 [expr {-9271}]
        [my jget noDecimalCos] set 159 [expr {-9335}]
        [my jget noDecimalCos] set 160 [expr {-9396}]
        [my jget noDecimalCos] set 161 [expr {-9455}]
        [my jget noDecimalCos] set 162 [expr {-9510}]
        [my jget noDecimalCos] set 163 [expr {-9563}]
        [my jget noDecimalCos] set 164 [expr {-9612}]
        [my jget noDecimalCos] set 165 [expr {-9659}]
        [my jget noDecimalCos] set 166 [expr {-9702}]
        [my jget noDecimalCos] set 167 [expr {-9743}]
        [my jget noDecimalCos] set 168 [expr {-9781}]
        [my jget noDecimalCos] set 169 [expr {-9816}]
        [my jget noDecimalCos] set 170 [expr {-9848}]
        [my jget noDecimalCos] set 171 [expr {-9876}]
        [my jget noDecimalCos] set 172 [expr {-9902}]
        [my jget noDecimalCos] set 173 [expr {-9925}]
        [my jget noDecimalCos] set 174 [expr {-9945}]
        [my jget noDecimalCos] set 175 [expr {-9961}]
        [my jget noDecimalCos] set 176 [expr {-9975}]
        [my jget noDecimalCos] set 177 [expr {-9986}]
        [my jget noDecimalCos] set 178 [expr {-9993}]
        [my jget noDecimalCos] set 179 [expr {-9998}]
        [my jget noDecimalCos] set 180 [expr {-10000}]
        [my jget noDecimalCos] set 181 [expr {-9998}]
        [my jget noDecimalCos] set 182 [expr {-9993}]
        [my jget noDecimalCos] set 183 [expr {-9986}]
        [my jget noDecimalCos] set 184 [expr {-9975}]
        [my jget noDecimalCos] set 185 [expr {-9961}]
        [my jget noDecimalCos] set 186 [expr {-9945}]
        [my jget noDecimalCos] set 187 [expr {-9925}]
        [my jget noDecimalCos] set 188 [expr {-9902}]
        [my jget noDecimalCos] set 189 [expr {-9876}]
        [my jget noDecimalCos] set 190 [expr {-9848}]
        [my jget noDecimalCos] set 191 [expr {-9816}]
        [my jget noDecimalCos] set 192 [expr {-9781}]
        [my jget noDecimalCos] set 193 [expr {-9743}]
        [my jget noDecimalCos] set 194 [expr {-9702}]
        [my jget noDecimalCos] set 195 [expr {-9659}]
        [my jget noDecimalCos] set 196 [expr {-9612}]
        [my jget noDecimalCos] set 197 [expr {-9563}]
        [my jget noDecimalCos] set 198 [expr {-9510}]
        [my jget noDecimalCos] set 199 [expr {-9455}]
        [my jget noDecimalCos] set 200 [expr {-9396}]
        [my jget noDecimalCos] set 201 [expr {-9335}]
        [my jget noDecimalCos] set 202 [expr {-9271}]
        [my jget noDecimalCos] set 203 [expr {-9205}]
        [my jget noDecimalCos] set 204 [expr {-9135}]
        [my jget noDecimalCos] set 205 [expr {-9063}]
        [my jget noDecimalCos] set 206 [expr {-8987}]
        [my jget noDecimalCos] set 207 [expr {-8910}]
        [my jget noDecimalCos] set 208 [expr {-8829}]
        [my jget noDecimalCos] set 209 [expr {-8746}]
        [my jget noDecimalCos] set 210 [expr {-8660}]
        [my jget noDecimalCos] set 211 [expr {-8571}]
        [my jget noDecimalCos] set 212 [expr {-8480}]
        [my jget noDecimalCos] set 213 [expr {-8386}]
        [my jget noDecimalCos] set 214 [expr {-8290}]
        [my jget noDecimalCos] set 215 [expr {-8191}]
        [my jget noDecimalCos] set 216 [expr {-8090}]
        [my jget noDecimalCos] set 217 [expr {-7986}]
        [my jget noDecimalCos] set 218 [expr {-7880}]
        [my jget noDecimalCos] set 219 [expr {-7771}]
        [my jget noDecimalCos] set 220 [expr {-7660}]
        [my jget noDecimalCos] set 221 [expr {-7547}]
        [my jget noDecimalCos] set 222 [expr {-7431}]
        [my jget noDecimalCos] set 223 [expr {-7313}]
        [my jget noDecimalCos] set 224 [expr {-7193}]
        [my jget noDecimalCos] set 225 [expr {-7071}]
        [my jget noDecimalCos] set 226 [expr {-6946}]
        [my jget noDecimalCos] set 227 [expr {-6819}]
        [my jget noDecimalCos] set 228 [expr {-6691}]
        [my jget noDecimalCos] set 229 [expr {-6560}]
        [my jget noDecimalCos] set 230 [expr {-6427}]
        [my jget noDecimalCos] set 231 [expr {-6293}]
        [my jget noDecimalCos] set 232 [expr {-6156}]
        [my jget noDecimalCos] set 233 [expr {-6018}]
        [my jget noDecimalCos] set 234 [expr {-5877}]
        [my jget noDecimalCos] set 235 [expr {-5735}]
        [my jget noDecimalCos] set 236 [expr {-5591}]
        [my jget noDecimalCos] set 237 [expr {-5446}]
        [my jget noDecimalCos] set 238 [expr {-5299}]
        [my jget noDecimalCos] set 239 [expr {-5150}]
        [my jget noDecimalCos] set 240 [expr {-5000}]
        [my jget noDecimalCos] set 241 [expr {-4848}]
        [my jget noDecimalCos] set 242 [expr {-4694}]
        [my jget noDecimalCos] set 243 [expr {-4539}]
        [my jget noDecimalCos] set 244 [expr {-4383}]
        [my jget noDecimalCos] set 245 [expr {-4226}]
        [my jget noDecimalCos] set 246 [expr {-4067}]
        [my jget noDecimalCos] set 247 [expr {-3907}]
        [my jget noDecimalCos] set 248 [expr {-3746}]
        [my jget noDecimalCos] set 249 [expr {-3583}]
        [my jget noDecimalCos] set 250 [expr {-3420}]
        [my jget noDecimalCos] set 251 [expr {-3255}]
        [my jget noDecimalCos] set 252 [expr {-3090}]
        [my jget noDecimalCos] set 253 [expr {-2923}]
        [my jget noDecimalCos] set 254 [expr {-2756}]
        [my jget noDecimalCos] set 255 [expr {-2588}]
        [my jget noDecimalCos] set 256 [expr {-2419}]
        [my jget noDecimalCos] set 257 [expr {-2249}]
        [my jget noDecimalCos] set 258 [expr {-2079}]
        [my jget noDecimalCos] set 259 [expr {-1908}]
        [my jget noDecimalCos] set 260 [expr {-1736}]
        [my jget noDecimalCos] set 261 [expr {-1564}]
        [my jget noDecimalCos] set 262 [expr {-1391}]
        [my jget noDecimalCos] set 263 [expr {-1218}]
        [my jget noDecimalCos] set 264 [expr {-1045}]
        [my jget noDecimalCos] set 265 [expr {-871}]
        [my jget noDecimalCos] set 266 [expr {-697}]
        [my jget noDecimalCos] set 267 [expr {-523}]
        [my jget noDecimalCos] set 268 [expr {-348}]
        [my jget noDecimalCos] set 269 [expr {-174}]
        [my jget noDecimalCos] set 270 0
        [my jget noDecimalCos] set 271 174
        [my jget noDecimalCos] set 272 348
        [my jget noDecimalCos] set 273 523
        [my jget noDecimalCos] set 274 697
        [my jget noDecimalCos] set 275 871
        [my jget noDecimalCos] set 276 1045
        [my jget noDecimalCos] set 277 1218
        [my jget noDecimalCos] set 278 1391
        [my jget noDecimalCos] set 279 1564
        [my jget noDecimalCos] set 280 1736
        [my jget noDecimalCos] set 281 1908
        [my jget noDecimalCos] set 282 2079
        [my jget noDecimalCos] set 283 2249
        [my jget noDecimalCos] set 284 2419
        [my jget noDecimalCos] set 285 2588
        [my jget noDecimalCos] set 286 2756
        [my jget noDecimalCos] set 287 2923
        [my jget noDecimalCos] set 288 3090
        [my jget noDecimalCos] set 289 3255
        [my jget noDecimalCos] set 290 3420
        [my jget noDecimalCos] set 291 3583
        [my jget noDecimalCos] set 292 3746
        [my jget noDecimalCos] set 293 3907
        [my jget noDecimalCos] set 294 4067
        [my jget noDecimalCos] set 295 4226
        [my jget noDecimalCos] set 296 4383
        [my jget noDecimalCos] set 297 4539
        [my jget noDecimalCos] set 298 4694
        [my jget noDecimalCos] set 299 4848
        [my jget noDecimalCos] set 300 5000
        [my jget noDecimalCos] set 301 5150
        [my jget noDecimalCos] set 302 5299
        [my jget noDecimalCos] set 303 5446
        [my jget noDecimalCos] set 304 5591
        [my jget noDecimalCos] set 305 5735
        [my jget noDecimalCos] set 306 5877
        [my jget noDecimalCos] set 307 6018
        [my jget noDecimalCos] set 308 6156
        [my jget noDecimalCos] set 309 6293
        [my jget noDecimalCos] set 310 6427
        [my jget noDecimalCos] set 311 6560
        [my jget noDecimalCos] set 312 6691
        [my jget noDecimalCos] set 313 6819
        [my jget noDecimalCos] set 314 6946
        [my jget noDecimalCos] set 315 7071
        [my jget noDecimalCos] set 316 7193
        [my jget noDecimalCos] set 317 7313
        [my jget noDecimalCos] set 318 7431
        [my jget noDecimalCos] set 319 7547
        [my jget noDecimalCos] set 320 7660
        [my jget noDecimalCos] set 321 7771
        [my jget noDecimalCos] set 322 7880
        [my jget noDecimalCos] set 323 7986
        [my jget noDecimalCos] set 324 8090
        [my jget noDecimalCos] set 325 8191
        [my jget noDecimalCos] set 326 8290
        [my jget noDecimalCos] set 327 8386
        [my jget noDecimalCos] set 328 8480
        [my jget noDecimalCos] set 329 8571
        [my jget noDecimalCos] set 330 8660
        [my jget noDecimalCos] set 331 8746
        [my jget noDecimalCos] set 332 8829
        [my jget noDecimalCos] set 333 8910
        [my jget noDecimalCos] set 334 8987
        [my jget noDecimalCos] set 335 9063
        [my jget noDecimalCos] set 336 9135
        [my jget noDecimalCos] set 337 9205
        [my jget noDecimalCos] set 338 9271
        [my jget noDecimalCos] set 339 9335
        [my jget noDecimalCos] set 340 9396
        [my jget noDecimalCos] set 341 9455
        [my jget noDecimalCos] set 342 9510
        [my jget noDecimalCos] set 343 9563
        [my jget noDecimalCos] set 344 9612
        [my jget noDecimalCos] set 345 9659
        [my jget noDecimalCos] set 346 9702
        [my jget noDecimalCos] set 347 9743
        [my jget noDecimalCos] set 348 9781
        [my jget noDecimalCos] set 349 9816
        [my jget noDecimalCos] set 350 9848
        [my jget noDecimalCos] set 351 9876
        [my jget noDecimalCos] set 352 9902
        [my jget noDecimalCos] set 353 9925
        [my jget noDecimalCos] set 354 9945
        [my jget noDecimalCos] set 355 9961
        [my jget noDecimalCos] set 356 9975
        [my jget noDecimalCos] set 357 9986
        [my jget noDecimalCos] set 358 9993
        [my jget noDecimalCos] set 359 9998
        [my jget noDecimalTan] set 0 0
        [my jget noDecimalTan] set 1 174
        [my jget noDecimalTan] set 2 349
        [my jget noDecimalTan] set 3 524
        [my jget noDecimalTan] set 4 699
        [my jget noDecimalTan] set 5 874
        [my jget noDecimalTan] set 6 1051
        [my jget noDecimalTan] set 7 1227
        [my jget noDecimalTan] set 8 1405
        [my jget noDecimalTan] set 9 1583
        [my jget noDecimalTan] set 10 1763
        [my jget noDecimalTan] set 11 1943
        [my jget noDecimalTan] set 12 2125
        [my jget noDecimalTan] set 13 2308
        [my jget noDecimalTan] set 14 2493
        [my jget noDecimalTan] set 15 2679
        [my jget noDecimalTan] set 16 2867
        [my jget noDecimalTan] set 17 3057
        [my jget noDecimalTan] set 18 3249
        [my jget noDecimalTan] set 19 3443
        [my jget noDecimalTan] set 20 3639
        [my jget noDecimalTan] set 21 3838
        [my jget noDecimalTan] set 22 4040
        [my jget noDecimalTan] set 23 4244
        [my jget noDecimalTan] set 24 4452
        [my jget noDecimalTan] set 25 4663
        [my jget noDecimalTan] set 26 4877
        [my jget noDecimalTan] set 27 5095
        [my jget noDecimalTan] set 28 5317
        [my jget noDecimalTan] set 29 5543
        [my jget noDecimalTan] set 30 5773
        [my jget noDecimalTan] set 31 6008
        [my jget noDecimalTan] set 32 6248
        [my jget noDecimalTan] set 33 6494
        [my jget noDecimalTan] set 34 6745
        [my jget noDecimalTan] set 35 7002
        [my jget noDecimalTan] set 36 7265
        [my jget noDecimalTan] set 37 7535
        [my jget noDecimalTan] set 38 7812
        [my jget noDecimalTan] set 39 8097
        [my jget noDecimalTan] set 40 8390
        [my jget noDecimalTan] set 41 8692
        [my jget noDecimalTan] set 42 9004
        [my jget noDecimalTan] set 43 9325
        [my jget noDecimalTan] set 44 9656
        [my jget noDecimalTan] set 45 9999
        [my jget noDecimalTan] set 46 10355
        [my jget noDecimalTan] set 47 10723
        [my jget noDecimalTan] set 48 11106
        [my jget noDecimalTan] set 49 11503
        [my jget noDecimalTan] set 50 11917
        [my jget noDecimalTan] set 51 12348
        [my jget noDecimalTan] set 52 12799
        [my jget noDecimalTan] set 53 13270
        [my jget noDecimalTan] set 54 13763
        [my jget noDecimalTan] set 55 14281
        [my jget noDecimalTan] set 56 14825
        [my jget noDecimalTan] set 57 15398
        [my jget noDecimalTan] set 58 16003
        [my jget noDecimalTan] set 59 16642
        [my jget noDecimalTan] set 60 17320
        [my jget noDecimalTan] set 61 18040
        [my jget noDecimalTan] set 62 18807
        [my jget noDecimalTan] set 63 19626
        [my jget noDecimalTan] set 64 20503
        [my jget noDecimalTan] set 65 21445
        [my jget noDecimalTan] set 66 22460
        [my jget noDecimalTan] set 67 23558
        [my jget noDecimalTan] set 68 24750
        [my jget noDecimalTan] set 69 26050
        [my jget noDecimalTan] set 70 27474
        [my jget noDecimalTan] set 71 29042
        [my jget noDecimalTan] set 72 30776
        [my jget noDecimalTan] set 73 32708
        [my jget noDecimalTan] set 74 34874
        [my jget noDecimalTan] set 75 37320
        [my jget noDecimalTan] set 76 40107
        [my jget noDecimalTan] set 77 43314
        [my jget noDecimalTan] set 78 47046
        [my jget noDecimalTan] set 79 51445
        [my jget noDecimalTan] set 80 56712
        [my jget noDecimalTan] set 81 63137
        [my jget noDecimalTan] set 82 71153
        [my jget noDecimalTan] set 83 81443
        [my jget noDecimalTan] set 84 95143
        [my jget noDecimalTan] set 85 114300
        [my jget noDecimalTan] set 86 143006
        [my jget noDecimalTan] set 87 190811
        [my jget noDecimalTan] set 88 286362
        [my jget noDecimalTan] set 89 572899
        [my jget noDecimalTan] set 90 $MAX_VALUE
        [my jget noDecimalTan] set 91 [expr {-572899}]
        [my jget noDecimalTan] set 92 [expr {-286362}]
        [my jget noDecimalTan] set 93 [expr {-190811}]
        [my jget noDecimalTan] set 94 [expr {-143006}]
        [my jget noDecimalTan] set 95 [expr {-114300}]
        [my jget noDecimalTan] set 96 [expr {-95143}]
        [my jget noDecimalTan] set 97 [expr {-81443}]
        [my jget noDecimalTan] set 98 [expr {-71153}]
        [my jget noDecimalTan] set 99 [expr {-63137}]
        [my jget noDecimalTan] set 100 [expr {-56712}]
        [my jget noDecimalTan] set 101 [expr {-51445}]
        [my jget noDecimalTan] set 102 [expr {-47046}]
        [my jget noDecimalTan] set 103 [expr {-43314}]
        [my jget noDecimalTan] set 104 [expr {-40107}]
        [my jget noDecimalTan] set 105 [expr {-37320}]
        [my jget noDecimalTan] set 106 [expr {-34874}]
        [my jget noDecimalTan] set 107 [expr {-32708}]
        [my jget noDecimalTan] set 108 [expr {-30776}]
        [my jget noDecimalTan] set 109 [expr {-29042}]
        [my jget noDecimalTan] set 110 [expr {-27474}]
        [my jget noDecimalTan] set 111 [expr {-26050}]
        [my jget noDecimalTan] set 112 [expr {-24750}]
        [my jget noDecimalTan] set 113 [expr {-23558}]
        [my jget noDecimalTan] set 114 [expr {-22460}]
        [my jget noDecimalTan] set 115 [expr {-21445}]
        [my jget noDecimalTan] set 116 [expr {-20503}]
        [my jget noDecimalTan] set 117 [expr {-19626}]
        [my jget noDecimalTan] set 118 [expr {-18807}]
        [my jget noDecimalTan] set 119 [expr {-18040}]
        [my jget noDecimalTan] set 120 [expr {-17320}]
        [my jget noDecimalTan] set 121 [expr {-16642}]
        [my jget noDecimalTan] set 122 [expr {-16003}]
        [my jget noDecimalTan] set 123 [expr {-15398}]
        [my jget noDecimalTan] set 124 [expr {-14825}]
        [my jget noDecimalTan] set 125 [expr {-14281}]
        [my jget noDecimalTan] set 126 [expr {-13763}]
        [my jget noDecimalTan] set 127 [expr {-13270}]
        [my jget noDecimalTan] set 128 [expr {-12799}]
        [my jget noDecimalTan] set 129 [expr {-12348}]
        [my jget noDecimalTan] set 130 [expr {-11917}]
        [my jget noDecimalTan] set 131 [expr {-11503}]
        [my jget noDecimalTan] set 132 [expr {-11106}]
        [my jget noDecimalTan] set 133 [expr {-10723}]
        [my jget noDecimalTan] set 134 [expr {-10355}]
        [my jget noDecimalTan] set 135 [expr {-10000}]
        [my jget noDecimalTan] set 136 [expr {-9656}]
        [my jget noDecimalTan] set 137 [expr {-9325}]
        [my jget noDecimalTan] set 138 [expr {-9004}]
        [my jget noDecimalTan] set 139 [expr {-8692}]
        [my jget noDecimalTan] set 140 [expr {-8390}]
        [my jget noDecimalTan] set 141 [expr {-8097}]
        [my jget noDecimalTan] set 142 [expr {-7812}]
        [my jget noDecimalTan] set 143 [expr {-7535}]
        [my jget noDecimalTan] set 144 [expr {-7265}]
        [my jget noDecimalTan] set 145 [expr {-7002}]
        [my jget noDecimalTan] set 146 [expr {-6745}]
        [my jget noDecimalTan] set 147 [expr {-6494}]
        [my jget noDecimalTan] set 148 [expr {-6248}]
        [my jget noDecimalTan] set 149 [expr {-6008}]
        [my jget noDecimalTan] set 150 [expr {-5773}]
        [my jget noDecimalTan] set 151 [expr {-5543}]
        [my jget noDecimalTan] set 152 [expr {-5317}]
        [my jget noDecimalTan] set 153 [expr {-5095}]
        [my jget noDecimalTan] set 154 [expr {-4877}]
        [my jget noDecimalTan] set 155 [expr {-4663}]
        [my jget noDecimalTan] set 156 [expr {-4452}]
        [my jget noDecimalTan] set 157 [expr {-4244}]
        [my jget noDecimalTan] set 158 [expr {-4040}]
        [my jget noDecimalTan] set 159 [expr {-3838}]
        [my jget noDecimalTan] set 160 [expr {-3639}]
        [my jget noDecimalTan] set 161 [expr {-3443}]
        [my jget noDecimalTan] set 162 [expr {-3249}]
        [my jget noDecimalTan] set 163 [expr {-3057}]
        [my jget noDecimalTan] set 164 [expr {-2867}]
        [my jget noDecimalTan] set 165 [expr {-2679}]
        [my jget noDecimalTan] set 166 [expr {-2493}]
        [my jget noDecimalTan] set 167 [expr {-2308}]
        [my jget noDecimalTan] set 168 [expr {-2125}]
        [my jget noDecimalTan] set 169 [expr {-1943}]
        [my jget noDecimalTan] set 170 [expr {-1763}]
        [my jget noDecimalTan] set 171 [expr {-1583}]
        [my jget noDecimalTan] set 172 [expr {-1405}]
        [my jget noDecimalTan] set 173 [expr {-1227}]
        [my jget noDecimalTan] set 174 [expr {-1051}]
        [my jget noDecimalTan] set 175 [expr {-874}]
        [my jget noDecimalTan] set 176 [expr {-699}]
        [my jget noDecimalTan] set 177 [expr {-524}]
        [my jget noDecimalTan] set 178 [expr {-349}]
        [my jget noDecimalTan] set 179 [expr {-174}]
        [my jget noDecimalTan] set 180 0
        [my jget noDecimalTan] set 181 174
        [my jget noDecimalTan] set 182 349
        [my jget noDecimalTan] set 183 524
        [my jget noDecimalTan] set 184 699
        [my jget noDecimalTan] set 185 874
        [my jget noDecimalTan] set 186 1051
        [my jget noDecimalTan] set 187 1227
        [my jget noDecimalTan] set 188 1405
        [my jget noDecimalTan] set 189 1583
        [my jget noDecimalTan] set 190 1763
        [my jget noDecimalTan] set 191 1943
        [my jget noDecimalTan] set 192 2125
        [my jget noDecimalTan] set 193 2308
        [my jget noDecimalTan] set 194 2493
        [my jget noDecimalTan] set 195 2679
        [my jget noDecimalTan] set 196 2867
        [my jget noDecimalTan] set 197 3057
        [my jget noDecimalTan] set 198 3249
        [my jget noDecimalTan] set 199 3443
        [my jget noDecimalTan] set 200 3639
        [my jget noDecimalTan] set 201 3838
        [my jget noDecimalTan] set 202 4040
        [my jget noDecimalTan] set 203 4244
        [my jget noDecimalTan] set 204 4452
        [my jget noDecimalTan] set 205 4663
        [my jget noDecimalTan] set 206 4877
        [my jget noDecimalTan] set 207 5095
        [my jget noDecimalTan] set 208 5317
        [my jget noDecimalTan] set 209 5543
        [my jget noDecimalTan] set 210 5773
        [my jget noDecimalTan] set 211 6008
        [my jget noDecimalTan] set 212 6248
        [my jget noDecimalTan] set 213 6494
        [my jget noDecimalTan] set 214 6745
        [my jget noDecimalTan] set 215 7002
        [my jget noDecimalTan] set 216 7265
        [my jget noDecimalTan] set 217 7535
        [my jget noDecimalTan] set 218 7812
        [my jget noDecimalTan] set 219 8097
        [my jget noDecimalTan] set 220 8390
        [my jget noDecimalTan] set 221 8692
        [my jget noDecimalTan] set 222 9004
        [my jget noDecimalTan] set 223 9325
        [my jget noDecimalTan] set 224 9656
        [my jget noDecimalTan] set 225 9999
        [my jget noDecimalTan] set 226 10355
        [my jget noDecimalTan] set 227 10723
        [my jget noDecimalTan] set 228 11106
        [my jget noDecimalTan] set 229 11503
        [my jget noDecimalTan] set 230 11917
        [my jget noDecimalTan] set 231 12348
        [my jget noDecimalTan] set 232 12799
        [my jget noDecimalTan] set 233 13270
        [my jget noDecimalTan] set 234 13763
        [my jget noDecimalTan] set 235 14281
        [my jget noDecimalTan] set 236 14825
        [my jget noDecimalTan] set 237 15398
        [my jget noDecimalTan] set 238 16003
        [my jget noDecimalTan] set 239 16642
        [my jget noDecimalTan] set 240 17320
        [my jget noDecimalTan] set 241 18040
        [my jget noDecimalTan] set 242 18807
        [my jget noDecimalTan] set 243 19626
        [my jget noDecimalTan] set 244 20503
        [my jget noDecimalTan] set 245 21445
        [my jget noDecimalTan] set 246 22460
        [my jget noDecimalTan] set 247 23558
        [my jget noDecimalTan] set 248 24750
        [my jget noDecimalTan] set 249 26050
        [my jget noDecimalTan] set 250 27474
        [my jget noDecimalTan] set 251 29042
        [my jget noDecimalTan] set 252 30776
        [my jget noDecimalTan] set 253 32708
        [my jget noDecimalTan] set 254 34874
        [my jget noDecimalTan] set 255 37320
        [my jget noDecimalTan] set 256 40107
        [my jget noDecimalTan] set 257 43314
        [my jget noDecimalTan] set 258 47046
        [my jget noDecimalTan] set 259 51445
        [my jget noDecimalTan] set 260 56712
        [my jget noDecimalTan] set 261 63137
        [my jget noDecimalTan] set 262 71153
        [my jget noDecimalTan] set 263 81443
        [my jget noDecimalTan] set 264 95143
        [my jget noDecimalTan] set 265 114300
        [my jget noDecimalTan] set 266 143006
        [my jget noDecimalTan] set 267 190811
        [my jget noDecimalTan] set 268 286362
        [my jget noDecimalTan] set 269 572899
        [my jget noDecimalTan] set 270 $MAX_VALUE
        [my jget noDecimalTan] set 271 [expr {-572899}]
        [my jget noDecimalTan] set 272 [expr {-286362}]
        [my jget noDecimalTan] set 273 [expr {-190811}]
        [my jget noDecimalTan] set 274 [expr {-143006}]
        [my jget noDecimalTan] set 275 [expr {-114300}]
        [my jget noDecimalTan] set 276 [expr {-95143}]
        [my jget noDecimalTan] set 277 [expr {-81443}]
        [my jget noDecimalTan] set 278 [expr {-71153}]
        [my jget noDecimalTan] set 279 [expr {-63137}]
        [my jget noDecimalTan] set 280 [expr {-56712}]
        [my jget noDecimalTan] set 281 [expr {-51445}]
        [my jget noDecimalTan] set 282 [expr {-47046}]
        [my jget noDecimalTan] set 283 [expr {-43314}]
        [my jget noDecimalTan] set 284 [expr {-40107}]
        [my jget noDecimalTan] set 285 [expr {-37320}]
        [my jget noDecimalTan] set 286 [expr {-34874}]
        [my jget noDecimalTan] set 287 [expr {-32708}]
        [my jget noDecimalTan] set 288 [expr {-30776}]
        [my jget noDecimalTan] set 289 [expr {-29042}]
        [my jget noDecimalTan] set 290 [expr {-27474}]
        [my jget noDecimalTan] set 291 [expr {-26050}]
        [my jget noDecimalTan] set 292 [expr {-24750}]
        [my jget noDecimalTan] set 293 [expr {-23558}]
        [my jget noDecimalTan] set 294 [expr {-22460}]
        [my jget noDecimalTan] set 295 [expr {-21445}]
        [my jget noDecimalTan] set 296 [expr {-20503}]
        [my jget noDecimalTan] set 297 [expr {-19626}]
        [my jget noDecimalTan] set 298 [expr {-18807}]
        [my jget noDecimalTan] set 299 [expr {-18040}]
        [my jget noDecimalTan] set 300 [expr {-17320}]
        [my jget noDecimalTan] set 301 [expr {-16642}]
        [my jget noDecimalTan] set 302 [expr {-16003}]
        [my jget noDecimalTan] set 303 [expr {-15398}]
        [my jget noDecimalTan] set 304 [expr {-14825}]
        [my jget noDecimalTan] set 305 [expr {-14281}]
        [my jget noDecimalTan] set 306 [expr {-13763}]
        [my jget noDecimalTan] set 307 [expr {-13270}]
        [my jget noDecimalTan] set 308 [expr {-12799}]
        [my jget noDecimalTan] set 309 [expr {-12348}]
        [my jget noDecimalTan] set 310 [expr {-11917}]
        [my jget noDecimalTan] set 311 [expr {-11503}]
        [my jget noDecimalTan] set 312 [expr {-11106}]
        [my jget noDecimalTan] set 313 [expr {-10723}]
        [my jget noDecimalTan] set 314 [expr {-10355}]
        [my jget noDecimalTan] set 315 [expr {-10000}]
        [my jget noDecimalTan] set 316 [expr {-9656}]
        [my jget noDecimalTan] set 317 [expr {-9325}]
        [my jget noDecimalTan] set 318 [expr {-9004}]
        [my jget noDecimalTan] set 319 [expr {-8692}]
        [my jget noDecimalTan] set 320 [expr {-8390}]
        [my jget noDecimalTan] set 321 [expr {-8097}]
        [my jget noDecimalTan] set 322 [expr {-7812}]
        [my jget noDecimalTan] set 323 [expr {-7535}]
        [my jget noDecimalTan] set 324 [expr {-7265}]
        [my jget noDecimalTan] set 325 [expr {-7002}]
        [my jget noDecimalTan] set 326 [expr {-6745}]
        [my jget noDecimalTan] set 327 [expr {-6494}]
        [my jget noDecimalTan] set 328 [expr {-6248}]
        [my jget noDecimalTan] set 329 [expr {-6008}]
        [my jget noDecimalTan] set 330 [expr {-5773}]
        [my jget noDecimalTan] set 331 [expr {-5543}]
        [my jget noDecimalTan] set 332 [expr {-5317}]
        [my jget noDecimalTan] set 333 [expr {-5095}]
        [my jget noDecimalTan] set 334 [expr {-4877}]
        [my jget noDecimalTan] set 335 [expr {-4663}]
        [my jget noDecimalTan] set 336 [expr {-4452}]
        [my jget noDecimalTan] set 337 [expr {-4244}]
        [my jget noDecimalTan] set 338 [expr {-4040}]
        [my jget noDecimalTan] set 339 [expr {-3838}]
        [my jget noDecimalTan] set 340 [expr {-3639}]
        [my jget noDecimalTan] set 341 [expr {-3443}]
        [my jget noDecimalTan] set 342 [expr {-3249}]
        [my jget noDecimalTan] set 343 [expr {-3057}]
        [my jget noDecimalTan] set 344 [expr {-2867}]
        [my jget noDecimalTan] set 345 [expr {-2679}]
        [my jget noDecimalTan] set 346 [expr {-2493}]
        [my jget noDecimalTan] set 347 [expr {-2308}]
        [my jget noDecimalTan] set 348 [expr {-2125}]
        [my jget noDecimalTan] set 349 [expr {-1943}]
        [my jget noDecimalTan] set 350 [expr {-1763}]
        [my jget noDecimalTan] set 351 [expr {-1583}]
        [my jget noDecimalTan] set 352 [expr {-1405}]
        [my jget noDecimalTan] set 353 [expr {-1227}]
        [my jget noDecimalTan] set 354 [expr {-1051}]
        [my jget noDecimalTan] set 355 [expr {-874}]
        [my jget noDecimalTan] set 356 [expr {-699}]
        [my jget noDecimalTan] set 357 [expr {-524}]
        [my jget noDecimalTan] set 358 [expr {-349}]
        [my jget noDecimalTan] set 359 [expr {-174}]
        [my jget noDecimalTan] set 0 [expr {-174}]
    }
    

    method sin {angle} {
        return [[my jget noDecimalSin] get $angle]
    }
    

    method cos {angle} {
        return [[my jget noDecimalCos] get $angle]
    }
    

    method tan {angle} {
        return [[my jget noDecimalTan] get $angle]
    }
    

    method antiTan {dx dy} {
        set MAX_VALUE ([::Integer::staticGet_MAX_VALUE])
        set MIN_VALUE ([::Integer::staticGet_MIN_VALUE])
        set ratio ([jlong [expr {$MAX_VALUE - 1}]])
        if {[expr {$dy != 0}]} {
            set dxl ($dx)
            set ratio [jdiv [jlong [expr {[my jget SCALE] * $dxl}]] $dy]
            if {[expr {[expr {$dx <= 0}] && [expr {$dy < 0}]}]} {
                set ratio [[my jget mathUtil] abslong $ratio]
            }
        }
        if {([expr {[expr {$dx >= 0}] && [expr {$dy < 0}]}])} {
            for {set index 180} {[expr {$index > 90}]} {jpostincr index -1} {
                if {[expr {$ratio <= [[my jget noDecimalTan] get $index]}]} {
                    if {[expr {$ratio > [[my jget noDecimalTan] get [jint [expr {$index - 1}]]]}]} {
                        return ([jshort $index])
                    } elseif {[expr {[expr {[[my jget noDecimalTan] get [jint [expr {$index - 1}]]] == $MAX_VALUE}] && [expr {$ratio > $MIN_VALUE}]}]} {
                        return ([jshort $index])
                    }
                }
            }
        } elseif {([expr {[expr {$dx < 0}] && [expr {$dy <= 0}]}])} {
            for {set index 270} {[expr {$index > 180}]} {jpostincr index -1} {
                if {[expr {[expr {$ratio < [[my jget noDecimalTan] get $index]}] && [expr {$ratio >= [[my jget noDecimalTan] get [jint [expr {$index - 1}]]]}]}]} {
                    return ([jshort $index])
                }
            }
        } elseif {([expr {[expr {$dx < 0}] && [expr {$dy > 0}]}])} {
            for {set index ([jint [expr {[[my jget noDecimalTan] length] - 1}]])} {[expr {$index > 270}]} {jpostincr index -1} {
                if {[expr {$ratio < [[my jget noDecimalTan] get $index]}]} {
                    if {[expr {$ratio >= [[my jget noDecimalTan] get [jint [expr {$index - 1}]]]}]} {
                        return ([jshort $index])
                    } elseif {[expr {[expr {[[my jget noDecimalTan] get [jint [expr {$index - 1}]]] == $MAX_VALUE}] && [expr {$ratio >= $MIN_VALUE}]}]} {
                        return ([jshort $index])
                    }
                }
            }
        } elseif {([expr {[expr {$dx >= 0}] && [expr {$dy >= 0}]}])} {
            for {set index 90} {[expr {$index > 0}]} {jpostincr index -1} {
                if {[expr {[expr {$ratio < [[my jget noDecimalTan] get $index]}] && [expr {$ratio >= [[my jget noDecimalTan] get [jint [expr {$index - 1}]]]}]}]} {
                    return ([jshort $index])
                }
            }
        }
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Invalid Ratio: "
        $stringBuffer appendlong $ratio
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::PositionStrings::getInstance] jget DX_LABEL]
        $stringBuffer appendint $dx
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::PositionStrings::getInstance] jget DX_LABEL]
        $stringBuffer appendint $dy
        error [jexception Exception [$stringBuffer toString]]
    }
    

    method antiTanDebug {screenX screenY targetX targetY} {
        set METHOD_NAME "antiTanDebug"
        set TARGET_ANGLE " Targeting angle: "
        set stringMaker [::StringMaker new]
        ::PreLogUtil::put [[[[[[[[[$stringMaker append "screenX: "] appendint $screenX] append " screenY: "] appendint $screenY] append " targetX: "] appendint $targetX] append " targetY: "] appendint $targetY] toString] [self] $METHOD_NAME
        set targetX2 [expr {-$targetX}]
        set targetY2 [expr {-$targetY}]
        set screenX2 [expr {-$screenX}]
        set screenY2 [expr {-$screenY}]
        set dx [jarray 4 0]
        $dx set 0 ([jint [expr {$screenX - $targetX}]])
        $dx set 1 ([jint [expr {$screenX - $targetX2}]])
        $dx set 2 ([jint [expr {$screenX2 - $targetX}]])
        $dx set 3 ([jint [expr {$screenX2 - $targetX2}]])
        set dy [jarray 4 0]
        $dy set 0 ([jint [expr {$screenY - $targetY}]])
        $dy set 1 ([jint [expr {$screenY - $targetY2}]])
        $dy set 2 ([jint [expr {$screenY2 - $targetY}]])
        $dy set 3 ([jint [expr {$screenY2 - $targetY2}]])
        set angleOfTarget 0
        set angleFactory [::AngleFactory::getInstance]
        set angle {}
        for {set index 0} {[expr {$index < [$dx length]}]} {jpostincr index 1} {
            for {set index2 0} {[expr {$index2 < [$dy length]}]} {jpostincr index2 1} {
                set angleOfTarget [my antiTan [$dx get $index] [$dy get $index2]]
                set angle [$angleFactory getAt [jint $angleOfTarget]]
                $stringMaker delete 0 [$stringMaker length]
                ::PreLogUtil::put [[[[[[[[[[[[[$stringMaker append [[::CommonLabels::getInstance] jget INDEX_LABEL]] appendint $index] append " index2: "] appendint $index2] append [[::PositionStrings::getInstance] jget DX_LABEL]] appendint [$dx get $index]] append [[::PositionStrings::getInstance] jget DY_LABEL]] appendint [$dy get $index2]] append $TARGET_ANGLE] appendshort $angleOfTarget] append [[::CommonSeps::getInstance] jget EQUALS]] appendshort [jshort [$angle getValue]]] toString] [self] $METHOD_NAME
            }
        }
        set angleOfTarget [my antiTan [$dx get 0] [$dy get 0]]
        return $angleOfTarget
    }
}

namespace eval ::NoDecimalTrigTable {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoDecimalTrigTable new]
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
        return [::NoDecimalTrigTable::staticGet_instance]
    }
}


