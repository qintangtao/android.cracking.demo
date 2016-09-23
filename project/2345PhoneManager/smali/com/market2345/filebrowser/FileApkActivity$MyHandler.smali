.class Lcom/market2345/filebrowser/FileApkActivity$MyHandler;
.super Landroid/os/Handler;
.source "FileApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/FileApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/filebrowser/FileApkActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/FileApkActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 80
    iget-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/FileApkActivity;

    .line 81
    .local v0, "activity":Lcom/market2345/filebrowser/FileApkActivity;
    if-eqz v0, :cond_0

    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 83
    # invokes: Lcom/market2345/filebrowser/FileApkActivity;->initData()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$000(Lcom/market2345/filebrowser/FileApkActivity;)V

    .line 84
    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$100(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 86
    # invokes: Lcom/market2345/filebrowser/FileApkActivity;->initData()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$000(Lcom/market2345/filebrowser/FileApkActivity;)V

    .line 87
    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$100(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method
