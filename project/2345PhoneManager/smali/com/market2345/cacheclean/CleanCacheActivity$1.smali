.class Lcom/market2345/cacheclean/CleanCacheActivity$1;
.super Landroid/os/Handler;
.source "CleanCacheActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanCacheActivity;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanCacheActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 73
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_1

    .line 75
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->updateAppList()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_2

    .line 79
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->updateAppList()V

    goto :goto_0

    .line 82
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 84
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$000(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$000(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->format:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$100(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$000(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->cacheTotalSize:J
    invoke-static {v4}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$200(Lcom/market2345/cacheclean/CleanCacheActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "toast":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    const/16 v3, 0x5dc

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$000(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$300(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->titileBar:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$400(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->botLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$500(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->cacheList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$600(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 96
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->mEmpty:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$700(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$800(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "tip":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$1;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->mEmptyTx:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$900(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
