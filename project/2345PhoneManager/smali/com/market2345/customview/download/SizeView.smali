.class public Lcom/market2345/customview/download/SizeView;
.super Landroid/widget/TextView;
.source "SizeView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/market2345/customview/download/SizeView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 33
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 42
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_0

    .line 43
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/SizeView;->setVisibility(I)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/SizeView;->setVisibility(I)V

    goto :goto_0
.end method
