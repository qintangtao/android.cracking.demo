.class Lcom/market2345/cacheclean/ScanApkBigFile$1;
.super Ljava/lang/Thread;
.source "ScanApkBigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ScanApkBigFile;->startDeepScan(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ScanApkBigFile;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    iput-object p2, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 206
    iget-object v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    # setter for: Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z
    invoke-static {v1, v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->access$002(Lcom/market2345/cacheclean/ScanApkBigFile;Z)Z

    .line 207
    iget-object v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v2, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->val$file:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->FindAllAPKFile(Ljava/io/File;)V

    .line 209
    sget-object v1, Lcom/market2345/cacheclean/CleanMainACtivity;->outPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/market2345/cacheclean/CleanMainACtivity;->outPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "fileOut":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v1, v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->FindAllAPKFile(Ljava/io/File;)V

    .line 217
    .end local v0    # "fileOut":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    # invokes: Lcom/market2345/cacheclean/ScanApkBigFile;->setChanged()V
    invoke-static {v1}, Lcom/market2345/cacheclean/ScanApkBigFile;->access$100(Lcom/market2345/cacheclean/ScanApkBigFile;)V

    .line 218
    iget-object v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->notifyObservers(Ljava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile$1;->this$0:Lcom/market2345/cacheclean/ScanApkBigFile;

    # setter for: Lcom/market2345/cacheclean/ScanApkBigFile;->end:Z
    invoke-static {v1, v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->access$202(Lcom/market2345/cacheclean/ScanApkBigFile;Z)Z

    .line 220
    return-void
.end method
