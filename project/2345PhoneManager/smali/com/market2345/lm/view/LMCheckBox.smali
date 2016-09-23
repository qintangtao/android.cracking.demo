.class public Lcom/market2345/lm/view/LMCheckBox;
.super Landroid/widget/ImageView;
.source "LMCheckBox.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 39
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 112
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 50
    const/16 v1, 0x8

    .line 52
    .local v1, "visibility":I
    if-nez p1, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/market2345/lm/view/LMCheckBox;->setVisibility(I)V

    .line 107
    :goto_0
    :sswitch_0
    return-void

    .line 57
    :cond_0
    iget v2, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 104
    :cond_1
    :goto_1
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/market2345/lm/view/LMCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 83
    :sswitch_2
    invoke-virtual {p0}, Lcom/market2345/lm/view/LMCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    iget-object v3, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 84
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_1

    .line 85
    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    const/4 v1, 0x0

    goto :goto_1

    .line 94
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    :sswitch_3
    invoke-virtual {p0}, Lcom/market2345/lm/view/LMCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    iget-object v3, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 95
    .restart local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_1

    .line 96
    const/4 v1, 0x0

    goto :goto_1

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc5 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x1ea -> :sswitch_0
        0x258 -> :sswitch_1
        0x259 -> :sswitch_1
        0x25a -> :sswitch_3
    .end sparse-switch
.end method
