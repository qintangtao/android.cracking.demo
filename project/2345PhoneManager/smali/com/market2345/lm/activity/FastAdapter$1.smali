.class Lcom/market2345/lm/activity/FastAdapter$1;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/lm/activity/FastAdapter;


# direct methods
.method constructor <init>(Lcom/market2345/lm/activity/FastAdapter;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    .line 129
    .local v0, "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v1}, Lcom/market2345/lm/view/LMStatusView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    iget-object v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v2}, Lcom/market2345/lm/view/LMStatusView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$500(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    new-array v3, v3, [Lcom/market2345/model/App;

    iget-object v4, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v5, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    # invokes: Lcom/market2345/lm/activity/FastAdapter;->unionAppInfo2App(Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;
    invoke-static {v4, v1}, Lcom/market2345/lm/activity/FastAdapter;->access$400(Lcom/market2345/lm/activity/FastAdapter;Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v1}, Lcom/market2345/lm/view/LMStatusView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u7ee7\u7eed"

    iget-object v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v2}, Lcom/market2345/lm/view/LMStatusView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$500(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    new-array v3, v3, [Lcom/market2345/model/App;

    iget-object v4, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v5, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    # invokes: Lcom/market2345/lm/activity/FastAdapter;->unionAppInfo2App(Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;
    invoke-static {v4, v1}, Lcom/market2345/lm/activity/FastAdapter;->access$400(Lcom/market2345/lm/activity/FastAdapter;Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v1}, Lcom/market2345/lm/view/LMStatusView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u91cd\u8bd5"

    iget-object v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v2}, Lcom/market2345/lm/view/LMStatusView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$500(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    new-array v3, v3, [Lcom/market2345/model/App;

    iget-object v4, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v5, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    # invokes: Lcom/market2345/lm/activity/FastAdapter;->unionAppInfo2App(Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;
    invoke-static {v4, v1}, Lcom/market2345/lm/activity/FastAdapter;->access$400(Lcom/market2345/lm/activity/FastAdapter;Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v1}, Lcom/market2345/lm/view/LMStatusView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    invoke-virtual {v1}, Lcom/market2345/lm/view/LMCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    iget-boolean v1, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    iput-boolean v6, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    .line 139
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->notcheck:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/market2345/lm/activity/FastAdapter;->access$600(Lcom/market2345/lm/activity/FastAdapter;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/lm/view/LMCheckBox;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;->onChange()V

    goto/16 :goto_0

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    iput-boolean v3, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    .line 142
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter$1;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->checked:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/market2345/lm/activity/FastAdapter;->access$700(Lcom/market2345/lm/activity/FastAdapter;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/lm/view/LMCheckBox;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
