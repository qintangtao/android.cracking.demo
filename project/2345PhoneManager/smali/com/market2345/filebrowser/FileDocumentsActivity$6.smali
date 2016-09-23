.class Lcom/market2345/filebrowser/FileDocumentsActivity$6;
.super Landroid/os/AsyncTask;
.source "FileDocumentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileDocumentsActivity;->asyncDelete()V
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
.field final synthetic this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 381
    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$200(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$300(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 385
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v2, :cond_0

    .line 386
    iget-object v4, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v5, v3, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v3, v3, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    sget-object v6, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-static {v4, v5, v3, v6}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteOtherFile(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 388
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 389
    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$300(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v3

    sget-object v4, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v3, v4}, Lcom/market2345/filebrowser/FileControl;->getAllDoc(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v3

    sget-object v4, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v3, v4}, Lcom/market2345/filebrowser/FileControl;->getAllDoc(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
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
    .line 365
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    const/4 v1, 0x0

    # invokes: Lcom/market2345/filebrowser/FileDocumentsActivity;->changeEditMode(Z)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1100(Lcom/market2345/filebrowser/FileDocumentsActivity;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 369
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    const v4, 0x7f0c0012

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1002(Lcom/market2345/filebrowser/FileDocumentsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 371
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 373
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 374
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 376
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 377
    return-void
.end method
