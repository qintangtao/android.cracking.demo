.class public Lcom/market2345/customview/download/MyProgressImageView;
.super Landroid/widget/ImageView;
.source "MyProgressImageView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# instance fields
.field private mClipDrawable:Landroid/graphics/drawable/ClipDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/market2345/customview/download/MyProgressImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/market2345/customview/download/MyProgressImageView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 35
    iget-object v0, p0, Lcom/market2345/customview/download/MyProgressImageView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 36
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "downloading"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/MyProgressImageView;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/MyProgressImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public showProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 40
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/MyProgressImageView;->setLevel(I)V

    .line 41
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 51
    return-void
.end method
