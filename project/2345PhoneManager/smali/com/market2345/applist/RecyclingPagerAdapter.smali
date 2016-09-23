.class public abstract Lcom/market2345/applist/RecyclingPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RecyclingPagerAdapter.java"


# static fields
.field static final IGNORE_ITEM_VIEW_TYPE:I = -0x1


# instance fields
.field private final recycleBin:Lcom/market2345/applist/RecycleBin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/market2345/applist/RecycleBin;

    invoke-direct {v0}, Lcom/market2345/applist/RecycleBin;-><init>()V

    invoke-direct {p0, v0}, Lcom/market2345/applist/RecyclingPagerAdapter;-><init>(Lcom/market2345/applist/RecycleBin;)V

    .line 16
    return-void
.end method

.method constructor <init>(Lcom/market2345/applist/RecycleBin;)V
    .locals 1
    .param p1, "recycleBin"    # Lcom/market2345/applist/RecycleBin;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/market2345/applist/RecyclingPagerAdapter;->recycleBin:Lcom/market2345/applist/RecycleBin;

    .line 20
    invoke-virtual {p0}, Lcom/market2345/applist/RecyclingPagerAdapter;->getViewTypeCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/market2345/applist/RecycleBin;->setViewTypeCount(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 43
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 44
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/market2345/applist/RecyclingPagerAdapter;->getItemViewType(I)I

    move-result v1

    .line 46
    .local v1, "viewType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/market2345/applist/RecyclingPagerAdapter;->recycleBin:Lcom/market2345/applist/RecycleBin;

    invoke-virtual {v2, v0, p2, v1}, Lcom/market2345/applist/RecycleBin;->addScrapView(Landroid/view/View;II)V

    .line 49
    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lcom/market2345/applist/RecyclingPagerAdapter;->getItemViewType(I)I

    move-result v1

    .line 32
    .local v1, "viewType":I
    const/4 v0, 0x0

    .line 33
    .local v0, "view":Landroid/view/View;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/market2345/applist/RecyclingPagerAdapter;->recycleBin:Lcom/market2345/applist/RecycleBin;

    invoke-virtual {v2, p2, v1}, Lcom/market2345/applist/RecycleBin;->getScrapView(II)Landroid/view/View;

    move-result-object v0

    .line 36
    :cond_0
    invoke-virtual {p0, p2, v0, p1}, Lcom/market2345/applist/RecyclingPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/market2345/applist/RecyclingPagerAdapter;->recycleBin:Lcom/market2345/applist/RecycleBin;

    invoke-virtual {v0}, Lcom/market2345/applist/RecycleBin;->scrapActiveViews()V

    .line 26
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method
