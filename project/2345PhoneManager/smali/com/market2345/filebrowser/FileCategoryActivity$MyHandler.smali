.class Lcom/market2345/filebrowser/FileCategoryActivity$MyHandler;
.super Landroid/os/Handler;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/FileCategoryActivity;
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
            "Lcom/market2345/filebrowser/FileCategoryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/FileCategoryActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/market2345/filebrowser/FileCategoryActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/FileCategoryActivity;

    .line 78
    .local v0, "activity":Lcom/market2345/filebrowser/FileCategoryActivity;
    if-eqz v0, :cond_0

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 80
    invoke-virtual {v0, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->refreshCategoryInfo(I)V

    .line 81
    # getter for: Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->access$000(Lcom/market2345/filebrowser/FileCategoryActivity;)Lcom/market2345/filebrowser/CategoryBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/filebrowser/CategoryBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 82
    # getter for: Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->access$000(Lcom/market2345/filebrowser/FileCategoryActivity;)Lcom/market2345/filebrowser/CategoryBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/filebrowser/CategoryBar;->startAnimation()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 85
    # setter for: Lcom/market2345/filebrowser/FileCategoryActivity;->refresh:Z
    invoke-static {v0, v3}, Lcom/market2345/filebrowser/FileCategoryActivity;->access$102(Lcom/market2345/filebrowser/FileCategoryActivity;Z)Z

    goto :goto_0

    .line 86
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_3

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/FileCategoryActivity;->refreshCategoryInfo(I)V

    goto :goto_0

    .line 88
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 89
    invoke-virtual {v0, v3}, Lcom/market2345/filebrowser/FileCategoryActivity;->refreshCategoryInfo(I)V

    goto :goto_0
.end method
