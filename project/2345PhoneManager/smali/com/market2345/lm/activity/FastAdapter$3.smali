.class Lcom/market2345/lm/activity/FastAdapter$3;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lm/activity/FastAdapter;
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
    .line 251
    iput-object p1, p0, Lcom/market2345/lm/activity/FastAdapter$3;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    const v2, 0x7f090007

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 255
    .local v0, "app":Lcom/market2345/lm/bean/UnionAppInfo;
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter$3;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->mDownloadInfos:Ljava/util/Map;
    invoke-static {v2}, Lcom/market2345/lm/activity/FastAdapter;->access$800(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/download/DownloadInfo;

    .line 256
    .local v1, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v1, :cond_0

    .line 257
    iget v2, v1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    packed-switch v2, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter$3;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v2}, Lcom/market2345/lm/activity/FastAdapter;->access$500(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    iget-wide v4, v1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v2, v4, v5}, Lcom/market2345/download/DownloadManager;->resumeDownload(J)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_0
    .end packed-switch
.end method
