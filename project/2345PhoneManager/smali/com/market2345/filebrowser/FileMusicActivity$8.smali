.class Lcom/market2345/filebrowser/FileMusicActivity$8;
.super Landroid/os/AsyncTask;
.source "FileMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileMusicActivity;->asyncDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileMusicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileMusicActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 433
    iget-object v3, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileMusicActivity;->access$000(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 435
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 437
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    iget-object v4, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v5, v3, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v3, v3, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    sget-object v6, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Music:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-static {v4, v5, v3, v6}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteMusic(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 438
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 439
    iget-object v3, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    .end local v0    # "b":Z
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    const/4 v1, 0x0

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->changeEditMode(Z)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1400(Lcom/market2345/filebrowser/FileMusicActivity;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    const v2, 0x7f03003c

    invoke-static {v1, v2}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    # setter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1702(Lcom/market2345/filebrowser/FileMusicActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 425
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 426
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$8;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 429
    return-void
.end method
