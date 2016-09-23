.class Landroid/support/v8/renderscript/ScriptGroupThunker;
.super Landroid/support/v8/renderscript/ScriptGroup;
.source "ScriptGroupThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
    }
.end annotation


# instance fields
.field mN:Landroid/renderscript/ScriptGroup;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 31
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup;->execute()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroupThunker;->getNObj()Landroid/renderscript/ScriptGroup;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptGroup;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    return-object v0
.end method

.method public setInput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
    .locals 5
    .param p1, "s"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 34
    move-object v0, p2

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 36
    .local v0, "at":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    iget-object v3, p1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptGroup;->setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setOutput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
    .locals 5
    .param p1, "s"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 43
    move-object v0, p2

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 45
    .local v0, "at":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    iget-object v3, p1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptGroup;->setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
