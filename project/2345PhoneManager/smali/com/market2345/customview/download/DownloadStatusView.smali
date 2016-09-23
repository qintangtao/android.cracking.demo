.class public Lcom/market2345/customview/download/DownloadStatusView;
.super Landroid/widget/TextView;
.source "DownloadStatusView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private setDownText(ZLjava/lang/String;II)V
    .locals 1
    .param p1, "tvEnable"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "resIdBg"    # I
    .param p4, "textColorId"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/market2345/customview/download/DownloadStatusView;->setEnabled(Z)V

    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0, p2}, Lcom/market2345/customview/download/DownloadStatusView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_0
    if-lez p3, :cond_1

    .line 166
    invoke-virtual {p0, p3}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    .line 171
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 172
    return-void

    .line 162
    :cond_0
    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_1
    const v0, 0x7f02018b

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 154
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 38
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 48
    const-string v2, ""

    .line 49
    .local v2, "text":Ljava/lang/String;
    const/4 v4, 0x1

    .line 50
    .local v4, "tvEnable":Z
    const v1, 0x7f02018b

    .line 51
    .local v1, "resIdBg":I
    const v3, 0x7f07004f

    .line 53
    .local v3, "textColorId":I
    if-nez p1, :cond_0

    .line 54
    const-string v6, "\u4e0b\u8f7d"

    invoke-direct {p0, v4, v6, v1, v3}, Lcom/market2345/customview/download/DownloadStatusView;->setDownText(ZLjava/lang/String;II)V

    .line 144
    :goto_0
    :sswitch_0
    return-void

    .line 58
    :cond_0
    iget v6, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v6, :sswitch_data_0

    .line 143
    :goto_1
    invoke-direct {p0, v4, v2, v1, v3}, Lcom/market2345/customview/download/DownloadStatusView;->setDownText(ZLjava/lang/String;II)V

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v2, "\u7b49\u5f85\u4e2d"

    .line 62
    goto :goto_1

    .line 65
    :sswitch_2
    const-string v2, "\u6682\u505c"

    .line 66
    goto :goto_1

    .line 68
    :sswitch_3
    const-string v2, "\u76f4\u63a5\u4e0b\u8f7d"

    .line 69
    goto :goto_1

    .line 71
    :sswitch_4
    const-string v2, "\u7ee7\u7eed"

    .line 72
    goto :goto_1

    .line 74
    :sswitch_5
    const-string v2, "\u91cd\u8bd5"

    .line 75
    goto :goto_1

    .line 77
    :sswitch_6
    const-string v2, "\u68c0\u6d4b\u4e2d"

    .line 78
    const/4 v4, 0x0

    .line 79
    goto :goto_1

    .line 81
    :sswitch_7
    const-string v2, "\u5b89\u88c5\u4e2d"

    .line 82
    const/4 v4, 0x0

    .line 83
    goto :goto_1

    .line 85
    :sswitch_8
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v6

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateApp(Ljava/lang/String;)Lcom/market2345/model/App;

    move-result-object v5

    .line 87
    .local v5, "updateApp":Lcom/market2345/model/App;
    if-eqz v5, :cond_1

    iget v6, v5, Lcom/market2345/model/App;->versionCode:I

    iget v7, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    if-le v6, v7, :cond_1

    .line 88
    const-string v2, "\u5347\u7ea7"

    .line 89
    const v3, 0x7f07005a

    .line 90
    const v1, 0x7f020185

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 93
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_3

    .line 94
    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/File;

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    const-string v2, "\u5b89\u88c5"

    goto :goto_1

    .line 97
    :cond_2
    const-string v2, "\u4e0b\u8f7d"

    goto :goto_1

    .line 102
    :cond_3
    iget v6, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iget v7, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    if-le v6, v7, :cond_5

    .line 103
    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/io/File;

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 104
    const-string v2, "\u5b89\u88c5"

    goto/16 :goto_1

    .line 107
    :cond_4
    const-string v2, "\u5347\u7ea7"

    .line 108
    const v3, 0x7f07005a

    .line 109
    const v1, 0x7f020185

    goto/16 :goto_1

    .line 114
    :cond_5
    const-string v2, "\u6253\u5f00"

    .line 115
    const v3, 0x7f07005a

    .line 116
    const v1, 0x7f020185

    goto/16 :goto_1

    .line 123
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v5    # "updateApp":Lcom/market2345/model/App;
    :sswitch_9
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v6

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 124
    const-string v2, "\u5347\u7ea7"

    .line 125
    const v3, 0x7f07005a

    .line 126
    const v1, 0x7f020185

    goto/16 :goto_1

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 129
    .restart local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_7

    .line 130
    const-string v2, "\u4e0b\u8f7d"

    goto/16 :goto_1

    .line 132
    :cond_7
    const-string v2, "\u6253\u5f00"

    .line 133
    const v3, 0x7f07005a

    .line 134
    const v1, 0x7f020185

    goto/16 :goto_1

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_5
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_2
        0xc8 -> :sswitch_8
        0x1ea -> :sswitch_0
        0x258 -> :sswitch_6
        0x259 -> :sswitch_7
        0x25a -> :sswitch_9
    .end sparse-switch
.end method
