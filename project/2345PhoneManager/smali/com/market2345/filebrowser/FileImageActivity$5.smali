.class Lcom/market2345/filebrowser/FileImageActivity$5;
.super Landroid/os/AsyncTask;
.source "FileImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileImageActivity;->asyncDelete()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileImageActivity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 319
    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileImageActivity;->access$100(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;>;"
    const/4 v3, 0x0

    .line 322
    .local v3, "result":Z
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileImageActivity;->access$200(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 324
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v6, v4, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v4, v4, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    sget-object v7, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-static {v5, v6, v4, v7}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteImage(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 325
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 326
    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileImageActivity;->access$200(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    const/4 v3, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "b":Z
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 305
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileImageActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 343
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # invokes: Lcom/market2345/filebrowser/FileImageActivity;->setResult()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1200(Lcom/market2345/filebrowser/FileImageActivity;)V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/market2345/filebrowser/FileImageActivity;->changeEditMode(Z)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileImageActivity;->access$1300(Lcom/market2345/filebrowser/FileImageActivity;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 305
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileImageActivity$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    const v2, 0x7f03003c

    invoke-static {v1, v2}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    # setter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileImageActivity;->access$1102(Lcom/market2345/filebrowser/FileImageActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 311
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 312
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 315
    return-void
.end method
