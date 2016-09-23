.class public Lcom/market2345/applist/RecycleBin;
.super Ljava/lang/Object;
.source "RecycleBin.java"


# instance fields
.field private activeViewTypes:[I

.field private activeViews:[Landroid/view/View;

.field private currentScrapViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private scrapViews:[Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewTypeCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/market2345/applist/RecycleBin;->activeViews:[Landroid/view/View;

    .line 15
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/market2345/applist/RecycleBin;->activeViewTypes:[I

    return-void
.end method

.method private pruneScrapViews()V
    .locals 10

    .prologue
    .line 108
    iget-object v9, p0, Lcom/market2345/applist/RecycleBin;->activeViews:[Landroid/view/View;

    array-length v3, v9

    .line 109
    .local v3, "maxViews":I
    iget v8, p0, Lcom/market2345/applist/RecycleBin;->viewTypeCount:I

    .line 110
    .local v8, "viewTypeCount":I
    iget-object v5, p0, Lcom/market2345/applist/RecycleBin;->scrapViews:[Landroid/util/SparseArray;

    .line 111
    .local v5, "scrapViews":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 112
    aget-object v4, v5, v1

    .line 113
    .local v4, "scrapPile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 114
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 115
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 116
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 117
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    return-void
.end method

.method static retrieveFromScrap(Landroid/util/SparseArray;I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "scrapViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 124
    .local v4, "size":I
    if-lez v4, :cond_2

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 128
    .local v0, "fromPosition":I
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 129
    .local v5, "view":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 139
    .end local v0    # "fromPosition":I
    .end local v1    # "i":I
    .end local v5    # "view":Landroid/view/View;
    :goto_1
    return-object v5

    .line 126
    .restart local v0    # "fromPosition":I
    .restart local v1    # "i":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "fromPosition":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v4, -0x1

    .line 135
    .local v2, "index":I
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 136
    .local v3, "r":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->remove(I)V

    move-object v5, v3

    .line 137
    goto :goto_1

    .line 139
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "r":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method addScrapView(Landroid/view/View;II)V
    .locals 2
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "viewType"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/market2345/applist/RecycleBin;->viewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/market2345/applist/RecycleBin;->currentScrapViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 67
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/market2345/applist/RecycleBin;->scrapViews:[Landroid/util/SparseArray;

    aget-object v0, v0, p3

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method getScrapView(II)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "viewType"    # I

    .prologue
    .line 44
    iget v0, p0, Lcom/market2345/applist/RecycleBin;->viewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/market2345/applist/RecycleBin;->currentScrapViews:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/market2345/applist/RecycleBin;->retrieveFromScrap(Landroid/util/SparseArray;I)Landroid/view/View;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/market2345/applist/RecycleBin;->scrapViews:[Landroid/util/SparseArray;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/market2345/applist/RecycleBin;->scrapViews:[Landroid/util/SparseArray;

    aget-object v0, v0, p2

    invoke-static {v0, p1}, Lcom/market2345/applist/RecycleBin;->retrieveFromScrap(Landroid/util/SparseArray;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 71
    iget-object v1, p0, Lcom/market2345/applist/RecycleBin;->activeViews:[Landroid/view/View;

    .line 72
    .local v1, "activeViews":[Landroid/view/View;
    iget-object v0, p0, Lcom/market2345/applist/RecycleBin;->activeViewTypes:[I

    .line 73
    .local v0, "activeViewTypes":[I
    iget v8, p0, Lcom/market2345/applist/RecycleBin;->viewTypeCount:I

    if-le v8, v4, :cond_1

    .line 75
    .local v4, "multipleScraps":Z
    :goto_0
    iget-object v5, p0, Lcom/market2345/applist/RecycleBin;->currentScrapViews:Landroid/util/SparseArray;

    .line 76
    .local v5, "scrapViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    array-length v2, v1

    .line 77
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 78
    aget-object v6, v1, v3

    .line 79
    .local v6, "victim":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 80
    aget v7, v0, v3

    .line 82
    .local v7, "whichScrap":I
    aput-object v10, v1, v3

    .line 83
    const/4 v8, -0x1

    aput v8, v0, v3

    .line 85
    invoke-virtual {p0, v7}, Lcom/market2345/applist/RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 77
    .end local v7    # "whichScrap":I
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 73
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "multipleScraps":Z
    .end local v5    # "scrapViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .end local v6    # "victim":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 89
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "multipleScraps":Z
    .restart local v5    # "scrapViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .restart local v6    # "victim":Landroid/view/View;
    .restart local v7    # "whichScrap":I
    :cond_2
    if-eqz v4, :cond_3

    .line 90
    iget-object v8, p0, Lcom/market2345/applist/RecycleBin;->scrapViews:[Landroid/util/SparseArray;

    aget-object v5, v8, v7

    .line 92
    :cond_3
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_0

    .line 95
    invoke-virtual {v6, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_2

    .line 100
    .end local v6    # "victim":Landroid/view/View;
    .end local v7    # "whichScrap":I
    :cond_4
    invoke-direct {p0}, Lcom/market2345/applist/RecycleBin;->pruneScrapViews()V

    .line 101
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 25
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_0
    new-array v1, p1, [Landroid/util/SparseArray;

    .line 30
    .local v1, "scrapViews":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 31
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    aput-object v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    iput p1, p0, Lcom/market2345/applist/RecycleBin;->viewTypeCount:I

    .line 34
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/market2345/applist/RecycleBin;->currentScrapViews:Landroid/util/SparseArray;

    .line 35
    iput-object v1, p0, Lcom/market2345/applist/RecycleBin;->scrapViews:[Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method protected shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 39
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
