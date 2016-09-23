.class public Lcom/market2345/customview/download/DownloadingLayout;
.super Landroid/widget/LinearLayout;
.source "DownloadingLayout.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 1
    .param p1, "downloading"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadingLayout;->setVisibility(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadingLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 32
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 42
    return-void
.end method
