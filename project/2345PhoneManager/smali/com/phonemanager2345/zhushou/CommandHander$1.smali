.class final Lcom/phonemanager2345/zhushou/CommandHander$1;
.super Ljava/lang/Object;
.source "CommandHander.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/CommandHander;->setRingtone(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2312
    iput p1, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$type:I

    iput-object p2, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 2335
    # getter for: Lcom/phonemanager2345/zhushou/CommandHander;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->access$100()Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$path:Ljava/lang/String;

    invoke-static {v2}, Lcom/phonemanager2345/mediastore/MediaScanner;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "newUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 2316
    iget v0, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 2329
    :goto_0
    # getter for: Lcom/phonemanager2345/zhushou/CommandHander;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->access$100()Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 2331
    return-void

    .line 2318
    :pswitch_0
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/market2345/util/RingSetUtil;->setRing(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    # setter for: Lcom/phonemanager2345/zhushou/CommandHander;->code:I
    invoke-static {v0}, Lcom/phonemanager2345/zhushou/CommandHander;->access$002(I)I

    goto :goto_0

    .line 2321
    :pswitch_1
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/market2345/util/RingSetUtil;->setSMSAudio(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    # setter for: Lcom/phonemanager2345/zhushou/CommandHander;->code:I
    invoke-static {v0}, Lcom/phonemanager2345/zhushou/CommandHander;->access$002(I)I

    goto :goto_0

    .line 2324
    :pswitch_2
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/market2345/util/RingSetUtil;->setAlarmAudio(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    # setter for: Lcom/phonemanager2345/zhushou/CommandHander;->code:I
    invoke-static {v0}, Lcom/phonemanager2345/zhushou/CommandHander;->access$002(I)I

    goto :goto_0

    .line 2316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
