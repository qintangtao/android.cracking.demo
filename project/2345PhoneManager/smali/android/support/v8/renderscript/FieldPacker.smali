.class public Landroid/support/v8/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private final mData:[B

.field private mLen:I

.field private mN:Landroid/support/v8/renderscript/FieldPackerThunker;

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 35
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    .line 37
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-direct {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;-><init>(I)V

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 532
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addBoolean(Z)V

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addF32(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 194
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF32(F)V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addF32(Landroid/support/v8/renderscript/Float2;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Float2;

    .prologue
    .line 222
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF32(Landroid/support/v8/renderscript/Float2;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 227
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0
.end method

.method public addF32(Landroid/support/v8/renderscript/Float3;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Float3;

    .prologue
    .line 230
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF32(Landroid/support/v8/renderscript/Float3;)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 235
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 236
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0
.end method

.method public addF32(Landroid/support/v8/renderscript/Float4;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Float4;

    .prologue
    .line 239
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF32(Landroid/support/v8/renderscript/Float4;)V

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 244
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 245
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 246
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0
.end method

.method public addF64(D)V
    .locals 3
    .param p1, "v"    # D

    .prologue
    .line 202
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF64(D)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addF64(Landroid/support/v8/renderscript/Double2;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Double2;

    .prologue
    .line 250
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF64(Landroid/support/v8/renderscript/Double2;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 255
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0
.end method

.method public addF64(Landroid/support/v8/renderscript/Double3;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Double3;

    .prologue
    .line 258
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF64(Landroid/support/v8/renderscript/Double3;)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 263
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 264
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0
.end method

.method public addF64(Landroid/support/v8/renderscript/Double4;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Double4;

    .prologue
    .line 267
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addF64(Landroid/support/v8/renderscript/Double4;)V

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 272
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 273
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 274
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0
.end method

.method public addI16(Landroid/support/v8/renderscript/Short2;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Short2;

    .prologue
    .line 334
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI16(Landroid/support/v8/renderscript/Short2;)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 339
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0
.end method

.method public addI16(Landroid/support/v8/renderscript/Short3;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Short3;

    .prologue
    .line 342
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI16(Landroid/support/v8/renderscript/Short3;)V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 347
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 348
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0
.end method

.method public addI16(Landroid/support/v8/renderscript/Short4;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Short4;

    .prologue
    .line 351
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI16(Landroid/support/v8/renderscript/Short4;)V

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 356
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 357
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 358
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0
.end method

.method public addI16(S)V
    .locals 3
    .param p1, "v"    # S

    .prologue
    .line 95
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI16(S)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 100
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addI32(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 105
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI32(I)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 110
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 111
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 112
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addI32(Landroid/support/v8/renderscript/Int2;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Int2;

    .prologue
    .line 390
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI32(Landroid/support/v8/renderscript/Int2;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 395
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addI32(Landroid/support/v8/renderscript/Int3;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Int3;

    .prologue
    .line 398
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI32(Landroid/support/v8/renderscript/Int3;)V

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 403
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 404
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addI32(Landroid/support/v8/renderscript/Int4;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Int4;

    .prologue
    .line 407
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI32(Landroid/support/v8/renderscript/Int4;)V

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 412
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 413
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 414
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addI64(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 117
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI64(J)V

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 122
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public addI64(Landroid/support/v8/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 446
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI64(Landroid/support/v8/renderscript/Long2;)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 451
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addI64(Landroid/support/v8/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 454
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI64(Landroid/support/v8/renderscript/Long3;)V

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 459
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 460
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addI64(Landroid/support/v8/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 463
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI64(Landroid/support/v8/renderscript/Long4;)V

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 468
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 469
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 470
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addI8(B)V
    .locals 3
    .param p1, "v"    # B

    .prologue
    .line 87
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI8(B)V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    goto :goto_0
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte2;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte2;

    .prologue
    .line 278
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI8(Landroid/support/v8/renderscript/Byte2;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 283
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte3;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte3;

    .prologue
    .line 286
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI8(Landroid/support/v8/renderscript/Byte3;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 291
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 292
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte4;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte4;

    .prologue
    .line 295
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addI8(Landroid/support/v8/renderscript/Byte4;)V

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 300
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 301
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 302
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix2f;

    .prologue
    .line 522
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V

    .line 529
    :cond_0
    return-void

    .line 526
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 527
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix3f;

    .prologue
    .line 512
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V

    .line 519
    :cond_0
    return-void

    .line 516
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 517
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix4f;

    .prologue
    .line 502
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V

    .line 509
    :cond_0
    return-void

    .line 506
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 507
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addObj(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 1
    .param p1, "obj"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 210
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addObj(Landroid/support/v8/renderscript/BaseObj;)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    if-eqz p1, :cond_1

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addU16(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 144
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU16(I)V

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-le p1, v0, :cond_2

    .line 149
    :cond_1
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU16( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 153
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addU16(Landroid/support/v8/renderscript/Int2;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Int2;

    .prologue
    .line 362
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU16(Landroid/support/v8/renderscript/Int2;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 367
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_0
.end method

.method public addU16(Landroid/support/v8/renderscript/Int3;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Int3;

    .prologue
    .line 370
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU16(Landroid/support/v8/renderscript/Int3;)V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 375
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 376
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_0
.end method

.method public addU16(Landroid/support/v8/renderscript/Int4;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Int4;

    .prologue
    .line 379
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU16(Landroid/support/v8/renderscript/Int4;)V

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 384
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 385
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 386
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_0
.end method

.method public addU32(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 158
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU32(J)V

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 163
    :cond_1
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU32( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 167
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addU32(Landroid/support/v8/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 418
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU32(Landroid/support/v8/renderscript/Long2;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 423
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_0
.end method

.method public addU32(Landroid/support/v8/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 426
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU32(Landroid/support/v8/renderscript/Long3;)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 431
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 432
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_0
.end method

.method public addU32(Landroid/support/v8/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 435
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU32(Landroid/support/v8/renderscript/Long4;)V

    .line 443
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 440
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 441
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 442
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_0
.end method

.method public addU64(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 174
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU64(J)V

    .line 191
    :goto_0
    return-void

    .line 178
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 179
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU64( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 183
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 184
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 185
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 186
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 188
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public addU64(Landroid/support/v8/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 474
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU64(Landroid/support/v8/renderscript/Long2;)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 479
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_0
.end method

.method public addU64(Landroid/support/v8/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 482
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU64(Landroid/support/v8/renderscript/Long3;)V

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 487
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 488
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_0
.end method

.method public addU64(Landroid/support/v8/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 491
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU64(Landroid/support/v8/renderscript/Long4;)V

    .line 499
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 496
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 497
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 498
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_0
.end method

.method public addU8(Landroid/support/v8/renderscript/Short2;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Short2;

    .prologue
    .line 306
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU8(Landroid/support/v8/renderscript/Short2;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 311
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_0
.end method

.method public addU8(Landroid/support/v8/renderscript/Short3;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Short3;

    .prologue
    .line 314
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU8(Landroid/support/v8/renderscript/Short3;)V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 319
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 320
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_0
.end method

.method public addU8(Landroid/support/v8/renderscript/Short4;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Short4;

    .prologue
    .line 323
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU8(Landroid/support/v8/renderscript/Short4;)V

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 328
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 329
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 330
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_0
.end method

.method public addU8(S)V
    .locals 3
    .param p1, "v"    # S

    .prologue
    .line 133
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->addU8(S)V

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public align(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 43
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->align(I)V

    .line 54
    :cond_0
    return-void

    .line 47
    :cond_1
    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 48
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPackerThunker;->getData()[B

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    goto :goto_0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPackerThunker;->getPos()I

    move-result v0

    .line 550
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPackerThunker;->reset()V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method

.method public reset(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 64
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->reset(I)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-lt p1, v0, :cond_2

    .line 69
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method

.method public skip(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 75
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/support/v8/renderscript/FieldPackerThunker;

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/FieldPackerThunker;->skip(I)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int v0, v1, p1

    .line 80
    .local v0, "res":I
    if-ltz v0, :cond_1

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-le v0, v1, :cond_2

    .line 81
    :cond_1
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method
