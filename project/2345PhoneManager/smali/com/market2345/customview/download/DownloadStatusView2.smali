.class public Lcom/market2345/customview/download/DownloadStatusView2;
.super Landroid/widget/TextView;
.source "DownloadStatusView2.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/market2345/customview/download/DownloadStatusView2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/customview/download/DownloadStatusView2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private setDownText(ZLjava/lang/String;II)V
    .locals 1
    .param p1, "tvEnable"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "resIdBg"    # I
    .param p4, "textColorId"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/market2345/customview/download/DownloadStatusView2;->setEnabled(Z)V

    .line 161
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0, p2}, Lcom/market2345/customview/download/DownloadStatusView2;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    if-lez p3, :cond_1

    .line 168
    invoke-virtual {p0, p3}, Lcom/market2345/customview/download/DownloadStatusView2;->setBackgroundResource(I)V

    .line 173
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadStatusView2;->setTextColor(I)V

    .line 175
    return-void

    .line 164
    :cond_0
    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadStatusView2;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_1
    const v0, 0x7f02018b

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/DownloadStatusView2;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 56
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 66
    const-string v2, ""

    .line 67
    .local v2, "text":Ljava/lang/String;
    const/4 v4, 0x1

    .line 68
    .local v4, "tvEnable":Z
    const v1, 0x7f02018b

    .line 70
    .local v1, "resIdBg":I
    const v3, 0x7f07004f

    .line 72
    .local v3, "textColorId":I
    if-nez p1, :cond_0

    .line 73
    const-string v5, "\u4e0b\u8f7d"

    invoke-direct {p0, v4, v5, v1, v3}, Lcom/market2345/customview/download/DownloadStatusView2;->setDownText(ZLjava/lang/String;II)V

    .line 146
    :goto_0
    :sswitch_0
    return-void

    .line 77
    :cond_0
    iget v5, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v5, :sswitch_data_0

    .line 145
    :goto_1
    invoke-direct {p0, v4, v2, v1, v3}, Lcom/market2345/customview/download/DownloadStatusView2;->setDownText(ZLjava/lang/String;II)V

    goto :goto_0

    .line 80
    :sswitch_1
    const-string v2, "\u7b49\u5f85\u4e2d"

    .line 81
    goto :goto_1

    .line 84
    :sswitch_2
    const-string v2, "\u6682\u505c"

    .line 86
    goto :goto_1

    .line 88
    :sswitch_3
    const-string v2, "\u76f4\u63a5\u4e0b\u8f7d"

    .line 89
    goto :goto_1

    .line 91
    :sswitch_4
    const-string v2, "\u7ee7\u7eed"

    .line 93
    goto :goto_1

    .line 95
    :sswitch_5
    const-string v2, "\u91cd\u8bd5"

    .line 96
    goto :goto_1

    .line 98
    :sswitch_6
    const-string v2, "\u68c0\u6d4b\u4e2d"

    .line 99
    const/4 v4, 0x0

    .line 100
    goto :goto_1

    .line 102
    :sswitch_7
    const-string v2, "\u5b89\u88c5\u4e2d"

    .line 103
    const/4 v4, 0x0

    .line 104
    goto :goto_1

    .line 107
    :sswitch_8
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 108
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_1

    .line 109
    const-string v2, "\u5b89\u88c5"

    goto :goto_1

    .line 113
    :cond_1
    iget v5, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iget v6, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    if-le v5, v6, :cond_2

    .line 114
    const-string v2, "\u5b89\u88c5"

    goto :goto_1

    .line 118
    :cond_2
    const-string v2, "\u6253\u5f00"

    .line 119
    const v1, 0x7f020185

    .line 120
    const v3, 0x7f07005a

    .line 123
    goto :goto_1

    .line 130
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    :sswitch_9
    invoke-virtual {p0}, Lcom/market2345/customview/download/DownloadStatusView2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 131
    .restart local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_3

    .line 132
    const-string v2, "\u5b89\u88c5"

    goto :goto_1

    .line 134
    :cond_3
    const-string v2, "\u6253\u5f00"

    .line 135
    const v1, 0x7f020185

    .line 136
    const v3, 0x7f07005a

    .line 139
    goto :goto_1

    .line 77
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
