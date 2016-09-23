.class Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
.source "ScriptIntrinsicYuvToRGBThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 30
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;
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
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 38
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;
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
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .locals 4
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 58
    .local v0, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 4

    .prologue
    .line 75
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v1

    .line 77
    .local v1, "f":Landroid/support/v8/renderscript/Script$FieldID;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->getFieldID_Input()Landroid/renderscript/Script$FieldID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 67
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object v0
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .locals 4
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 47
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 49
    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
