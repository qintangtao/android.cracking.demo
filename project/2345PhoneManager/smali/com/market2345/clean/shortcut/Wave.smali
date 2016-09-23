.class public Lcom/market2345/clean/shortcut/Wave;
.super Landroid/view/View;
.source "Wave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/clean/shortcut/Wave$1;,
        Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;
    }
.end annotation


# instance fields
.field public final DEFAULT_ABOVE_WAVE_ALPHA:I

.field public final DEFAULT_BLOW_WAVE_ALPHA:I

.field private final PI2:D

.field private final WAVE_HEIGHT_LARGE:I

.field private final WAVE_HEIGHT_LITTLE:I

.field private final WAVE_HEIGHT_MIDDLE:I

.field private final WAVE_HZ_FAST:F

.field private final WAVE_HZ_NORMAL:F

.field private final WAVE_HZ_SLOW:F

.field private final WAVE_LENGTH_MULTIPLE_LARGE:F

.field private final WAVE_LENGTH_MULTIPLE_LITTLE:F

.field private final WAVE_LENGTH_MULTIPLE_MIDDLE:F

.field private final X_SPACE:F

.field private bottom:I

.field private left:I

.field private mAboveOffset:F

.field private mAboveWaveColor:I

.field private mAboveWavePaint:Landroid/graphics/Paint;

.field private mAboveWavePath:Landroid/graphics/Path;

.field private mBlowOffset:F

.field private mBlowWaveColor:I

.field private mBlowWavePaint:Landroid/graphics/Paint;

.field private mBlowWavePath:Landroid/graphics/Path;

.field private mMaxRight:F

.field private mRefreshProgressRunnable:Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;

.field private mWaveHeight:I

.field private mWaveHz:F

.field private mWaveLength:F

.field private mWaveMultiple:F

.field private omega:D

.field private right:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const v0, 0x7f01005d

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/clean/shortcut/Wave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/16 v0, 0xc

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_HEIGHT_LARGE:I

    .line 20
    const/16 v0, 0x8

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_HEIGHT_MIDDLE:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_HEIGHT_LITTLE:I

    .line 23
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_LENGTH_MULTIPLE_LARGE:F

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_LENGTH_MULTIPLE_MIDDLE:F

    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_LENGTH_MULTIPLE_LITTLE:F

    .line 27
    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_HZ_FAST:F

    .line 28
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_HZ_NORMAL:F

    .line 29
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->WAVE_HZ_SLOW:F

    .line 31
    const/16 v0, 0x32

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->DEFAULT_ABOVE_WAVE_ALPHA:I

    .line 32
    const/16 v0, 0x1e

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->DEFAULT_BLOW_WAVE_ALPHA:I

    .line 34
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->X_SPACE:F

    .line 35
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    iput-wide v0, p0, Lcom/market2345/clean/shortcut/Wave;->PI2:D

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePath:Landroid/graphics/Path;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveOffset:F

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/market2345/clean/shortcut/Wave;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/Wave;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/Wave;->calculatePath()V

    return-void
.end method

.method private calculatePath()V
    .locals 9

    .prologue
    const/high16 v8, 0x41a00000    # 20.0f

    .line 157
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 158
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 160
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/Wave;->getWaveOffset()V

    .line 163
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/market2345/clean/shortcut/Wave;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/clean/shortcut/Wave;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    const/4 v0, 0x0

    .local v0, "x":F
    :goto_0
    iget v2, p0, Lcom/market2345/clean/shortcut/Wave;->mMaxRight:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 165
    iget v2, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/market2345/clean/shortcut/Wave;->omega:D

    float-to-double v6, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveOffset:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 166
    .local v1, "y":F
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    add-float/2addr v0, v8

    goto :goto_0

    .line 168
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/market2345/clean/shortcut/Wave;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/clean/shortcut/Wave;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/market2345/clean/shortcut/Wave;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/clean/shortcut/Wave;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/market2345/clean/shortcut/Wave;->mMaxRight:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 172
    iget v2, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/market2345/clean/shortcut/Wave;->omega:D

    float-to-double v6, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowOffset:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 173
    .restart local v1    # "y":F
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    add-float/2addr v0, v8

    goto :goto_1

    .line 175
    .end local v1    # "y":F
    :cond_1
    iget-object v2, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/market2345/clean/shortcut/Wave;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/clean/shortcut/Wave;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    return-void
.end method

.method private getWaveHeight(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 132
    :pswitch_0
    const/16 v0, 0xc

    goto :goto_0

    .line 134
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 136
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getWaveHz(I)F
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 150
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 144
    :pswitch_0
    const v0, 0x3e051eb8    # 0.13f

    goto :goto_0

    .line 146
    :pswitch_1
    const v0, 0x3db851ec    # 0.09f

    goto :goto_0

    .line 148
    :pswitch_2
    const v0, 0x3d4ccccd    # 0.05f

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getWaveMultiple(I)F
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :pswitch_0
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 122
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 124
    :pswitch_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getWaveOffset()V
    .locals 4

    .prologue
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    .line 223
    iget v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowOffset:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 224
    iput v2, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowOffset:F

    .line 229
    :goto_0
    iget v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveOffset:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 230
    iput v2, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveOffset:F

    .line 234
    :goto_1
    return-void

    .line 226
    :cond_0
    iget v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowOffset:F

    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHz:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowOffset:F

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveOffset:F

    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHz:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveOffset:F

    goto :goto_1
.end method


# virtual methods
.method public getAboveWavePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBlowWavePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initializePainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    return-void
.end method

.method public initializeWaveSize(III)V
    .locals 5
    .param p1, "waveMultiple"    # I
    .param p2, "waveHeight"    # I
    .param p3, "waveHz"    # I

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/market2345/clean/shortcut/Wave;->getWaveMultiple(I)F

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveMultiple:F

    .line 96
    invoke-direct {p0, p2}, Lcom/market2345/clean/shortcut/Wave;->getWaveHeight(I)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    .line 97
    invoke-direct {p0, p3}, Lcom/market2345/clean/shortcut/Wave;->getWaveHz(I)F

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHz:F

    .line 98
    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowOffset:F

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveHeight:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/Wave;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 182
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 187
    const-string v0, "wdh"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget v0, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveLength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Wave;->startWave()V

    .line 193
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 198
    const-string v0, "wdh"

    const-string v1, "onWindowVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/Wave;->startOrStopWave(Z)V

    .line 207
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAboveWaveColor(I)V
    .locals 0
    .param p1, "aboveWaveColor"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/market2345/clean/shortcut/Wave;->mAboveWaveColor:I

    .line 80
    return-void
.end method

.method public setBlowWaveColor(I)V
    .locals 0
    .param p1, "blowWaveColor"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/market2345/clean/shortcut/Wave;->mBlowWaveColor:I

    .line 84
    return-void
.end method

.method public startOrStopWave(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mRefreshProgressRunnable:Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/Wave;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    new-instance v0, Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;-><init>(Lcom/market2345/clean/shortcut/Wave;Lcom/market2345/clean/shortcut/Wave$1;)V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mRefreshProgressRunnable:Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;

    .line 240
    const-string v0, "wdh"

    const-string v1, "wave:addCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mRefreshProgressRunnable:Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/Wave;->post(Ljava/lang/Runnable;)Z

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/market2345/clean/shortcut/Wave;->mRefreshProgressRunnable:Lcom/market2345/clean/shortcut/Wave$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/Wave;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    const-string v0, "wdh"

    const-string v1, "wave:removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startWave()V
    .locals 6

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Wave;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveLength:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Wave;->getWidth()I

    move-result v0

    .line 212
    .local v0, "width":I
    int-to-float v1, v0

    iget v2, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveMultiple:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveLength:F

    .line 214
    const/4 v1, 0x0

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->left:I

    .line 215
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Wave;->getRight()I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->right:I

    .line 216
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Wave;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->bottom:I

    .line 217
    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/clean/shortcut/Wave;->mMaxRight:F

    .line 218
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget v1, p0, Lcom/market2345/clean/shortcut/Wave;->mWaveLength:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/market2345/clean/shortcut/Wave;->omega:D

    .line 220
    .end local v0    # "width":I
    :cond_0
    return-void
.end method
