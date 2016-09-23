.class public Lcom/market2345/customview/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/customview/DropDownListView$OnDropDownListener;
    }
.end annotation


# static fields
.field public static final HEADER_STATUS_CLICK_TO_LOAD:I = 0x1

.field public static final HEADER_STATUS_DROP_DOWN_TO_LOAD:I = 0x2

.field public static final HEADER_STATUS_LOADING:I = 0x4

.field public static final HEADER_STATUS_RELEASE_TO_LOAD:I = 0x3


# instance fields
.field private actionDownPointY:F

.field private context:Landroid/content/Context;

.field private currentHeaderStatus:I

.field private currentScrollState:I

.field private flipAnimation:Landroid/view/animation/RotateAnimation;

.field private footerButton:Landroid/widget/Button;

.field private footerDefaultText:Ljava/lang/String;

.field private footerLayout:Landroid/widget/RelativeLayout;

.field private footerLoadingText:Ljava/lang/String;

.field private footerNoMoreText:Ljava/lang/String;

.field private footerProgressBar:Landroid/widget/ProgressBar;

.field private hasMore:Z

.field private hasReachedTop:Z

.field private headerDefaultText:Ljava/lang/String;

.field private headerImage:Landroid/widget/ImageView;

.field private headerLayout:Landroid/widget/RelativeLayout;

.field private headerLoadingText:Ljava/lang/String;

.field private headerOriginalHeight:I

.field private headerOriginalTopPadding:I

.field private headerPaddingTopRate:F

.field private headerProgressBar:Landroid/widget/ProgressBar;

.field private headerPullText:Ljava/lang/String;

.field private headerReleaseMinDistance:I

.field private headerReleaseText:Ljava/lang/String;

.field private headerSecondText:Landroid/widget/TextView;

.field private headerText:Landroid/widget/TextView;

.field private imgMore:Landroid/widget/ImageView;

.field private isAutoLoadOnBottom:Z

.field private isDropDownStyle:Z

.field private isOnBottomLoading:Z

.field private isOnBottomStyle:Z

.field private isShowFooterProgressBar:Z

.field private isShowFooterWhenNoMore:Z

.field private listViewMaxHeight:I

.field mDisallow:Z

.field private mDragging:Z

.field private mLastMotionY:F

.field private mParentScrollView:Landroid/view/ViewGroup;

.field private mStartMotionY:F

.field private mTouchSlop:I

.field private onDropDownListener:Lcom/market2345/customview/DropDownListView$OnDropDownListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private reverseFlipAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    .line 30
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    .line 32
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    .line 81
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->headerPaddingTopRate:F

    .line 91
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    .line 96
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    .line 101
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterWhenNoMore:Z

    .line 110
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    .line 140
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomLoading:Z

    .line 145
    iput v1, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->mStartMotionY:F

    .line 1062
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    .line 163
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->init(Landroid/content/Context;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->initTouchSlop(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    .line 30
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    .line 32
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    .line 81
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->headerPaddingTopRate:F

    .line 91
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    .line 96
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    .line 101
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterWhenNoMore:Z

    .line 110
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    .line 140
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomLoading:Z

    .line 145
    iput v1, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->mStartMotionY:F

    .line 1062
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/market2345/customview/DropDownListView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->init(Landroid/content/Context;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->initTouchSlop(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    .line 30
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    .line 32
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    .line 81
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->headerPaddingTopRate:F

    .line 91
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    .line 96
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    .line 101
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterWhenNoMore:Z

    .line 110
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    .line 140
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomLoading:Z

    .line 145
    iput v1, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->mStartMotionY:F

    .line 1062
    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/market2345/customview/DropDownListView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->init(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->initTouchSlop(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method private adjustHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 987
    .local v1, "pointerCount":I
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->isVerticalFadingEdgeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 988
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/market2345/customview/DropDownListView;->setVerticalScrollBarEnabled(Z)V

    .line 990
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 991
    iget v2, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 992
    :cond_1
    iget-object v2, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    iget v5, p0, Lcom/market2345/customview/DropDownListView;->actionDownPointY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/market2345/customview/DropDownListView;->headerOriginalHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/market2345/customview/DropDownListView;->headerPaddingTopRate:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 990
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_3
    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1036
    sget-object v1, Lcom/market2345/R$styleable;->drop_down_list_attr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1037
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    .line 1038
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    .line 1039
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    .line 1040
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1041
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->initDropDownStyle()V

    .line 184
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->initOnBottomStyle()V

    .line 187
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    return-void
.end method

.method private initDropDownStyle()V
    .locals 8

    .prologue
    .line 194
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 195
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->addHeaderView(Landroid/view/View;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 202
    :cond_2
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseMinDistance:I

    .line 207
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 208
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 209
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 210
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 211
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 212
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 213
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 214
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 216
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerDefaultText:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerPullText:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseText:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLoadingText:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 222
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-virtual {v7, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    .line 223
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090238

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    .line 225
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerProgressBar:Landroid/widget/ProgressBar;

    .line 226
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerSecondText:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 228
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/market2345/customview/DropDownListView$1;

    invoke-direct {v1, p0}, Lcom/market2345/customview/DropDownListView$1;-><init>(Lcom/market2345/customview/DropDownListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->addHeaderView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/market2345/customview/DropDownListView;->measureHeaderLayout(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->headerOriginalHeight:I

    .line 240
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->headerOriginalTopPadding:I

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    goto/16 :goto_0
.end method

.method private initOnBottomStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 249
    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DropDownListView;->addFooterView(Landroid/view/View;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DropDownListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 256
    :cond_2
    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerDefaultText:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLoadingText:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const v2, 0x7f0b0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerNoMoreText:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 265
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030052

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    .line 266
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    .line 267
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setDrawingCacheBackgroundColor(I)V

    .line 268
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->imgMore:Landroid/widget/ImageView;

    .line 270
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerProgressBar:Landroid/widget/ProgressBar;

    .line 272
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DropDownListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initTouchSlop(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->mTouchSlop:I

    .line 1066
    return-void
.end method

.method private measureHeaderLayout(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1014
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 1015
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1018
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1019
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1021
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1022
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1026
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1027
    return-void

    .line 1024
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onDropDownBegin()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->setHeaderStatusLoading()V

    .line 538
    :cond_0
    return-void
.end method

.method private resetHeaderPadding()V
    .locals 5

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/market2345/customview/DropDownListView;->headerOriginalTopPadding:I

    iget-object v3, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1005
    return-void
.end method

.method private setHeaderStatusClickToLoad()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 914
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    if-eq v0, v2, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->resetHeaderPadding()V

    .line 917
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 918
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iput v2, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    .line 924
    :cond_0
    return-void
.end method

.method private setHeaderStatusDropDownToLoad()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 930
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    if-eq v0, v3, :cond_2

    .line 931
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 934
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerPullText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {p0, v2}, Lcom/market2345/customview/DropDownListView;->setVerticalScrollBarEnabled(Z)V

    .line 943
    :cond_1
    iput v3, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    .line 945
    :cond_2
    return-void
.end method

.method private setHeaderStatusLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 966
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    if-eq v0, v3, :cond_0

    .line 967
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->resetHeaderPadding()V

    .line 969
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 971
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iput v3, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    .line 975
    invoke-virtual {p0, v2}, Lcom/market2345/customview/DropDownListView;->setSelection(I)V

    .line 977
    :cond_0
    return-void
.end method

.method private setHeaderStatusReleaseToLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 951
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    if-eq v0, v2, :cond_0

    .line 952
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 954
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 955
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iput v2, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    .line 960
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->addFooterView(Landroid/view/View;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/market2345/customview/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1074
    iput-boolean v9, p0, Lcom/market2345/customview/DropDownListView;->mDisallow:Z

    .line 1075
    iget-boolean v5, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    if-eqz v5, :cond_2

    .line 1076
    iget v5, p0, Lcom/market2345/customview/DropDownListView;->mStartMotionY:F

    iget v6, p0, Lcom/market2345/customview/DropDownListView;->mLastMotionY:F

    sub-float v4, v5, v6

    .line 1077
    .local v4, "slop":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/market2345/customview/DropDownListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 1079
    cmpg-float v5, v4, v8

    if-gez v5, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1081
    .local v0, "first":I
    const/4 v1, 0x0

    .line 1082
    .local v1, "firstView":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/market2345/customview/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-nez v5, :cond_0

    .line 1084
    iput-boolean v7, p0, Lcom/market2345/customview/DropDownListView;->mDisallow:Z

    .line 1089
    .end local v0    # "first":I
    .end local v1    # "firstView":Landroid/view/View;
    :cond_0
    cmpl-float v5, v4, v8

    if-lez v5, :cond_2

    .line 1090
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getLastVisiblePosition()I

    move-result v2

    .line 1091
    .local v2, "last":I
    const/4 v3, 0x0

    .line 1092
    .local v3, "lastView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/market2345/customview/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1093
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1094
    :cond_1
    iput-boolean v7, p0, Lcom/market2345/customview/DropDownListView;->mDisallow:Z

    .line 1101
    .end local v2    # "last":I
    .end local v3    # "lastView":Landroid/view/View;
    .end local v4    # "slop":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1117
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/market2345/customview/DropDownListView;->mParentScrollView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 1118
    iget-object v5, p0, Lcom/market2345/customview/DropDownListView;->mParentScrollView:Landroid/view/ViewGroup;

    iget-boolean v6, p0, Lcom/market2345/customview/DropDownListView;->mDisallow:Z

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1120
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 1103
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/market2345/customview/DropDownListView;->mLastMotionY:F

    .line 1104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/market2345/customview/DropDownListView;->mStartMotionY:F

    goto :goto_0

    .line 1107
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/market2345/customview/DropDownListView;->mLastMotionY:F

    .line 1108
    iget-boolean v5, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    if-nez v5, :cond_3

    .line 1109
    iput-boolean v9, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    goto :goto_0

    .line 1114
    :pswitch_2
    iput-boolean v7, p0, Lcom/market2345/customview/DropDownListView;->mDragging:Z

    goto :goto_0

    .line 1101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFooterButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getFooterDefaultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerDefaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getFooterLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterNoMoreText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerNoMoreText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderDefaultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerDefaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getHeaderLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderPaddingTopRate()F
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->headerPaddingTopRate:F

    return v0
.end method

.method public getHeaderPullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerPullText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderReleaseMinDistance()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseMinDistance:I

    return v0
.end method

.method public getHeaderReleaseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseText:Ljava/lang/String;

    return-object v0
.end method

.method public getImgMore()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->imgMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListViewMaxHeight()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    return v0
.end method

.method public isAutoLoadOnBottom()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    return v0
.end method

.method public isDropDownStyle()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    return v0
.end method

.method public isHasMore()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    return v0
.end method

.method public isOnBottomStyle()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    return v0
.end method

.method public isShowFooterProgressBar()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    return v0
.end method

.method public isShowFooterWhenNoMore()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterWhenNoMore:Z

    return v0
.end method

.method public onBottom()V
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomLoading:Z

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomLoading:Z

    .line 614
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->onBottomBegin()V

    .line 615
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 617
    :cond_0
    return-void
.end method

.method public onBottomBegin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eqz v0, :cond_1

    .line 598
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->imgMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 605
    :cond_1
    return-void
.end method

.method public onBottomComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eqz v0, :cond_2

    .line 624
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    if-nez v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerNoMoreText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 630
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterWhenNoMore:Z

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->removeFooterView(Landroid/view/View;)Z

    .line 637
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomLoading:Z

    .line 639
    :cond_2
    return-void

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->footerDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onDropDown()V
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->onDropDownListener:Lcom/market2345/customview/DropDownListView$OnDropDownListener;

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->onDropDownBegin()V

    .line 547
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->onDropDownListener:Lcom/market2345/customview/DropDownListView$OnDropDownListener;

    invoke-interface {v0}, Lcom/market2345/customview/DropDownListView$OnDropDownListener;->onDropDown()V

    .line 549
    :cond_0
    return-void
.end method

.method public onDropDownComplete()V
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->setHeaderStatusClickToLoad()V

    .line 586
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->invalidateViews()V

    .line 588
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->setSecondPositionVisible()V

    .line 591
    :cond_0
    return-void
.end method

.method public onDropDownComplete(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "secondText"    # Ljava/lang/CharSequence;

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lcom/market2345/customview/DropDownListView;->setHeaderSecondText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->onDropDownComplete()V

    .line 561
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1045
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    if-lez v0, :cond_0

    .line 1046
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1049
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1050
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 455
    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v1, :cond_0

    .line 456
    iget v1, p0, Lcom/market2345/customview/DropDownListView;->currentScrollState:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    if-eq v1, v4, :cond_5

    .line 473
    if-nez p2, :cond_4

    .line 474
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget v1, p0, Lcom/market2345/customview/DropDownListView;->headerOriginalHeight:I

    iget v2, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseMinDistance:I

    add-int v0, v1, v2

    .line 476
    .local v0, "pointBottom":I
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    if-lt v1, v0, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->setHeaderStatusReleaseToLoad()V

    .line 506
    .end local v0    # "pointBottom":I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    if-eqz v1, :cond_1

    .line 507
    if-lez p2, :cond_1

    if-lez p4, :cond_1

    add-int v1, p2, p3

    if-ne v1, p4, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->onBottom()V

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 514
    :cond_2
    return-void

    .line 478
    .restart local v0    # "pointBottom":I
    :cond_3
    iget-object v1, p0, Lcom/market2345/customview/DropDownListView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->setHeaderStatusDropDownToLoad()V

    goto :goto_0

    .line 482
    .end local v0    # "pointBottom":I
    :cond_4
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->setHeaderStatusClickToLoad()V

    goto :goto_0

    .line 484
    :cond_5
    iget v1, p0, Lcom/market2345/customview/DropDownListView;->currentScrollState:I

    if-ne v1, v3, :cond_6

    if-nez p2, :cond_6

    iget v1, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    if-eq v1, v4, :cond_6

    .line 492
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->setSecondPositionVisible()V

    .line 493
    iput-boolean v2, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    goto :goto_0

    .line 494
    :cond_6
    iget v1, p0, Lcom/market2345/customview/DropDownListView;->currentScrollState:I

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->setSecondPositionVisible()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 519
    iput p2, p0, Lcom/market2345/customview/DropDownListView;->currentScrollState:I

    .line 521
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentScrollState:I

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 529
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-nez v0, :cond_0

    .line 408
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 450
    :goto_0
    return v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->hasReachedTop:Z

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 450
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 414
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/DropDownListView;->actionDownPointY:F

    goto :goto_1

    .line 417
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/market2345/customview/DropDownListView;->adjustHeaderPadding(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 420
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->setVerticalScrollBarEnabled(Z)V

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 435
    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 440
    :pswitch_3
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->setHeaderStatusClickToLoad()V

    .line 441
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->setSecondPositionVisible()V

    goto :goto_1

    .line 437
    :pswitch_4
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->onDropDown()V

    goto :goto_1

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 435
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 26
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/market2345/customview/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->setSecondPositionVisible()V

    .line 384
    :cond_0
    return-void
.end method

.method public setAutoLoadOnBottom(Z)V
    .locals 0
    .param p1, "isAutoLoadOnBottom"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/market2345/customview/DropDownListView;->isAutoLoadOnBottom:Z

    .line 328
    return-void
.end method

.method public setDropDownStyle(Z)V
    .locals 1
    .param p1, "isDropDownStyle"    # Z

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eq v0, p1, :cond_0

    .line 292
    iput-boolean p1, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    .line 293
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->initDropDownStyle()V

    .line 295
    :cond_0
    return-void
.end method

.method public setFooterDefaultText(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "footerDefaultText"    # Ljava/lang/String;
    .param p2, "clickable"    # Z

    .prologue
    .line 845
    const v0, 0x7f070062

    invoke-virtual {p0, p1, p2, v0}, Lcom/market2345/customview/DropDownListView;->setFooterDefaultText(Ljava/lang/String;ZI)V

    .line 846
    return-void
.end method

.method public setFooterDefaultText(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "footerDefaultText"    # Ljava/lang/String;
    .param p2, "clickable"    # Z
    .param p3, "resId"    # I

    .prologue
    .line 836
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->footerDefaultText:Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setClickable(Z)V

    .line 839
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 842
    :cond_0
    return-void
.end method

.method public setFooterLoadingText(Ljava/lang/String;)V
    .locals 0
    .param p1, "footerLoadingText"    # Ljava/lang/String;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->footerLoadingText:Ljava/lang/String;

    .line 866
    return-void
.end method

.method public setFooterNoMoreText(Ljava/lang/String;)V
    .locals 0
    .param p1, "footerNoMoreText"    # Ljava/lang/String;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->footerNoMoreText:Ljava/lang/String;

    .line 886
    return-void
.end method

.method public setHasMore(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/market2345/customview/DropDownListView;->hasMore:Z

    .line 673
    return-void
.end method

.method public setHeaderDefaultText(Ljava/lang/String;)V
    .locals 2
    .param p1, "headerDefaultText"    # Ljava/lang/String;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->headerDefaultText:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/market2345/customview/DropDownListView;->currentHeaderStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :cond_0
    return-void
.end method

.method public setHeaderLoadingText(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerLoadingText"    # Ljava/lang/String;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->headerLoadingText:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public setHeaderPaddingTopRate(F)V
    .locals 0
    .param p1, "headerPaddingTopRate"    # F

    .prologue
    .line 717
    iput p1, p0, Lcom/market2345/customview/DropDownListView;->headerPaddingTopRate:F

    .line 718
    return-void
.end method

.method public setHeaderPullText(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerPullText"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->headerPullText:Ljava/lang/String;

    .line 777
    return-void
.end method

.method public setHeaderReleaseMinDistance(I)V
    .locals 0
    .param p1, "headerReleaseMinDistance"    # I

    .prologue
    .line 735
    iput p1, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseMinDistance:I

    .line 736
    return-void
.end method

.method public setHeaderReleaseText(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerReleaseText"    # Ljava/lang/String;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->headerReleaseText:Ljava/lang/String;

    .line 797
    return-void
.end method

.method public setHeaderSecondText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "secondText"    # Ljava/lang/CharSequence;

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isDropDownStyle:Z

    if-eqz v0, :cond_0

    .line 570
    if-nez p1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerSecondText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerSecondText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->headerSecondText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setListViewMaxHeight(I)V
    .locals 0
    .param p1, "listViewMaxHeight"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/market2345/customview/DropDownListView;->listViewMaxHeight:I

    .line 152
    return-void
.end method

.method public setOnBottomListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onBottomListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView;->footerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    return-void
.end method

.method public setOnBottomStyle(Z)V
    .locals 1
    .param p1, "isOnBottomStyle"    # Z

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    if-eq v0, p1, :cond_0

    .line 309
    iput-boolean p1, p0, Lcom/market2345/customview/DropDownListView;->isOnBottomStyle:Z

    .line 310
    invoke-direct {p0}, Lcom/market2345/customview/DropDownListView;->initOnBottomStyle()V

    .line 312
    :cond_0
    return-void
.end method

.method public setOnDropDownListener(Lcom/market2345/customview/DropDownListView$OnDropDownListener;)V
    .locals 0
    .param p1, "onDropDownListener"    # Lcom/market2345/customview/DropDownListView$OnDropDownListener;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->onDropDownListener:Lcom/market2345/customview/DropDownListView$OnDropDownListener;

    .line 396
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 389
    return-void
.end method

.method public setParentScrollView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentScrollView"    # Landroid/view/ViewGroup;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView;->mParentScrollView:Landroid/view/ViewGroup;

    .line 1070
    return-void
.end method

.method public setSecondPositionVisible()V
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/customview/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 661
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DropDownListView;->setSelection(I)V

    .line 663
    :cond_0
    return-void
.end method

.method public setShowFooterProgressBar(Z)V
    .locals 0
    .param p1, "isShowFooterProgressBar"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterProgressBar:Z

    .line 346
    return-void
.end method

.method public setShowFooterWhenNoMore(Z)V
    .locals 0
    .param p1, "isShowFooterWhenNoMore"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/market2345/customview/DropDownListView;->isShowFooterWhenNoMore:Z

    .line 364
    return-void
.end method
