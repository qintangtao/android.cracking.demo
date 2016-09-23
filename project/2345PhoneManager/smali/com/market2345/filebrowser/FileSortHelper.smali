.class public Lcom/market2345/filebrowser/FileSortHelper;
.super Ljava/lang/Object;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileSortHelper$FileComparator;,
        Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    }
.end annotation


# instance fields
.field private cmpDate:Ljava/util/Comparator;

.field private cmpName:Ljava/util/Comparator;

.field private cmpSize:Ljava/util/Comparator;

.field private cmpType:Ljava/util/Comparator;

.field private mComparatorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            "Ljava/util/Comparator;",
            ">;"
        }
    .end annotation
.end field

.field private mFileFirst:Z

.field private mSort:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/market2345/filebrowser/FileSortHelper$1;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileSortHelper$1;-><init>(Lcom/market2345/filebrowser/FileSortHelper;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpName:Ljava/util/Comparator;

    .line 109
    new-instance v0, Lcom/market2345/filebrowser/FileSortHelper$2;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileSortHelper$2;-><init>(Lcom/market2345/filebrowser/FileSortHelper;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpSize:Ljava/util/Comparator;

    .line 118
    new-instance v0, Lcom/market2345/filebrowser/FileSortHelper$3;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileSortHelper$3;-><init>(Lcom/market2345/filebrowser/FileSortHelper;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpDate:Ljava/util/Comparator;

    .line 132
    new-instance v0, Lcom/market2345/filebrowser/FileSortHelper$4;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileSortHelper$4;-><init>(Lcom/market2345/filebrowser/FileSortHelper;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpType:Ljava/util/Comparator;

    .line 42
    sget-object v0, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->name:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mSort:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .line 43
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->name:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpName:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->size:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpSize:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpDate:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->type:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileSortHelper;->cmpType:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileSortHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileSortHelper;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mFileFirst:Z

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileSortHelper;J)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileSortHelper;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/market2345/filebrowser/FileSortHelper;->longToCompareInt(J)I

    move-result v0

    return v0
.end method

.method private longToCompareInt(J)I
    .locals 5
    .param p1, "result"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComParator(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/Comparator;
    .locals 1
    .param p1, "sortMethod"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileSortHelper;->mSort:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public getSortMethod()Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/filebrowser/FileSortHelper;->mSort:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    return-object v0
.end method

.method public setFileFirst(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/market2345/filebrowser/FileSortHelper;->mFileFirst:Z

    .line 62
    return-void
.end method

.method public setSortMethog(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)V
    .locals 0
    .param p1, "s"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/market2345/filebrowser/FileSortHelper;->mSort:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .line 52
    return-void
.end method
