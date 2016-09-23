.class Lcom/market2345/cacheclean/ClearUnInstallDialog$1;
.super Ljava/lang/Thread;
.source "ClearUnInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ClearUnInstallDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ClearUnInstallDialog;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ClearUnInstallDialog;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog$1;->this$0:Lcom/market2345/cacheclean/ClearUnInstallDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog$1;->this$0:Lcom/market2345/cacheclean/ClearUnInstallDialog;

    iget-object v2, v2, Lcom/market2345/cacheclean/ClearUnInstallDialog;->paths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/market2345/cacheclean/Util;->clear(Ljava/io/File;)V

    goto :goto_0

    .line 74
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method
