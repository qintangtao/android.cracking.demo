.class Lcom/market2345/filebrowser/FileMusicActivity$5;
.super Landroid/os/AsyncTask;
.source "FileMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileMusicActivity;->initData()V
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
    .line 233
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-virtual {v1}, Lcom/market2345/filebrowser/FileMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/filebrowser/FileControl;->getAllMusic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1100(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->ivTopDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$500(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1300(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->noData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1200(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$400(Lcom/market2345/filebrowser/FileMusicActivity;)Lcom/market2345/filebrowser/adapter/MusicAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$400(Lcom/market2345/filebrowser/FileMusicActivity;)Lcom/market2345/filebrowser/adapter/MusicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1300(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->noData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1200(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->changeEditMode(Z)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1400(Lcom/market2345/filebrowser/FileMusicActivity;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 237
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1100(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->noData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1200(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$5;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1300(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 240
    return-void
.end method
