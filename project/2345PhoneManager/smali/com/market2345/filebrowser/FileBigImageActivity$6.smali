.class Lcom/market2345/filebrowser/FileBigImageActivity$6;
.super Landroid/os/AsyncTask;
.source "FileBigImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileBigImageActivity;->asyncDelete()V
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
.field final synthetic this$0:Lcom/market2345/filebrowser/FileBigImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 270
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v3}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-static {v1, v2, v0, v3}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteImage(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 254
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isDelete"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 287
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    const-string v1, "\u5220\u9664\u6210\u529f"

    # invokes: Lcom/market2345/filebrowser/FileBigImageActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$800(Lcom/market2345/filebrowser/FileBigImageActivity;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->finish()V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 297
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # operator-- for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$210(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v1

    # invokes: Lcom/market2345/filebrowser/FileBigImageActivity;->setNameAndPage(I)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$300(Lcom/market2345/filebrowser/FileBigImageActivity;I)V

    .line 301
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/BigImageAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$900(Lcom/market2345/filebrowser/FileBigImageActivity;)Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$1000(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    const-string v1, "\u5220\u9664\u5931\u8d25"

    # invokes: Lcom/market2345/filebrowser/FileBigImageActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$800(Lcom/market2345/filebrowser/FileBigImageActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 254
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 258
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    const v4, 0x7f0c0012

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$602(Lcom/market2345/filebrowser/FileBigImageActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 260
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 262
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 263
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 265
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$6;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 266
    return-void
.end method
