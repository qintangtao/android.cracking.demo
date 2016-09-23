.class abstract Lcom/market2345/filebrowser/FileSortHelper$FileComparator;
.super Ljava/lang/Object;
.source "FileSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/market2345/filebrowser/bean/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileSortHelper;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/FileSortHelper;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;->this$0:Lcom/market2345/filebrowser/FileSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/FileSortHelper;Lcom/market2345/filebrowser/FileSortHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/FileSortHelper;
    .param p2, "x1"    # Lcom/market2345/filebrowser/FileSortHelper$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;-><init>(Lcom/market2345/filebrowser/FileSortHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/market2345/filebrowser/bean/FileInfo;Lcom/market2345/filebrowser/bean/FileInfo;)I
    .locals 4
    .param p1, "object1"    # Lcom/market2345/filebrowser/bean/FileInfo;
    .param p2, "object2"    # Lcom/market2345/filebrowser/bean/FileInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 80
    iget-boolean v2, p1, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    iget-boolean v3, p2, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    if-ne v2, v3, :cond_1

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;->doCompare(Lcom/market2345/filebrowser/bean/FileInfo;Lcom/market2345/filebrowser/bean/FileInfo;)I

    move-result v0

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;->this$0:Lcom/market2345/filebrowser/FileSortHelper;

    # getter for: Lcom/market2345/filebrowser/FileSortHelper;->mFileFirst:Z
    invoke-static {v2}, Lcom/market2345/filebrowser/FileSortHelper;->access$000(Lcom/market2345/filebrowser/FileSortHelper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-boolean v2, p1, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 93
    :cond_2
    iget-boolean v2, p1, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/market2345/filebrowser/bean/FileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/market2345/filebrowser/bean/FileInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/market2345/filebrowser/FileSortHelper$FileComparator;->compare(Lcom/market2345/filebrowser/bean/FileInfo;Lcom/market2345/filebrowser/bean/FileInfo;)I

    move-result v0

    return v0
.end method

.method protected abstract doCompare(Lcom/market2345/filebrowser/bean/FileInfo;Lcom/market2345/filebrowser/bean/FileInfo;)I
.end method
