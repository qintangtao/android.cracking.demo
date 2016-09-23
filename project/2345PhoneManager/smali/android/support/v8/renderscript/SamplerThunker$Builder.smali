.class public Landroid/support/v8/renderscript/SamplerThunker$Builder;
.super Ljava/lang/Object;
.source "SamplerThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/SamplerThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/support/v8/renderscript/Sampler$Value;

.field mMin:Landroid/support/v8/renderscript/Sampler$Value;

.field mRS:Landroid/support/v8/renderscript/RenderScriptThunker;

.field mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapT:Landroid/support/v8/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScriptThunker;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScriptThunker;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 80
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    .line 81
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    .line 82
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    .line 83
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    .line 84
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    .line 85
    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Sampler;
    .locals 6

    .prologue
    .line 131
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScriptThunker;->validate()V

    .line 133
    :try_start_0
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v4, v4, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v4}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 134
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-static {v4}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 135
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-static {v4}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 136
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-static {v4}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 137
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-static {v4}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 138
    iget v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mAniso:F

    invoke-virtual {v0, v4}, Landroid/renderscript/Sampler$Builder;->setAnisotropy(F)V

    .line 139
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v2

    .line 141
    .local v2, "s":Landroid/renderscript/Sampler;
    new-instance v3, Landroid/support/v8/renderscript/SamplerThunker;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-direct {v3, v4, v5}, Landroid/support/v8/renderscript/SamplerThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 142
    .local v3, "sampler":Landroid/support/v8/renderscript/SamplerThunker;
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v4, v3, Landroid/support/v8/renderscript/SamplerThunker;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    .line 143
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v4, v3, Landroid/support/v8/renderscript/SamplerThunker;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    .line 144
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v4, v3, Landroid/support/v8/renderscript/SamplerThunker;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    .line 145
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v4, v3, Landroid/support/v8/renderscript/SamplerThunker;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    .line 146
    iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v4, v3, Landroid/support/v8/renderscript/SamplerThunker;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    .line 147
    iget v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mAniso:F

    iput v4, v3, Landroid/support/v8/renderscript/SamplerThunker;->mAniso:F

    .line 148
    iput-object v2, v3, Landroid/support/v8/renderscript/SamplerThunker;->mN:Landroid/renderscript/Sampler;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-object v3

    .line 151
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    .end local v2    # "s":Landroid/renderscript/Sampler;
    .end local v3    # "sampler":Landroid/support/v8/renderscript/SamplerThunker;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public setAnisotropy(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 123
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 124
    iput p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mAniso:F

    .line 128
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Sampler$Value;

    .prologue
    .line 99
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 100
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    .line 104
    return-void

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Sampler$Value;

    .prologue
    .line 88
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 92
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    .line 96
    return-void

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Sampler$Value;

    .prologue
    .line 107
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 108
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    .line 112
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Sampler$Value;

    .prologue
    .line 115
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 116
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    .line 120
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
