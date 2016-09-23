.class Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
.source "ScriptIntrinsicColorMatrixThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;


# direct methods
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 30
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
    .locals 6
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 33
    move-object v3, p0

    check-cast v3, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v3, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v1, p1

    .line 34
    check-cast v1, Landroid/support/v8/renderscript/ElementThunker;

    .line 36
    .local v1, "et":Landroid/support/v8/renderscript/ElementThunker;
    new-instance v0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;

    const/4 v4, 0x0

    invoke-direct {v0, v4, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 38
    .local v0, "cm":Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
    :try_start_0
    iget-object v4, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object v0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 88
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 89
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 91
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 100
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    return-object v0
.end method

.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 4
    .param p1, "m"    # Landroid/support/v8/renderscript/Matrix3f;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    new-instance v2, Landroid/renderscript/Matrix3f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix3f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix3f;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "m"    # Landroid/support/v8/renderscript/Matrix4f;

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix4f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix4f;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGreyscale()V
    .locals 2

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setGreyscale()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRGBtoYUV()V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setRGBtoYUV()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setYUVtoRGB()V
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setYUVtoRGB()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
