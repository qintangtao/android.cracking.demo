.class public Lcom/market2345/customview/StickyLayout;
.super Landroid/widget/LinearLayout;
.source "StickyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/customview/StickyLayout$HeightChangeListener;,
        Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final STATUS_COLLAPSED:I = 0x2

.field public static final STATUS_EXPANDED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "wdh"

.field private static final TAN:I = 0x2


# instance fields
.field private heightChangeListener:Lcom/market2345/customview/StickyLayout$HeightChangeListener;

.field private ivPelletFloatingLayer:Landroid/widget/ImageView;

.field private mContent:Landroid/view/View;

.field private mDisallowInterceptTouchEventOnHeader:Z

.field private mGiveUpTouchEventListener:Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;

.field private mHeader:Landroid/view/View;

.field private mHeaderHeight:I

.field private mInitDataSucceed:Z

.field private mIsSticky:Z

.field private mLastX:I

.field private mLastXIntercept:I

.field private mLastY:I

.field private mLastYIntercept:I

.field private mOriginalHeaderHeight:I

.field private mOriginalLayerHeight:I

.field public mStatus:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput v1, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    .line 66
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastX:I

    .line 67
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastY:I

    .line 70
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastXIntercept:I

    .line 71
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastYIntercept:I

    .line 76
    iput-boolean v1, p0, Lcom/market2345/customview/StickyLayout;->mIsSticky:Z

    .line 77
    iput-boolean v0, p0, Lcom/market2345/customview/StickyLayout;->mInitDataSucceed:Z

    .line 78
    iput-boolean v1, p0, Lcom/market2345/customview/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v1, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    .line 66
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastX:I

    .line 67
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastY:I

    .line 70
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastXIntercept:I

    .line 71
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastYIntercept:I

    .line 76
    iput-boolean v1, p0, Lcom/market2345/customview/StickyLayout;->mIsSticky:Z

    .line 77
    iput-boolean v0, p0, Lcom/market2345/customview/StickyLayout;->mInitDataSucceed:Z

    .line 78
    iput-boolean v1, p0, Lcom/market2345/customview/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v1, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    .line 66
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastX:I

    .line 67
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastY:I

    .line 70
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastXIntercept:I

    .line 71
    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mLastYIntercept:I

    .line 76
    iput-boolean v1, p0, Lcom/market2345/customview/StickyLayout;->mIsSticky:Z

    .line 77
    iput-boolean v0, p0, Lcom/market2345/customview/StickyLayout;->mInitDataSucceed:Z

    .line 78
    iput-boolean v1, p0, Lcom/market2345/customview/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 91
    return-void
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    return v0
.end method

.method public getOriginalHeaderHeight()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    return v0
.end method

.method public getmContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getmHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public initData()V
    .locals 6

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sticky_header"

    const-string v4, "id"

    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "headerId":I
    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sticky_content"

    const-string v4, "id"

    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "contentId":I
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/market2345/customview/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    .line 110
    invoke-virtual {p0, v0}, Lcom/market2345/customview/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/customview/StickyLayout;->mContent:Landroid/view/View;

    .line 111
    const v2, 0x7f0903a1

    invoke-virtual {p0, v2}, Lcom/market2345/customview/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/market2345/customview/StickyLayout;->ivPelletFloatingLayer:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Lcom/market2345/customview/StickyLayout;->ivPelletFloatingLayer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/market2345/customview/StickyLayout;->mOriginalLayerHeight:I

    .line 114
    iget-object v2, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    .line 115
    iget v2, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    iput v2, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    .line 116
    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/market2345/customview/StickyLayout;->mTouchSlop:I

    .line 117
    iget v2, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    if-lez v2, :cond_0

    .line 118
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/market2345/customview/StickyLayout;->mInitDataSucceed:Z

    .line 123
    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Did your view with id \"sticky_header\" or \"sticky_content\" exists?"

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "intercepted":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 133
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 135
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    iget-boolean v7, p0, Lcom/market2345/customview/StickyLayout;->mIsSticky:Z

    if-eqz v7, :cond_3

    :goto_1
    return v5

    .line 137
    :pswitch_0
    iput v3, p0, Lcom/market2345/customview/StickyLayout;->mLastXIntercept:I

    .line 138
    iput v4, p0, Lcom/market2345/customview/StickyLayout;->mLastYIntercept:I

    .line 139
    iput v3, p0, Lcom/market2345/customview/StickyLayout;->mLastX:I

    .line 140
    iput v4, p0, Lcom/market2345/customview/StickyLayout;->mLastY:I

    .line 141
    const/4 v2, 0x0

    .line 142
    goto :goto_0

    .line 145
    :pswitch_1
    iget v7, p0, Lcom/market2345/customview/StickyLayout;->mLastXIntercept:I

    sub-int v0, v3, v7

    .line 146
    .local v0, "deltaX":I
    iget v7, p0, Lcom/market2345/customview/StickyLayout;->mLastYIntercept:I

    sub-int v1, v4, v7

    .line 147
    .local v1, "deltaY":I
    iget-boolean v7, p0, Lcom/market2345/customview/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->getHeaderHeight()I

    move-result v7

    if-gt v4, v7, :cond_1

    .line 148
    const/4 v2, 0x0

    goto :goto_0

    .line 149
    :cond_1
    iget v7, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    if-ne v7, v5, :cond_2

    iget v7, p0, Lcom/market2345/customview/StickyLayout;->mTouchSlop:I

    neg-int v7, v7

    if-gt v1, v7, :cond_2

    .line 150
    const/4 v2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v7, p0, Lcom/market2345/customview/StickyLayout;->mGiveUpTouchEventListener:Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;

    if-eqz v7, :cond_0

    .line 152
    iget-object v7, p0, Lcom/market2345/customview/StickyLayout;->mGiveUpTouchEventListener:Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;

    invoke-interface {v7, p1}, Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;->giveUpTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/market2345/customview/StickyLayout;->mTouchSlop:I

    if-lt v1, v7, :cond_0

    .line 153
    const/4 v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :pswitch_2
    const/4 v2, 0x0

    .line 160
    iput v6, p0, Lcom/market2345/customview/StickyLayout;->mLastYIntercept:I

    iput v6, p0, Lcom/market2345/customview/StickyLayout;->mLastXIntercept:I

    goto :goto_0

    :cond_3
    move v5, v6

    .line 170
    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 176
    iget-boolean v5, p0, Lcom/market2345/customview/StickyLayout;->mIsSticky:Z

    if-nez v5, :cond_0

    .line 213
    :goto_0
    return v12

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 182
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 183
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 211
    :goto_1
    :pswitch_0
    iput v3, p0, Lcom/market2345/customview/StickyLayout;->mLastX:I

    .line 212
    iput v4, p0, Lcom/market2345/customview/StickyLayout;->mLastY:I

    goto :goto_0

    .line 188
    :pswitch_1
    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mLastX:I

    sub-int v0, v3, v5

    .line 189
    .local v0, "deltaX":I
    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mLastY:I

    sub-int v1, v4, v5

    .line 190
    .local v1, "deltaY":I
    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    .line 191
    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    invoke-virtual {p0, v5}, Lcom/market2345/customview/StickyLayout;->setHeaderHeight(I)V

    goto :goto_1

    .line 196
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :pswitch_2
    const/4 v2, 0x0

    .line 197
    .local v2, "destHeight":I
    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    int-to-double v6, v5

    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    int-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_1

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v5, 0x2

    iput v5, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    .line 205
    :goto_2
    iget v5, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v5, v2, v6, v7}, Lcom/market2345/customview/StickyLayout;->smoothSetHeaderHeight(IIJ)V

    goto :goto_1

    .line 201
    :cond_1
    iget v2, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    .line 202
    iput v12, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    goto :goto_2

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 98
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->initData()V

    .line 101
    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEventOnHeader(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/market2345/customview/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 319
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 4
    .param p1, "height"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 270
    iget-boolean v0, p0, Lcom/market2345/customview/StickyLayout;->mInitDataSucceed:Z

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/market2345/customview/StickyLayout;->initData()V

    .line 273
    :cond_0
    if-gtz p1, :cond_3

    .line 274
    const/4 p1, 0x0

    .line 279
    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 280
    const/4 v0, 0x2

    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 286
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    iput p1, p0, Lcom/market2345/customview/StickyLayout;->mHeaderHeight:I

    .line 290
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->heightChangeListener:Lcom/market2345/customview/StickyLayout$HeightChangeListener;

    if-eqz v0, :cond_2

    .line 291
    iget v0, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    if-ne p1, v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->heightChangeListener:Lcom/market2345/customview/StickyLayout$HeightChangeListener;

    invoke-interface {v0, v3}, Lcom/market2345/customview/StickyLayout$HeightChangeListener;->notifyChange(F)V

    .line 300
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 307
    :goto_3
    return-void

    .line 275
    :cond_3
    iget v0, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    if-le p1, v0, :cond_1

    .line 276
    iget p1, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    goto :goto_0

    .line 282
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/customview/StickyLayout;->mStatus:I

    goto :goto_1

    .line 293
    :cond_5
    if-nez p1, :cond_6

    .line 294
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->heightChangeListener:Lcom/market2345/customview/StickyLayout$HeightChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/market2345/customview/StickyLayout$HeightChangeListener;->notifyChange(F)V

    goto :goto_2

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout;->heightChangeListener:Lcom/market2345/customview/StickyLayout$HeightChangeListener;

    iget-object v1, p0, Lcom/market2345/customview/StickyLayout;->ivPelletFloatingLayer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/market2345/customview/StickyLayout;->mOriginalLayerHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/market2345/customview/StickyLayout$HeightChangeListener;->notifyChange(F)V

    goto :goto_2

    .line 304
    :cond_7
    const-string v0, "wdh"

    const-string v1, "null LayoutParams when setHeaderHeight"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setHeaderHeight(IZ)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "modifyOriginalHeaderHeight"    # Z

    .prologue
    .line 263
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lcom/market2345/customview/StickyLayout;->setOriginalHeaderHeight(I)V

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcom/market2345/customview/StickyLayout;->setHeaderHeight(I)V

    .line 267
    return-void
.end method

.method public setHeightChangeListener(Lcom/market2345/customview/StickyLayout$HeightChangeListener;)V
    .locals 0
    .param p1, "heightChangeListener"    # Lcom/market2345/customview/StickyLayout$HeightChangeListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/market2345/customview/StickyLayout;->heightChangeListener:Lcom/market2345/customview/StickyLayout$HeightChangeListener;

    .line 32
    return-void
.end method

.method public setOnGiveUpTouchEventListener(Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/market2345/customview/StickyLayout;->mGiveUpTouchEventListener:Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;

    .line 127
    return-void
.end method

.method public setOriginalHeaderHeight(I)V
    .locals 0
    .param p1, "originalHeaderHeight"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/market2345/customview/StickyLayout;->mOriginalHeaderHeight:I

    .line 257
    return-void
.end method

.method public setSticky(Z)V
    .locals 0
    .param p1, "isSticky"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/market2345/customview/StickyLayout;->mIsSticky:Z

    .line 315
    return-void
.end method

.method public smoothSetHeaderHeight(IIJ)V
    .locals 7
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "duration"    # J

    .prologue
    .line 217
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/StickyLayout;->smoothSetHeaderHeight(IIJZ)V

    .line 218
    return-void
.end method

.method public smoothSetHeaderHeight(IIJZ)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "duration"    # J
    .param p5, "modifyOriginalHeaderHeight"    # Z

    .prologue
    .line 221
    long-to-float v0, p3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v3, v0, 0x1

    .line 222
    .local v3, "frameCount":I
    sub-int v0, p2, p1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v6, v0, v1

    .line 223
    .local v6, "partation":F
    new-instance v0, Lcom/market2345/customview/StickyLayout$1;

    const-string v2, "Thread#smoothSetHeaderHeight"

    move-object v1, p0

    move v4, p2

    move v5, p1

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/market2345/customview/StickyLayout$1;-><init>(Lcom/market2345/customview/StickyLayout;Ljava/lang/String;IIIFZ)V

    invoke-virtual {v0}, Lcom/market2345/customview/StickyLayout$1;->start()V

    .line 253
    return-void
.end method
