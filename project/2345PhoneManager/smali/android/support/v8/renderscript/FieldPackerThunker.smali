.class public Landroid/support/v8/renderscript/FieldPackerThunker;
.super Ljava/lang/Object;
.source "FieldPackerThunker.java"


# instance fields
.field private mN:Landroid/renderscript/FieldPacker;

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-direct {v0, p1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 37
    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 267
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 268
    return-void
.end method

.method public addF32(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 103
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 104
    return-void
.end method

.method public addF32(Landroid/support/v8/renderscript/Float2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Float2;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float2;

    iget v2, p1, Landroid/support/v8/renderscript/Float2;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Float2;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 122
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 123
    return-void
.end method

.method public addF32(Landroid/support/v8/renderscript/Float3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Float3;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float3;

    iget v2, p1, Landroid/support/v8/renderscript/Float3;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float3;->y:F

    iget v4, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 126
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 127
    return-void
.end method

.method public addF32(Landroid/support/v8/renderscript/Float4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Float4;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float4;->y:F

    iget v4, p1, Landroid/support/v8/renderscript/Float4;->z:F

    iget v5, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Float4;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 130
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 131
    return-void
.end method

.method public addF64(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 108
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 109
    return-void
.end method

.method public addF64(Landroid/support/v8/renderscript/Double2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Double2;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Double2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Double2;-><init>(DD)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    .line 135
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 136
    return-void
.end method

.method public addF64(Landroid/support/v8/renderscript/Double3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Double3;

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Double3;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/support/v8/renderscript/Double3;->y:D

    iget-wide v6, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Double3;-><init>(DDD)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    .line 139
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x18

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 140
    return-void
.end method

.method public addF64(Landroid/support/v8/renderscript/Double4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Double4;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Double4;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Double4;->x:D

    iget-wide v4, p1, Landroid/support/v8/renderscript/Double4;->y:D

    iget-wide v6, p1, Landroid/support/v8/renderscript/Double4;->z:D

    iget-wide v8, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Double4;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    .line 143
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 144
    return-void
.end method

.method public addI16(Landroid/support/v8/renderscript/Short2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Short2;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short2;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    .line 174
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 175
    return-void
.end method

.method public addI16(Landroid/support/v8/renderscript/Short3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Short3;

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short3;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short3;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    .line 178
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 179
    return-void
.end method

.method public addI16(Landroid/support/v8/renderscript/Short4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Short4;

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short4;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short4;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short4;->z:S

    iget-short v5, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    .line 182
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 183
    return-void
.end method

.method public addI16(S)V
    .locals 1
    .param p1, "v"    # S

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 68
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 69
    return-void
.end method

.method public addI32(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 73
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 74
    return-void
.end method

.method public addI32(Landroid/support/v8/renderscript/Int2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Int2;

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroid/support/v8/renderscript/Int2;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    .line 200
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 201
    return-void
.end method

.method public addI32(Landroid/support/v8/renderscript/Int3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Int3;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroid/support/v8/renderscript/Int3;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int3;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    .line 204
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 205
    return-void
.end method

.method public addI32(Landroid/support/v8/renderscript/Int4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Int4;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroid/support/v8/renderscript/Int4;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int4;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int4;->z:I

    iget v5, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    .line 208
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 209
    return-void
.end method

.method public addI64(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 78
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 79
    return-void
.end method

.method public addI64(Landroid/support/v8/renderscript/Long2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    .line 226
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 227
    return-void
.end method

.method public addI64(Landroid/support/v8/renderscript/Long3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long3;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v6, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    .line 230
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x18

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 231
    return-void
.end method

.method public addI64(Landroid/support/v8/renderscript/Long4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long4;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v6, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v8, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    .line 234
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 235
    return-void
.end method

.method public addI8(B)V
    .locals 1
    .param p1, "v"    # B

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 63
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 64
    return-void
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte2;

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte2;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Byte2;-><init>(BB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    .line 148
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 149
    return-void
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte3;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte3;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    iget-byte v4, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Byte3;-><init>(BBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    .line 152
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 153
    return-void
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte4;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte4;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    iget-byte v4, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    iget-byte v5, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Byte4;-><init>(BBBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    .line 156
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 157
    return-void
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 3
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix2f;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Matrix2f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix2f;->getArray()[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/Matrix2f;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    .line 262
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 263
    return-void
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 3
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix3f;

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Matrix3f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/Matrix3f;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    .line 257
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x24

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 258
    return-void
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 3
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix4f;

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/Matrix4f;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 252
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 253
    return-void
.end method

.method public addObj(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 2
    .param p1, "obj"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 117
    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 118
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    goto :goto_0
.end method

.method public addU16(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 88
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 89
    return-void
.end method

.method public addU16(Landroid/support/v8/renderscript/Int2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Int2;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroid/support/v8/renderscript/Int2;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int2;)V

    .line 187
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 188
    return-void
.end method

.method public addU16(Landroid/support/v8/renderscript/Int3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Int3;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroid/support/v8/renderscript/Int3;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int3;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int3;)V

    .line 191
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 192
    return-void
.end method

.method public addU16(Landroid/support/v8/renderscript/Int4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Int4;

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroid/support/v8/renderscript/Int4;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int4;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int4;->z:I

    iget v5, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int4;)V

    .line 195
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 196
    return-void
.end method

.method public addU32(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 93
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 94
    return-void
.end method

.method public addU32(Landroid/support/v8/renderscript/Long2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long2;)V

    .line 213
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 214
    return-void
.end method

.method public addU32(Landroid/support/v8/renderscript/Long3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long3;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v6, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long3;)V

    .line 217
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 218
    return-void
.end method

.method public addU32(Landroid/support/v8/renderscript/Long4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long4;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v6, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v8, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long4;)V

    .line 221
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 222
    return-void
.end method

.method public addU64(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 98
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 99
    return-void
.end method

.method public addU64(Landroid/support/v8/renderscript/Long2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long2;)V

    .line 239
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 240
    return-void
.end method

.method public addU64(Landroid/support/v8/renderscript/Long3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long3;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v6, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long3;)V

    .line 243
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x18

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 244
    return-void
.end method

.method public addU64(Landroid/support/v8/renderscript/Long4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long4;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v6, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v8, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long4;)V

    .line 247
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 248
    return-void
.end method

.method public addU8(Landroid/support/v8/renderscript/Short2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Short2;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short2;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short2;)V

    .line 161
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 162
    return-void
.end method

.method public addU8(Landroid/support/v8/renderscript/Short3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Short3;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short3;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short3;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short3;)V

    .line 165
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 166
    return-void
.end method

.method public addU8(Landroid/support/v8/renderscript/Short4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Short4;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short4;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short4;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short4;->z:S

    iget-short v5, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    .line 169
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 170
    return-void
.end method

.method public addU8(S)V
    .locals 1
    .param p1, "v"    # S

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 83
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 84
    return-void
.end method

.method align(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 41
    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 42
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 49
    return-void
.end method

.method reset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 53
    iput p1, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 54
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 58
    iget v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPackerThunker;->mPos:I

    .line 59
    return-void
.end method
