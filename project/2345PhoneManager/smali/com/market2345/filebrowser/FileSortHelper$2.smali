.class Lcom/market2345/filebrowser/FileSortHelper$2;
.super Lcom/market2345/filebrowser/FileSortHelper$FileComparator;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileSortHelper;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileSortHelper;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/market2345/filebrowser/FileSortHelper$2;->this$0:Lcom/market2345/filebrowser/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;-><init>(Lcom/market2345/filebrowser/FileSortHelper;Lcom/market2345/filebrowser/FileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/market2345/filebrowser/bean/FileInfo;Lcom/market2345/filebrowser/bean/FileInfo;)I
    .locals 6
    .param p1, "object1"    # Lcom/market2345/filebrowser/bean/FileInfo;
    .param p2, "object2"    # Lcom/market2345/filebrowser/bean/FileInfo;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper$2;->this$0:Lcom/market2345/filebrowser/FileSortHelper;

    iget-wide v2, p1, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    iget-wide v4, p2, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    sub-long/2addr v2, v4

    # invokes: Lcom/market2345/filebrowser/FileSortHelper;->longToCompareInt(J)I
    invoke-static {v0, v2, v3}, Lcom/market2345/filebrowser/FileSortHelper;->access$200(Lcom/market2345/filebrowser/FileSortHelper;J)I

    move-result v0

    return v0
.end method
