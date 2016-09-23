.class public Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "PinnedHeaderExpandableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I

.field private mOldState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->mOldState:I

    .line 30
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->registerListener()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->mOldState:I

    .line 25
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->registerListener()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->mOldState:I

    .line 20
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->registerListener()V

    .line 21
    return-void
.end method

.method private registerListener()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0, p0}, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 36
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 38
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 39
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p2}, Lcom/market2345/dumpclean/widget/PinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 326
    .local v2, "flatPos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 327
    .local v1, "groupPosition":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 330
    .local v0, "childPosition":I
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 334
    return-void
.end method
