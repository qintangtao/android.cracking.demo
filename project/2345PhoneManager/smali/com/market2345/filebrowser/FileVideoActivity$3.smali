.class Lcom/market2345/filebrowser/FileVideoActivity$3;
.super Landroid/os/AsyncTask;
.source "FileVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileVideoActivity;->initData()V
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
.field final synthetic this$0:Lcom/market2345/filebrowser/FileVideoActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileVideoActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileVideoActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    invoke-virtual {v1}, Lcom/market2345/filebrowser/FileVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/filebrowser/FileControl;->getAllVideos(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;

    move-result-object v0

    .line 174
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileVideoActivity;->access$100(Lcom/market2345/filebrowser/FileVideoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/filebrowser/FileVideoActivity;->access$100(Lcom/market2345/filebrowser/FileVideoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileVideoActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$700(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$100(Lcom/market2345/filebrowser/FileVideoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$100(Lcom/market2345/filebrowser/FileVideoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->ivTopDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$500(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$900(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->noData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$800(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$400(Lcom/market2345/filebrowser/FileVideoActivity;)Lcom/market2345/filebrowser/adapter/VideoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$400(Lcom/market2345/filebrowser/FileVideoActivity;)Lcom/market2345/filebrowser/adapter/VideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$900(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->noData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$800(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # invokes: Lcom/market2345/filebrowser/FileVideoActivity;->changeEditMode(Z)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->access$1000(Lcom/market2345/filebrowser/FileVideoActivity;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 165
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$700(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->noData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$800(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$3;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$900(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 168
    return-void
.end method
