.class Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;
.super Ljava/lang/Object;
.source "ElementThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ElementThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderThunker"
.end annotation


# instance fields
.field mN:Landroid/renderscript/Element$Builder;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 4
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 285
    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 287
    .local v1, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_0
    new-instance v2, Landroid/renderscript/Element$Builder;

    iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v3}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)V
    .locals 4
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    .prologue
    .line 294
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    .line 296
    .local v0, "et":Landroid/support/v8/renderscript/ElementThunker;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;

    iget-object v3, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-virtual {v2, v3, p2, p3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 3
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 304
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;

    invoke-virtual {v2}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v0

    .line 305
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v2, Landroid/support/v8/renderscript/ElementThunker;

    invoke-direct {v2, p1, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 306
    .end local v0    # "e":Landroid/renderscript/Element;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
