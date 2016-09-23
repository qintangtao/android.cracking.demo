.class Landroid/support/v8/renderscript/RenderScriptThunker$2;
.super Landroid/renderscript/RenderScript$RSErrorHandler;
.source "RenderScriptThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v8/renderscript/RenderScriptThunker;->setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v8/renderscript/RenderScriptThunker;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScriptThunker;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$2;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$2;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$2;->mErrorMessage:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$2;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    iget v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$2;->mErrorNum:I

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 124
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$2;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->run()V

    .line 125
    return-void
.end method
