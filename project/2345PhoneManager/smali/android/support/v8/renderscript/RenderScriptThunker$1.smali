.class Landroid/support/v8/renderscript/RenderScriptThunker$1;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "RenderScriptThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v8/renderscript/RenderScriptThunker;->setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
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
    .line 102
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->mData:[I

    iput-object v1, v0, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 105
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iget v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->mID:I

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 106
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iget v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->mLength:I

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 107
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker$1;->this$0:Landroid/support/v8/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->run()V

    .line 108
    return-void
.end method
