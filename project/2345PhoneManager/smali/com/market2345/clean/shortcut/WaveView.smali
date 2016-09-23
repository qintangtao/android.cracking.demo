.class public Lcom/market2345/clean/shortcut/WaveView;
.super Landroid/widget/LinearLayout;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/clean/shortcut/WaveView$1;,
        Lcom/market2345/clean/shortcut/WaveView$SavedState;
    }
.end annotation


# static fields
.field protected static final LARGE:I = 0x1

.field protected static final LITTLE:I = 0x3

.field protected static final MIDDLE:I = 0x2


# instance fields
.field private final DEFAULT_ABOVE_WAVE_COLOR:I

.field private final DEFAULT_BLOW_WAVE_COLOR:I

.field private final DEFAULT_PROGRESS:I

.field private mAboveWaveColor:I

.field private mBlowWaveColor:I

.field private mProgress:I

.field private mSolid:Lcom/market2345/clean/shortcut/Solid;

.field private mWave:Lcom/market2345/clean/shortcut/Wave;

.field private mWaveHeight:I

.field private mWaveHz:I

.field private mWaveMultiple:I

.field private mWaveToTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x50

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v4, p0, Lcom/market2345/clean/shortcut/WaveView;->DEFAULT_ABOVE_WAVE_COLOR:I

    .line 37
    iput v4, p0, Lcom/market2345/clean/shortcut/WaveView;->DEFAULT_BLOW_WAVE_COLOR:I

    .line 38
    iput v8, p0, Lcom/market2345/clean/shortcut/WaveView;->DEFAULT_PROGRESS:I

    .line 42
    invoke-virtual {p0, v5}, Lcom/market2345/clean/shortcut/WaveView;->setOrientation(I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/market2345/R$styleable;->WaveView:[I

    const v3, 0x7f01005d

    invoke-virtual {v1, p2, v2, v3, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mAboveWaveColor:I

    .line 46
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mBlowWaveColor:I

    .line 47
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mProgress:I

    .line 48
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveHeight:I

    .line 49
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveMultiple:I

    .line 50
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveHz:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    new-instance v1, Lcom/market2345/clean/shortcut/Wave;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/market2345/clean/shortcut/Wave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    .line 54
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    iget v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveMultiple:I

    iget v3, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveHeight:I

    iget v4, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveHz:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/market2345/clean/shortcut/Wave;->initializeWaveSize(III)V

    .line 55
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    iget v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mAboveWaveColor:I

    invoke-virtual {v1, v2}, Lcom/market2345/clean/shortcut/Wave;->setAboveWaveColor(I)V

    .line 56
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    iget v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mBlowWaveColor:I

    invoke-virtual {v1, v2}, Lcom/market2345/clean/shortcut/Wave;->setBlowWaveColor(I)V

    .line 57
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v1}, Lcom/market2345/clean/shortcut/Wave;->initializePainters()V

    .line 58
    new-instance v1, Lcom/market2345/clean/shortcut/Solid;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/market2345/clean/shortcut/Solid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mSolid:Lcom/market2345/clean/shortcut/Solid;

    .line 59
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mSolid:Lcom/market2345/clean/shortcut/Solid;

    iget-object v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/Wave;->getAboveWavePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/clean/shortcut/Solid;->setAboveWavePaint(Landroid/graphics/Paint;)V

    .line 60
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mSolid:Lcom/market2345/clean/shortcut/Solid;

    iget-object v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/Wave;->getBlowWavePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/clean/shortcut/Solid;->setBlowWavePaint(Landroid/graphics/Paint;)V

    .line 61
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {p0, v1}, Lcom/market2345/clean/shortcut/WaveView;->addView(Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mSolid:Lcom/market2345/clean/shortcut/Solid;

    invoke-virtual {p0, v1}, Lcom/market2345/clean/shortcut/WaveView;->addView(Landroid/view/View;)V

    .line 64
    iget v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/market2345/clean/shortcut/WaveView;->setProgress(I)V

    .line 66
    return-void
.end method

.method private computeWaveToTop()V
    .locals 5

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/WaveView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/market2345/clean/shortcut/WaveView;->mProgress:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveToTop:I

    .line 97
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v1}, Lcom/market2345/clean/shortcut/Wave;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 99
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mWaveToTop:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v1, v0}, Lcom/market2345/clean/shortcut/Wave;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/market2345/clean/shortcut/WaveView;->mProgress:I

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 115
    move-object v0, p1

    check-cast v0, Lcom/market2345/clean/shortcut/WaveView$SavedState;

    .line 116
    .local v0, "ss":Lcom/market2345/clean/shortcut/WaveView$SavedState;
    invoke-virtual {v0}, Lcom/market2345/clean/shortcut/WaveView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 117
    iget v1, v0, Lcom/market2345/clean/shortcut/WaveView$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/market2345/clean/shortcut/WaveView;->setProgress(I)V

    .line 118
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 108
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/market2345/clean/shortcut/WaveView$SavedState;

    invoke-direct {v0, v1}, Lcom/market2345/clean/shortcut/WaveView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 109
    .local v0, "ss":Lcom/market2345/clean/shortcut/WaveView$SavedState;
    iget v2, p0, Lcom/market2345/clean/shortcut/WaveView;->mProgress:I

    iput v2, v0, Lcom/market2345/clean/shortcut/WaveView$SavedState;->progress:I

    .line 110
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/WaveView;->computeWaveToTop()V

    .line 93
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    const/16 v0, 0x64

    .line 81
    if-le p1, v0, :cond_0

    move p1, v0

    .end local p1    # "progress":I
    :cond_0
    iput p1, p0, Lcom/market2345/clean/shortcut/WaveView;->mProgress:I

    .line 82
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/WaveView;->computeWaveToTop()V

    .line 83
    return-void
.end method

.method public startOrStopWave(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v0, p1}, Lcom/market2345/clean/shortcut/Wave;->startOrStopWave(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public startWave()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/market2345/clean/shortcut/WaveView;->mWave:Lcom/market2345/clean/shortcut/Wave;

    invoke-virtual {v0}, Lcom/market2345/clean/shortcut/Wave;->startWave()V

    .line 72
    :cond_0
    return-void
.end method
