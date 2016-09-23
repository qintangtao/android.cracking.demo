.class Lcom/market2345/filebrowser/FileControl$1;
.super Ljava/lang/Thread;
.source "FileControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileControl;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileControl;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileControl;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/market2345/filebrowser/FileControl$1;->this$0:Lcom/market2345/filebrowser/FileControl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl$1;->this$0:Lcom/market2345/filebrowser/FileControl;

    const/4 v1, 0x1

    # setter for: Lcom/market2345/filebrowser/FileControl;->isRun:Z
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileControl;->access$002(Lcom/market2345/filebrowser/FileControl;Z)Z

    .line 103
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl$1;->this$0:Lcom/market2345/filebrowser/FileControl;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileControl;->refreshCategoryInfo()V

    .line 104
    return-void
.end method
