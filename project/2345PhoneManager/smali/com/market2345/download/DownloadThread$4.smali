.class Lcom/market2345/download/DownloadThread$4;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadThread;->transferData(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadThread;

.field final synthetic val$finalIn:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadThread;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/market2345/download/DownloadThread$4;->this$0:Lcom/market2345/download/DownloadThread;

    iput-object p2, p0, Lcom/market2345/download/DownloadThread$4;->val$finalIn:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/market2345/download/DownloadThread$4;->val$finalIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/market2345/download/DownloadThread$4;->val$finalIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
