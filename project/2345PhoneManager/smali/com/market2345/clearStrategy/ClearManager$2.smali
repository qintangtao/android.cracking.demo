.class Lcom/market2345/clearStrategy/ClearManager$2;
.super Ljava/lang/Object;
.source "ClearManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/clearStrategy/ClearManager;->doDownload(Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/clearStrategy/ClearManager;

.field final synthetic val$clearDbDownloader:Lcom/market2345/clearStrategy/ClearDbDownloader;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$list:Lcom/market2345/clearStrategy/ClearDataResp$Data;


# direct methods
.method constructor <init>(Lcom/market2345/clearStrategy/ClearManager;Lcom/market2345/clearStrategy/ClearDbDownloader;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDataResp$Data;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/market2345/clearStrategy/ClearManager$2;->this$0:Lcom/market2345/clearStrategy/ClearManager;

    iput-object p2, p0, Lcom/market2345/clearStrategy/ClearManager$2;->val$clearDbDownloader:Lcom/market2345/clearStrategy/ClearDbDownloader;

    iput-object p3, p0, Lcom/market2345/clearStrategy/ClearManager$2;->val$downloadUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/market2345/clearStrategy/ClearManager$2;->val$list:Lcom/market2345/clearStrategy/ClearDataResp$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearManager$2;->val$clearDbDownloader:Lcom/market2345/clearStrategy/ClearDbDownloader;

    iget-object v1, p0, Lcom/market2345/clearStrategy/ClearManager$2;->val$downloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/clearStrategy/ClearManager$2;->this$0:Lcom/market2345/clearStrategy/ClearManager;

    # invokes: Lcom/market2345/clearStrategy/ClearManager;->getClearDbTmpFile()Ljava/io/File;
    invoke-static {v2}, Lcom/market2345/clearStrategy/ClearManager;->access$400(Lcom/market2345/clearStrategy/ClearManager;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/clearStrategy/ClearManager$2;->val$list:Lcom/market2345/clearStrategy/ClearDataResp$Data;

    iget-object v3, v3, Lcom/market2345/clearStrategy/ClearDataResp$Data;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/market2345/clearStrategy/ClearDbDownloader;->downloadDb(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 175
    return-void
.end method
