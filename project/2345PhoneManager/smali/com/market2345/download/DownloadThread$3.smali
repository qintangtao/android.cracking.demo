.class Lcom/market2345/download/DownloadThread$3;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadThread;->executeDownload(Lcom/market2345/download/DownloadThread$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadThread;

.field final synthetic val$finalConn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadThread;Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/market2345/download/DownloadThread$3;->this$0:Lcom/market2345/download/DownloadThread;

    iput-object p2, p0, Lcom/market2345/download/DownloadThread$3;->val$finalConn:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/market2345/download/DownloadThread$3;->val$finalConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/download/DownloadThread$3;->val$finalConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 977
    :cond_0
    return-void
.end method
