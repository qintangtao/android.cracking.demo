.class Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
.source "ScriptIntrinsicLUTThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicLUT;


# direct methods
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 30
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;
    .locals 6
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 33
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    .line 36
    .local v0, "et":Landroid/support/v8/renderscript/ElementThunker;
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 38
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicLUT;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object v3

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 78
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 79
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 81
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 90
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicLUT;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v1, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setAlpha(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBlue(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v1, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setBlue(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGreen(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v1, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setGreen(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRed(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v1, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setRed(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
