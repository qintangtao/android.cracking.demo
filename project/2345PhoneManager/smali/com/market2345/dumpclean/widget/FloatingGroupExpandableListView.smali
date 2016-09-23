.class public Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "FloatingGroupExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I


# instance fields
.field private mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

.field private mClearSelectorOnTapAction:Ljava/lang/Runnable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDrawSelectorOnTop:Z

.field private mFloatingGroupEnabled:Z

.field private mFloatingGroupPosition:I

.field private mFloatingGroupScrollY:I

.field private mFloatingGroupView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandledByOnInterceptTouchEvent:Z

.field private mHandledByOnTouchEvent:Z

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mOnClickAction:Ljava/lang/Runnable;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnScrollFloatingGroupListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPositionSelectorOnTapAction:Ljava/lang/Runnable;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSelectorEnabled:Z

.field private mSelectorPosition:I

.field private final mSelectorRect:Landroid/graphics/Rect;

.field private mShouldPositionSelector:Z

.field private mViewAttachInfo:Ljava/lang/Object;

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-array v0, v2, [I

    sput-object v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->EMPTY_STATE_SET:[I

    .line 32
    new-array v0, v3, [I

    const v1, 0x10100a8

    aput v1, v0, v2

    sput-object v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 35
    new-array v0, v3, [I

    const v1, 0x10100a9

    aput v1, v0, v2

    sput-object v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_STATE_SETS:[[I

    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 82
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 87
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 92
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->createFloatingGroupView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    return v0
.end method

.method static synthetic access$700(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->positionSelectorOnFloatingGroup()V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnClickAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createFloatingGroupView(I)V
    .locals 27
    .param p1, "position"    # I

    .prologue
    .line 361
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    .line 362
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPackedPositionGroup(J)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    .line 364
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 366
    .local v6, "child":Landroid/view/View;
    const v23, 0x7f09000f

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v21

    .line 367
    .local v21, "tag":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 368
    check-cast v21, Ljava/lang/Boolean;

    .end local v21    # "tag":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 369
    .local v5, "changedVisibility":Z
    if-eqz v5, :cond_0

    .line 370
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    const v23, 0x7f09000f

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    .end local v5    # "changedVisibility":Z
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 376
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 458
    :cond_2
    :goto_1
    return-void

    .line 380
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v10

    .line 381
    .local v10, "floatingGroupFlatPosition":I
    sub-int v11, v10, p1

    .line 383
    .local v11, "floatingGroupListPosition":I
    if-ltz v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_4

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 386
    .local v9, "currentGroupView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 388
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_4

    .line 389
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 390
    const v23, 0x7f09000f

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 394
    .end local v9    # "currentGroupView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    move/from16 v23, v0

    if-ltz v23, :cond_5

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->isGroupExpanded(I)Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v27}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->isClickable()Z

    move-result v23

    if-nez v23, :cond_8

    .line 398
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorEnabled:Z

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$7;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->loadAttachInfo()V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setAttachInfo(Landroid/view/View;)V

    .line 414
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 419
    .local v18, "params":Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_6

    .line 420
    new-instance v18, Landroid/widget/AbsListView$LayoutParams;

    .end local v18    # "params":Landroid/widget/AbsListView$LayoutParams;
    const/16 v23, -0x1

    const/16 v24, -0x2

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 421
    .restart local v18    # "params":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mWidthMeasureSpec:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 425
    .local v8, "childWidthSpec":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v19, v0

    .line 427
    .local v19, "paramsHeight":I
    if-lez v19, :cond_9

    .line 428
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 433
    .local v7, "childHeightSpec":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v7}, Landroid/view/View;->measure(II)V

    .line 435
    const/4 v12, 0x0

    .line 437
    .local v12, "floatingGroupScrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v15

    .line 438
    .local v15, "nextGroupFlatPosition":I
    sub-int v16, v15, p1

    .line 440
    .local v16, "nextGroupListPosition":I
    if-ltz v16, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildCount()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 443
    .local v17, "nextGroupView":Landroid/view/View;
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getDividerHeight()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 444
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getDividerHeight()I

    move-result v25

    add-int v24, v24, v25

    sub-int v12, v23, v24

    .line 448
    .end local v17    # "nextGroupView":Landroid/view/View;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v14

    .line 449
    .local v14, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v23

    add-int v22, v23, v12

    .line 450
    .local v22, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v20, v14, v23

    .line 451
    .local v20, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v4, v22, v23

    .line 452
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 454
    move-object/from16 v0, p0

    iput v12, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupScrollY:I

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollFloatingGroupListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollFloatingGroupListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupScrollY:I

    move/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;->onScrollFloatingGroupListener(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 407
    .end local v4    # "bottom":I
    .end local v7    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "floatingGroupScrollY":I
    .end local v14    # "left":I
    .end local v15    # "nextGroupFlatPosition":I
    .end local v16    # "nextGroupListPosition":I
    .end local v18    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v19    # "paramsHeight":I
    .end local v20    # "right":I
    .end local v22    # "top":I
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorEnabled:Z

    goto/16 :goto_2

    .line 430
    .restart local v8    # "childWidthSpec":I
    .restart local v18    # "params":Landroid/widget/AbsListView$LayoutParams;
    .restart local v19    # "paramsHeight":I
    :cond_9
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_3
.end method

.method private drawDefaultSelector(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 496
    iget v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorPosition:I

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    .line 498
    .local v1, "selectorListPosition":I
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    iget v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 500
    .local v0, "floatingGroupFlatPosition":I
    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorPosition:I

    if-eq v2, v0, :cond_1

    .line 501
    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 504
    .end local v0    # "floatingGroupFlatPosition":I
    :cond_1
    return-void
.end method

.method private drawFloatingGroupIndicator(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 530
    const-class v4, Landroid/widget/ExpandableListView;

    const-string v6, "mGroupIndicator"

    invoke-static {v4, v6, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 531
    .local v0, "groupIndicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 532
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    iget v6, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-virtual {v4, v6}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->isGroupExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v6, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    iget v7, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-virtual {v6, v7}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v5, 0x2

    :cond_0
    or-int v3, v4, v5

    .line 535
    .local v3, "stateSetIndex":I
    sget-object v4, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 537
    const-class v4, Landroid/widget/ExpandableListView;

    const-string v5, "mIndicatorLeft"

    invoke-static {v4, v5, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 538
    .local v1, "indicatorLeft":I
    const-class v4, Landroid/widget/ExpandableListView;

    const-string v5, "mIndicatorRight"

    invoke-static {v4, v5, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 540
    .local v2, "indicatorRight":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    .line 541
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 546
    :goto_1
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 547
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    .end local v1    # "indicatorLeft":I
    .end local v2    # "indicatorRight":I
    .end local v3    # "stateSetIndex":I
    :cond_1
    return-void

    :cond_2
    move v4, v5

    .line 532
    goto :goto_0

    .line 543
    .restart local v1    # "indicatorLeft":I
    .restart local v2    # "indicatorRight":I
    .restart local v3    # "stateSetIndex":I
    :cond_3
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method private drawFloatingGroupSelector(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    iget v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 509
    .local v0, "floatingGroupFlatPosition":I
    iget v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorPosition:I

    if-ne v1, v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 511
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 514
    .end local v0    # "floatingGroupFlatPosition":I
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 518
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 519
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 525
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 527
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 117
    new-instance v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnClickAction:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$4;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$4;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mClearSelectorOnTapAction:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;

    invoke-direct {v2, p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 174
    return-void
.end method

.method private loadAttachInfo()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 462
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-static {v0, v1, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    .line 464
    :cond_0
    return-void
.end method

.method private positionSelectorOnFloatingGroup()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 482
    iget-boolean v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 483
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 484
    iget v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 485
    .local v0, "floatingGroupFlatPosition":I
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "positionSelector"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v7

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, p0, v4}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v0    # "floatingGroupFlatPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->invalidate()V

    .line 491
    :cond_0
    iput-boolean v6, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    .line 492
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 493
    return-void

    .line 487
    :cond_1
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "positionSelector"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, p0, v4}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setAttachInfo(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    if-nez p1, :cond_1

    .line 479
    :cond_0
    return-void

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 471
    const-class v2, Landroid/view/View;

    const-string v3, "mAttachInfo"

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    invoke-static {v2, v3, p1, v4}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->setFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    :cond_2
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 474
    check-cast v1, Landroid/view/ViewGroup;

    .line 475
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 476
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setAttachInfo(Landroid/view/View;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 196
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorPosition"

    invoke-static {v0, v1, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorPosition:I

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    const-class v0, Landroid/widget/AbsListView;

    const-string v2, "mSelectorRect"

    invoke-static {v0, v2, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawDefaultSelector(Landroid/graphics/Canvas;)V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 210
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_1

    .line 211
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawFloatingGroupSelector(Landroid/graphics/Canvas;)V

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 215
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 216
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 219
    :cond_2
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawFloatingGroupIndicator(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 222
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    if-eqz v0, :cond_3

    .line 223
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawDefaultSelector(Landroid/graphics/Canvas;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->drawFloatingGroupSelector(Landroid/graphics/Canvas;)V

    .line 227
    :cond_3
    return-void

    .line 198
    :cond_4
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mMotionPosition"

    invoke-static {v0, v1, p0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorPosition:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 233
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 234
    :cond_0
    iput-boolean v7, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    .line 235
    iput-boolean v7, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    .line 236
    iput-boolean v7, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    .line 240
    :cond_1
    iget-boolean v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 241
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 242
    .local v2, "screenCoords":[I
    invoke-virtual {p0, v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->getLocationInWindow([I)V

    .line 243
    new-instance v1, Landroid/graphics/RectF;

    aget v4, v2, v7

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aget v5, v2, v3

    iget-object v6, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v2, v7

    iget-object v7, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v3

    iget-object v8, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 245
    .local v1, "floatingGroupRect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    iget-boolean v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelectorEnabled:Z

    if-eqz v4, :cond_2

    .line 247
    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 269
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    .end local v1    # "floatingGroupRect":Landroid/graphics/RectF;
    .end local v2    # "screenCoords":[I
    :goto_1
    return v3

    .line 249
    .restart local v1    # "floatingGroupRect":Landroid/graphics/RectF;
    .restart local v2    # "screenCoords":[I
    :pswitch_0
    iput-boolean v3, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    .line 250
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->positionSelectorOnFloatingGroup()V

    .line 255
    invoke-virtual {p0, v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setPressed(Z)V

    .line 256
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 257
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mClearSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mClearSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 275
    .end local v1    # "floatingGroupRect":Landroid/graphics/RectF;
    .end local v2    # "screenCoords":[I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 184
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    .line 281
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 189
    iput p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mWidthMeasureSpec:I

    .line 190
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    .line 287
    iget-boolean v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 309
    instance-of v0, p1, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The adapter must be an instance of WrapperExpandableListAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    check-cast p1, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    .end local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setAdapter(Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;)V

    .line 313
    return-void
.end method

.method public setAdapter(Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 318
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    .line 325
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 326
    new-instance v0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$6;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$6;-><init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 337
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 339
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setDrawSelectorOnTop(Z)V

    .line 304
    iput-boolean p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    .line 305
    return-void
.end method

.method public setFloatingGroupEnabled(Z)V
    .locals 0
    .param p1, "floatingGroupEnabled"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    .line 354
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 349
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 350
    return-void
.end method

.method public setOnScrollFloatingGroupListener(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollFloatingGroupListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

    .line 358
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 344
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 292
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 295
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 298
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 299
    return-void
.end method
