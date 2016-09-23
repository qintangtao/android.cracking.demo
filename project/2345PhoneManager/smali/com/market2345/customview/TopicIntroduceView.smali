.class public Lcom/market2345/customview/TopicIntroduceView;
.super Landroid/widget/TextView;
.source "TopicIntroduceView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
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
    .line 34
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 29
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 4
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/market2345/customview/TopicIntroduceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/market2345/customview/TopicIntroduceView$1;

    invoke-direct {v0, p0}, Lcom/market2345/customview/TopicIntroduceView$1;-><init>(Lcom/market2345/customview/TopicIntroduceView;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/market2345/customview/TopicIntroduceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :cond_0
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 39
    return-void
.end method
