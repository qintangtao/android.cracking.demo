.class public Lcom/market2345/settings/rangebar/RangeBar;
.super Landroid/view/View;
.source "RangeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BAR_COLOR:I = -0x333334

.field private static final DEFAULT_BAR_WEIGHT_PX:F = 2.0f

.field private static final DEFAULT_CONNECTING_LINE_COLOR:I = -0xcc4a1b

.field private static final DEFAULT_CONNECTING_LINE_WEIGHT_PX:F = 4.0f

.field private static final DEFAULT_THUMB_COLOR_NORMAL:I = -0x1

.field private static final DEFAULT_THUMB_COLOR_PRESSED:I = -0x1

.field private static final DEFAULT_THUMB_IMAGE_NORMAL:I = 0x7f0202d5

.field private static final DEFAULT_THUMB_IMAGE_PRESSED:I = 0x7f0202d5

.field private static final DEFAULT_THUMB_RADIUS_DP:F = -1.0f

.field private static final DEFAULT_TICK_COUNT:I = 0x3

.field private static final DEFAULT_TICK_HEIGHT_DP:F = 24.0f

.field private static final TAG:Ljava/lang/String; = "RangeBar"


# instance fields
.field private mBar:Lcom/market2345/settings/rangebar/Bar;

.field private mBarColor:I

.field private mBarTextColor:I

.field private mBarWeight:F

.field private mConnectingLine:Lcom/market2345/settings/rangebar/ConnectingLine;

.field private mConnectingLineColor:I

.field private mConnectingLineStrokeColor:I

.field private mConnectingLineWeight:F

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mFirstSetTickCount:Z

.field private mLeftIndex:I

.field private mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

.field private mLeftThumbNeedMove:Z

.field private mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

.field private mRightIndex:I

.field private mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

.field private mShowLeftThumb:Z

.field private mShowText:Z

.field private mShowTickHeight:Z

.field private mTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSize:F

.field private mThumbColorNormal:I

.field private mThumbColorPressed:I

.field private mThumbImageNormal:I

.field private mThumbImagePressed:I

.field private mThumbRadiusDP:F

.field private mTickCount:I

.field private mTickHeightDP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const v4, -0x333334

    const v3, -0xcc4a1b

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    .line 78
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    .line 80
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    .line 82
    iput v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 84
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 86
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 88
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    .line 90
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    .line 92
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 94
    iput v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    .line 96
    iput v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 102
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultWidth:I

    .line 104
    const/16 v0, 0xbe

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    .line 116
    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 118
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 120
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    .line 122
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumbNeedMove:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowTickHeight:Z

    .line 126
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    .line 130
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    .line 132
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    .line 134
    iput v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const v4, -0x333334

    const v3, -0xcc4a1b

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    .line 78
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    .line 80
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    .line 82
    iput v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 84
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 86
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 88
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    .line 90
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    .line 92
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 94
    iput v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    .line 96
    iput v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 102
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultWidth:I

    .line 104
    const/16 v0, 0xbe

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    .line 116
    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 118
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 120
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    .line 122
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumbNeedMove:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowTickHeight:Z

    .line 126
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    .line 130
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    .line 132
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    .line 134
    iput v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/market2345/settings/rangebar/RangeBar;->rangeBarInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const v4, -0x333334

    const v3, -0xcc4a1b

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    .line 78
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    .line 80
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    .line 82
    iput v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 84
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 86
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 88
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    .line 90
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    .line 92
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 94
    iput v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    .line 96
    iput v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 102
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultWidth:I

    .line 104
    const/16 v0, 0xbe

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    .line 116
    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 118
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 120
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    .line 122
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumbNeedMove:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowTickHeight:Z

    .line 126
    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    .line 130
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    .line 132
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    .line 134
    iput v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/market2345/settings/rangebar/RangeBar;->rangeBarInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method private createBar()V
    .locals 14

    .prologue
    .line 790
    new-instance v0, Lcom/market2345/settings/rangebar/Bar;

    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getMarginLeft()F

    move-result v2

    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getYPos()F

    move-result v3

    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getBarLength()F

    move-result v4

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    iget v6, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    iget v7, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    iget v8, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    iget-boolean v9, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowTickHeight:Z

    iget-boolean v10, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    iget-object v11, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    iget v12, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    iget v13, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    invoke-direct/range {v0 .. v13}, Lcom/market2345/settings/rangebar/Bar;-><init>(Landroid/content/Context;FFFIFFIZZLjava/util/List;FI)V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    .line 791
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 792
    return-void
.end method

.method private createConnectingLine()V
    .locals 6

    .prologue
    .line 802
    new-instance v0, Lcom/market2345/settings/rangebar/ConnectingLine;

    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getYPos()F

    move-result v2

    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    invoke-direct/range {v0 .. v5}, Lcom/market2345/settings/rangebar/ConnectingLine;-><init>(Landroid/content/Context;FFII)V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLine:Lcom/market2345/settings/rangebar/ConnectingLine;

    .line 803
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 804
    return-void
.end method

.method private createThumbs()V
    .locals 10

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 815
    .local v1, "ctx":Landroid/content/Context;
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getYPos()F

    move-result v2

    .line 817
    .local v2, "yPos":F
    new-instance v0, Lcom/market2345/settings/rangebar/Thumb;

    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    iget v6, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    iget v7, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v0 .. v7}, Lcom/market2345/settings/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 818
    new-instance v0, Lcom/market2345/settings/rangebar/Thumb;

    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    iget v6, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    iget v7, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v0 .. v7}, Lcom/market2345/settings/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 820
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getMarginLeft()F

    move-result v9

    .line 821
    .local v9, "marginLeft":F
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getBarLength()F

    move-result v8

    .line 824
    .local v8, "barLength":F
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 825
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 827
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 828
    return-void
.end method

.method private getBarLength()F
    .locals 3

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getMarginLeft()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMarginLeft()F
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0}, Lcom/market2345/settings/rangebar/Thumb;->getHalfWidth()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getYPos()F
    .locals 2

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private indexOutOfRange(II)Z
    .locals 1
    .param p1, "leftThumbIndex"    # I
    .param p2, "rightThumbIndex"    # I

    .prologue
    .line 874
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidTickCount(I)Z
    .locals 1
    .param p1, "tickCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 886
    if-le p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveThumb(Lcom/market2345/settings/rangebar/Thumb;F)V
    .locals 1
    .param p1, "thumb"    # Lcom/market2345/settings/rangebar/Thumb;
    .param p2, "x"    # F

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    invoke-virtual {v0}, Lcom/market2345/settings/rangebar/Bar;->getLeftX()F

    move-result v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    invoke-virtual {v0}, Lcom/market2345/settings/rangebar/Bar;->getRightX()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-virtual {p1, p2}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 1069
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    goto :goto_0
.end method

.method private onActionDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 900
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0}, Lcom/market2345/settings/rangebar/Thumb;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0, p1, p2}, Lcom/market2345/settings/rangebar/Thumb;->isInTargetZone(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v0}, Lcom/market2345/settings/rangebar/RangeBar;->pressThumb(Lcom/market2345/settings/rangebar/Thumb;)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0}, Lcom/market2345/settings/rangebar/Thumb;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0, p1, p2}, Lcom/market2345/settings/rangebar/Thumb;->isInTargetZone(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v0}, Lcom/market2345/settings/rangebar/RangeBar;->pressThumb(Lcom/market2345/settings/rangebar/Thumb;)V

    goto :goto_0
.end method

.method private onActionMove(F)V
    .locals 6
    .param p1, "x"    # F

    .prologue
    .line 983
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v3}, Lcom/market2345/settings/rangebar/Thumb;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumbNeedMove:Z

    if-eqz v3, :cond_4

    .line 985
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v3, p1}, Lcom/market2345/settings/rangebar/RangeBar;->moveThumb(Lcom/market2345/settings/rangebar/Thumb;F)V

    .line 993
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v3}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 995
    iget-object v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 996
    .local v2, "temp":Lcom/market2345/settings/rangebar/Thumb;
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    iput-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 997
    iput-object v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 1001
    .end local v2    # "temp":Lcom/market2345/settings/rangebar/Thumb;
    :cond_1
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v3, v4}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v0

    .line 1002
    .local v0, "newLeftIndex":I
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v3, v4}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v1

    .line 1005
    .local v1, "newRightIndex":I
    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    if-eq v1, v3, :cond_3

    .line 1008
    :cond_2
    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 1009
    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 1011
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v3, :cond_3

    .line 1013
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v3, p0, v4, v5}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    .line 1016
    :cond_3
    return-void

    .line 987
    .end local v0    # "newLeftIndex":I
    .end local v1    # "newRightIndex":I
    :cond_4
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v3}, Lcom/market2345/settings/rangebar/Thumb;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v3, p1}, Lcom/market2345/settings/rangebar/RangeBar;->moveThumb(Lcom/market2345/settings/rangebar/Thumb;F)V

    goto :goto_0
.end method

.method private onActionUp(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 925
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/market2345/settings/rangebar/Thumb;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    if-eqz v4, :cond_1

    .line 928
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/market2345/settings/rangebar/RangeBar;->releaseThumb(Lcom/market2345/settings/rangebar/Thumb;)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/market2345/settings/rangebar/Thumb;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 934
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/market2345/settings/rangebar/RangeBar;->releaseThumb(Lcom/market2345/settings/rangebar/Thumb;)V

    goto :goto_0

    .line 940
    :cond_2
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 941
    .local v0, "leftThumbXDistance":F
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 943
    .local v3, "rightThumbXDistance":F
    cmpg-float v4, v0, v3

    if-gez v4, :cond_4

    iget-boolean v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    if-eqz v4, :cond_4

    .line 945
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4, p1}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 946
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/market2345/settings/rangebar/RangeBar;->releaseThumb(Lcom/market2345/settings/rangebar/Thumb;)V

    .line 955
    :goto_1
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    iget-object v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4, v5}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v1

    .line 956
    .local v1, "newLeftIndex":I
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    iget-object v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4, v5}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v2

    .line 959
    .local v2, "newRightIndex":I
    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    if-ne v1, v4, :cond_3

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    if-eq v2, v4, :cond_0

    .line 962
    :cond_3
    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 963
    iput v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 965
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v4, :cond_0

    .line 967
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v6, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v4, p0, v5, v6}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    goto :goto_0

    .line 950
    .end local v1    # "newLeftIndex":I
    .end local v2    # "newRightIndex":I
    :cond_4
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v4, p1}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 951
    iget-object v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/market2345/settings/rangebar/RangeBar;->releaseThumb(Lcom/market2345/settings/rangebar/Thumb;)V

    goto :goto_1
.end method

.method private pressThumb(Lcom/market2345/settings/rangebar/Thumb;)V
    .locals 2
    .param p1, "thumb"    # Lcom/market2345/settings/rangebar/Thumb;

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 1029
    :cond_0
    invoke-virtual {p1}, Lcom/market2345/settings/rangebar/Thumb;->press()V

    .line 1030
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 1031
    return-void
.end method

.method private rangeBarInit(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 709
    sget-object v3, Lcom/market2345/R$styleable;->RangeBar:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 716
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 718
    .local v2, "tickCount":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/market2345/settings/rangebar/RangeBar;->isValidTickCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    .line 724
    const/4 v3, 0x0

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 725
    iget v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 727
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v3, :cond_0

    .line 729
    iget-object v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v4, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v3, p0, v4, v5}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    .line 739
    :cond_0
    :goto_0
    const/4 v3, 0x1

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    .line 740
    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    .line 741
    const/4 v3, 0x3

    const v4, -0x333334

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 742
    const/4 v3, 0x4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 743
    const/4 v3, 0x5

    const v4, -0xcc4a1b

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 744
    const/4 v3, 0x6

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 745
    const/4 v3, 0x7

    const v4, 0x7f0202d5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    .line 746
    const/16 v3, 0x8

    const v4, 0x7f0202d5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    .line 747
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    .line 748
    const/16 v3, 0xa

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 751
    .local v0, "dpi":I
    sparse-switch v0, :sswitch_data_0

    .line 772
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "den:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 780
    return-void

    .line 736
    .end local v0    # "dpi":I
    :cond_1
    :try_start_1
    const-string v3, "RangeBar"

    const-string v4, "tickCount less than 2; invalid tickCount. XML input ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 777
    .end local v2    # "tickCount":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 754
    .restart local v0    # "dpi":I
    .restart local v2    # "tickCount":Ljava/lang/Integer;
    :sswitch_0
    const/16 v3, 0x4b

    :try_start_2
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    goto :goto_1

    .line 757
    :sswitch_1
    const/16 v3, 0x55

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    goto :goto_1

    .line 760
    :sswitch_2
    const/16 v3, 0x64

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    goto :goto_1

    .line 763
    :sswitch_3
    const/16 v3, 0x78

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    goto :goto_1

    .line 766
    :sswitch_4
    const/16 v3, 0xaa

    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 751
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method private releaseThumb(Lcom/market2345/settings/rangebar/Thumb;)V
    .locals 2
    .param p1, "thumb"    # Lcom/market2345/settings/rangebar/Thumb;

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    invoke-virtual {v1, p1}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickCoordinate(Lcom/market2345/settings/rangebar/Thumb;)F

    move-result v0

    .line 1044
    .local v0, "nearestTickX":F
    invoke-virtual {p1, v0}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 1045
    invoke-virtual {p1}, Lcom/market2345/settings/rangebar/Thumb;->release()V

    .line 1046
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 1047
    return-void
.end method


# virtual methods
.method public getLeftIndex()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    return v0
.end method

.method public getRightIndex()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    invoke-virtual {v0, p1}, Lcom/market2345/settings/rangebar/Bar;->draw(Landroid/graphics/Canvas;)V

    .line 323
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLine:Lcom/market2345/settings/rangebar/ConnectingLine;

    iget-object v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    iget-object v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/market2345/settings/rangebar/ConnectingLine;->draw(Landroid/graphics/Canvas;Lcom/market2345/settings/rangebar/Thumb;Lcom/market2345/settings/rangebar/Thumb;)V

    .line 325
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0, p1}, Lcom/market2345/settings/rangebar/Thumb;->draw(Landroid/graphics/Canvas;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v0, p1}, Lcom/market2345/settings/rangebar/Thumb;->draw(Landroid/graphics/Canvas;)V

    .line 332
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 235
    .local v4, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 236
    .local v2, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 237
    .local v3, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 240
    .local v1, "measureHeight":I
    if-ne v4, v6, :cond_0

    .line 242
    move v5, v3

    .line 254
    .local v5, "width":I
    :goto_0
    if-ne v2, v6, :cond_2

    .line 256
    iget v6, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 267
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/market2345/settings/rangebar/RangeBar;->setMeasuredDimension(II)V

    .line 268
    return-void

    .line 244
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_0
    if-ne v4, v7, :cond_1

    .line 246
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 250
    .end local v5    # "width":I
    :cond_1
    iget v5, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultWidth:I

    .restart local v5    # "width":I
    goto :goto_0

    .line 258
    :cond_2
    if-ne v2, v7, :cond_3

    .line 260
    move v0, v1

    .restart local v0    # "height":I
    goto :goto_1

    .line 264
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mDefaultHeight:I

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 191
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Landroid/os/Bundle;

    .line 196
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "TICK_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    .line 197
    const-string v1, "TICK_HEIGHT_DP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    .line 198
    const-string v1, "BAR_WEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    .line 199
    const-string v1, "BAR_COLOR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 200
    const-string v1, "CONNECTING_LINE_WEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 201
    const-string v1, "CONNECTING_LINE_COLOR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 203
    const-string v1, "THUMB_IMAGE_NORMAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    .line 204
    const-string v1, "THUMB_IMAGE_PRESSED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    .line 206
    const-string v1, "THUMB_RADIUS_DP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 207
    const-string v1, "THUMB_COLOR_NORMAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    .line 208
    const-string v1, "THUMB_COLOR_PRESSED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    .line 210
    const-string v1, "LEFT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 211
    const-string v1, "RIGHT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 212
    const-string v1, "FIRST_SET_TICK_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 214
    iget v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbIndices(II)V

    .line 216
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    const-string v1, "TICK_COUNT"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v1, "TICK_HEIGHT_DP"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 167
    const-string v1, "BAR_WEIGHT"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 168
    const-string v1, "BAR_COLOR"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    const-string v1, "CONNECTING_LINE_WEIGHT"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 170
    const-string v1, "CONNECTING_LINE_COLOR"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v1, "THUMB_IMAGE_NORMAL"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v1, "THUMB_IMAGE_PRESSED"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v1, "THUMB_RADIUS_DP"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 176
    const-string v1, "THUMB_COLOR_NORMAL"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v1, "THUMB_COLOR_PRESSED"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v1, "LEFT_INDEX"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v1, "RIGHT_INDEX"

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "FIRST_SET_TICK_COUNT"

    iget-boolean v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 274
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/settings/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 281
    .local v3, "ctx":Landroid/content/Context;
    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v4, v2, v5

    .line 282
    .local v4, "yPos":F
    new-instance v2, Lcom/market2345/settings/rangebar/Thumb;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v2 .. v9}, Lcom/market2345/settings/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 283
    new-instance v2, Lcom/market2345/settings/rangebar/Thumb;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v2 .. v9}, Lcom/market2345/settings/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v2}, Lcom/market2345/settings/rangebar/Thumb;->getHalfWidth()F

    move-result v7

    .line 287
    .local v7, "marginLeft":F
    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    sub-float v9, v2, v5

    .line 288
    .local v9, "barLength":F
    new-instance v5, Lcom/market2345/settings/rangebar/Bar;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/market2345/settings/rangebar/RangeBar;->mShowTickHeight:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    move/from16 v18, v0

    move-object v6, v3

    move v8, v4

    invoke-direct/range {v5 .. v18}, Lcom/market2345/settings/rangebar/Bar;-><init>(Landroid/content/Context;FFFIFFIZZLjava/util/List;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    invoke-virtual {v2, v5}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    invoke-virtual {v2, v5}, Lcom/market2345/settings/rangebar/Thumb;->setX(F)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v2, v5}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v19

    .line 296
    .local v19, "newLeftIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mBar:Lcom/market2345/settings/rangebar/Bar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mRightThumb:Lcom/market2345/settings/rangebar/Thumb;

    invoke-virtual {v2, v5}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v20

    .line 299
    .local v20, "newRightIndex":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    .line 302
    :cond_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 303
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v2, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v5, v6}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    .line 312
    :cond_1
    new-instance v10, Lcom/market2345/settings/rangebar/ConnectingLine;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    move-object v11, v3

    move v12, v4

    invoke-direct/range {v10 .. v15}, Lcom/market2345/settings/rangebar/ConnectingLine;-><init>(Landroid/content/Context;FFII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLine:Lcom/market2345/settings/rangebar/ConnectingLine;

    .line 313
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 339
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 348
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/market2345/settings/rangebar/RangeBar;->onActionDown(FF)V

    move v0, v1

    .line 349
    goto :goto_0

    .line 353
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/market2345/settings/rangebar/RangeBar;->onActionUp(FF)V

    move v0, v1

    .line 355
    goto :goto_0

    .line 358
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/market2345/settings/rangebar/RangeBar;->onActionMove(F)V

    .line 359
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 360
    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBarAndTextColor(II)V
    .locals 0
    .param p1, "barColor"    # I
    .param p2, "barTextColor"    # I

    .prologue
    .line 379
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 380
    iput p2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    .line 381
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 382
    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .param p1, "barColor"    # I

    .prologue
    .line 540
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarColor:I

    .line 541
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 542
    return-void
.end method

.method public setBarTextColor(I)V
    .locals 0
    .param p1, "barTextColor"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarTextColor:I

    .line 373
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 374
    return-void
.end method

.method public setBarWeight(F)V
    .locals 0
    .param p1, "barWeight"    # F

    .prologue
    .line 527
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mBarWeight:F

    .line 528
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 529
    return-void
.end method

.method public setConnectingLineAndStrokeColor(II)V
    .locals 0
    .param p1, "connectingLineColor"    # I
    .param p2, "connectingLineStrokeColor"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 388
    iput p2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    .line 389
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createConnectingLine()V

    .line 390
    return-void
.end method

.method public setConnectingLineColor(I)V
    .locals 0
    .param p1, "connectingLineColor"    # I

    .prologue
    .line 566
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineColor:I

    .line 567
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createConnectingLine()V

    .line 568
    return-void
.end method

.method public setConnectingLineStrokeColor(I)V
    .locals 0
    .param p1, "connectingLineStrokeColor"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineStrokeColor:I

    .line 396
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createConnectingLine()V

    .line 397
    return-void
.end method

.method public setConnectingLineWeight(F)V
    .locals 0
    .param p1, "connectingLineWeight"    # F

    .prologue
    .line 553
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 554
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createConnectingLine()V

    .line 555
    return-void
.end method

.method public setLeftThumbIsShow(Z)V
    .locals 0
    .param p1, "showLeftThumb"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowLeftThumb:Z

    .line 403
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 404
    return-void
.end method

.method public setLeftThumbNeedMove(Z)V
    .locals 0
    .param p1, "leftThumbNeedMove"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftThumbNeedMove:Z

    .line 409
    return-void
.end method

.method public setOnRangeBarChangeListener(Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    .line 459
    return-void
.end method

.method public setShowTickHeight(Z)V
    .locals 0
    .param p1, "showTickHeight"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowTickHeight:Z

    .line 415
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 416
    return-void
.end method

.method public setShowTickText(Z)V
    .locals 0
    .param p1, "showTickText"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    .line 431
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 432
    return-void
.end method

.method public setThumbColorNormal(I)V
    .locals 0
    .param p1, "thumbColorNormal"    # I

    .prologue
    .line 619
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorNormal:I

    .line 620
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 621
    return-void
.end method

.method public setThumbColorPressed(I)V
    .locals 0
    .param p1, "thumbColorPressed"    # I

    .prologue
    .line 633
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbColorPressed:I

    .line 634
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 635
    return-void
.end method

.method public setThumbImageNormal(I)V
    .locals 0
    .param p1, "thumbImageNormalID"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImageNormal:I

    .line 594
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 595
    return-void
.end method

.method public setThumbImagePressed(I)V
    .locals 0
    .param p1, "thumbImagePressedID"    # I

    .prologue
    .line 606
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbImagePressed:I

    .line 607
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 608
    return-void
.end method

.method public setThumbIndices(II)V
    .locals 3
    .param p1, "leftThumbIndex"    # I
    .param p2, "rightThumbIndex"    # I

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Lcom/market2345/settings/rangebar/RangeBar;->indexOutOfRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "RangeBar"

    const-string v1, "A thumb index is out of bounds. Check that it is between 0 and mTickCount - 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A thumb index is out of bounds. Check that it is between 0 and mTickCount - 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_0
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 661
    :cond_1
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 662
    iput p2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 663
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 665
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v0, p0, v1, v2}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    .line 671
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->invalidate()V

    .line 672
    invoke-virtual {p0}, Lcom/market2345/settings/rangebar/RangeBar;->requestLayout()V

    .line 673
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0
    .param p1, "thumbRadius"    # F

    .prologue
    .line 580
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 581
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 582
    return-void
.end method

.method public setTickCount(I)V
    .locals 4
    .param p1, "tickCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-direct {p0, p1}, Lcom/market2345/settings/rangebar/RangeBar;->isValidTickCount(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    .line 476
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mFirstSetTickCount:Z

    if-eqz v0, :cond_0

    .line 478
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 479
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 481
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v0, p0, v1, v2}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    .line 486
    :cond_0
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-direct {p0, v0, v1}, Lcom/market2345/settings/rangebar/RangeBar;->indexOutOfRange(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iput v3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    .line 489
    iget v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    .line 491
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/market2345/settings/rangebar/RangeBar;->mListener:Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v0, p0, v1, v2}, Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 496
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createThumbs()V

    .line 503
    return-void

    .line 500
    :cond_2
    const-string v0, "RangeBar"

    const-string v1, "tickCount less than 2; invalid tickCount."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tickCount less than 2; invalid tickCount."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTickHeight(F)V
    .locals 0
    .param p1, "tickHeight"    # F

    .prologue
    .line 514
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTickHeightDP:F

    .line 515
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 516
    return-void
.end method

.method public setTickTextList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "tickTextList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    .line 438
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 439
    return-void
.end method

.method public setTickTextParams(Ljava/util/List;ZF)V
    .locals 0
    .param p2, "showTickText"    # Z
    .param p3, "tickTextSizeSP"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZF)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "tickTextList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextList:Ljava/util/List;

    .line 421
    iput-boolean p2, p0, Lcom/market2345/settings/rangebar/RangeBar;->mShowText:Z

    .line 422
    iput p3, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    .line 424
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 425
    return-void
.end method

.method public setTickTextSize(F)V
    .locals 0
    .param p1, "tickTextSize"    # F

    .prologue
    .line 443
    iput p1, p0, Lcom/market2345/settings/rangebar/RangeBar;->mTextSize:F

    .line 445
    invoke-direct {p0}, Lcom/market2345/settings/rangebar/RangeBar;->createBar()V

    .line 446
    return-void
.end method
