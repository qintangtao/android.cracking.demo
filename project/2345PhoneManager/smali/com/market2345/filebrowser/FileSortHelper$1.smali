.class Lcom/market2345/filebrowser/FileSortHelper$1;
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
    .line 101
    iput-object p1, p0, Lcom/market2345/filebrowser/FileSortHelper$1;->this$0:Lcom/market2345/filebrowser/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;-><init>(Lcom/market2345/filebrowser/FileSortHelper;Lcom/market2345/filebrowser/FileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/market2345/filebrowser/bean/FileInfo;Lcom/market2345/filebrowser/bean/FileInfo;)I
    .locals 2
    .param p1, "object1"    # Lcom/market2345/filebrowser/bean/FileInfo;
    .param p2, "object2"    # Lcom/market2345/filebrowser/bean/FileInfo;

    .prologue
    .line 105
    iget-object v0, p1, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    iget-object v1, p2, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
