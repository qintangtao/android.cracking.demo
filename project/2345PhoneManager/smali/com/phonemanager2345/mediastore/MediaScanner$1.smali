.class Lcom/phonemanager2345/mediastore/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/mediastore/MediaScanner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/phonemanager2345/mediastore/MediaScanner;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    iput-object p2, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    iget-object v1, v1, Lcom/phonemanager2345/mediastore/MediaScanner;->queque:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "next":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    # getter for: Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/phonemanager2345/mediastore/MediaScanner;->access$000(Lcom/phonemanager2345/mediastore/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-static {v0}, Lcom/phonemanager2345/mediastore/MediaScanner;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    # getter for: Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/phonemanager2345/mediastore/MediaScanner;->access$000(Lcom/phonemanager2345/mediastore/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    const-string v2, "2345\u624b\u673a\u52a9\u624b/ring"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    const-string v2, "is_alarm"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    const-string v2, "is_music"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    const-string v2, "is_ringtone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    iget-object v2, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    iget-object v2, v2, Lcom/phonemanager2345/mediastore/MediaScanner;->queque:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "next":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    # getter for: Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v2}, Lcom/phonemanager2345/mediastore/MediaScanner;->access$000(Lcom/phonemanager2345/mediastore/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    invoke-static {v0}, Lcom/phonemanager2345/mediastore/MediaScanner;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    return-void

    .line 51
    .end local v0    # "next":Ljava/lang/String;
    :cond_1
    const-string v2, "2345\u624b\u673a\u52a9\u624b/music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "is_music"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    iget-object v2, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v1    # "values":Landroid/content/ContentValues;
    .restart local v0    # "next":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/phonemanager2345/mediastore/MediaScanner$1;->this$0:Lcom/phonemanager2345/mediastore/MediaScanner;

    # getter for: Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v2}, Lcom/phonemanager2345/mediastore/MediaScanner;->access$000(Lcom/phonemanager2345/mediastore/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    goto :goto_1
.end method
