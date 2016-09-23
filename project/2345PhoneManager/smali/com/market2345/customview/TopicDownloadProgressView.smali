.class public Lcom/market2345/customview/TopicDownloadProgressView;
.super Landroid/widget/LinearLayout;
.source "TopicDownloadProgressView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# instance fields
.field private ivProgress:Landroid/widget/ImageView;

.field private mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private tvText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/market2345/customview/TopicDownloadProgressView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/market2345/customview/TopicDownloadProgressView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/market2345/customview/TopicDownloadProgressView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const v0, 0x7f0902a1

    invoke-virtual {p0, v0}, Lcom/market2345/customview/TopicDownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0902a2

    invoke-virtual {p0, v0}, Lcom/market2345/customview/TopicDownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->tvText:Landroid/widget/TextView;

    .line 52
    invoke-direct {p0, v2}, Lcom/market2345/customview/TopicDownloadProgressView;->setIsTopicBtnDown(Z)V

    .line 53
    return-void
.end method

.method private setIsTopicBtnDown(Z)V
    .locals 3
    .param p1, "isDetailBtnDown"    # Z

    .prologue
    const/4 v1, -0x2

    .line 86
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v1, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    iget-object v1, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    const v2, 0x7f02030b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadText(ZLjava/lang/String;III)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textColorId"    # I
    .param p4, "resIdBg"    # I
    .param p5, "level"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/market2345/customview/TopicDownloadProgressView;->setEnabled(Z)V

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->tvText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/customview/TopicDownloadProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    if-lez p4, :cond_1

    .line 70
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 75
    :goto_1
    invoke-virtual {p0, p5}, Lcom/market2345/customview/TopicDownloadProgressView;->setLevel(I)V

    .line 76
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->tvText:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 80
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/market2345/customview/TopicDownloadProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 83
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 216
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 97
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 212
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 105
    const-string v7, ""

    .line 106
    .local v7, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 107
    .local v1, "tvEnable":Z
    const v4, 0x7f02018b

    .line 108
    .local v4, "resIdBg":I
    const v3, 0x7f07004f

    .line 109
    .local v3, "textColorId":I
    const/4 v5, 0x0

    .line 111
    .local v5, "level":I
    if-nez p1, :cond_0

    .line 112
    const-string v2, "\u4e0b\u8f7d"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    move-object v2, v7

    .line 208
    .end local v7    # "text":Ljava/lang/String;
    .local v2, "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 116
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_0
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mProgress:F

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v0, v11

    float-to-double v8, v0

    .line 117
    .local v8, "progress":D
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    move-object v2, v7

    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    :goto_1
    move-object v0, p0

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0

    .line 120
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_0
    const-string v2, "\u7b49\u5f85\u4e2d"

    .line 121
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1

    .line 124
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_1
    const-string v2, "\u6682\u505c"

    .line 125
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    mul-double/2addr v12, v8

    double-to-int v5, v12

    .line 126
    goto :goto_1

    .line 128
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_2
    const-string v2, "\u76f4\u63a5\u4e0b\u8f7d"

    .line 129
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1

    .line 131
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_3
    const-string v2, "\u7ee7\u7eed"

    .line 132
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    mul-double/2addr v12, v8

    double-to-int v5, v12

    .line 133
    goto :goto_1

    .line 135
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_4
    const-string v2, "\u91cd\u8bd5"

    .line 136
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1

    .line 138
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_5
    const-string v2, "\u68c0\u6d4b\u4e2d"

    .line 139
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const/16 v5, 0x2710

    .line 140
    const/4 v1, 0x0

    .line 141
    goto :goto_1

    .line 143
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_6
    const-string v2, "\u5b89\u88c5\u4e2d"

    .line 144
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const/16 v5, 0x2710

    .line 145
    const/4 v1, 0x0

    .line 146
    goto :goto_1

    .line 148
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p0}, Lcom/market2345/customview/TopicDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v11, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateApp(Ljava/lang/String;)Lcom/market2345/model/App;

    move-result-object v10

    .line 150
    .local v10, "updateApp":Lcom/market2345/model/App;
    if-eqz v10, :cond_1

    iget v0, v10, Lcom/market2345/model/App;->versionCode:I

    iget v11, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    if-le v0, v11, :cond_1

    .line 151
    const-string v2, "\u5347\u7ea7"

    .line 152
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const v3, 0x7f07005a

    .line 153
    const v4, 0x7f020185

    goto :goto_1

    .line 155
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/customview/TopicDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iget-object v11, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v6

    .line 156
    .local v6, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v6, :cond_3

    .line 157
    iget-object v0, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v11, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const-string v2, "\u5b89\u88c5"

    .line 159
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const/16 v5, 0x2710

    goto :goto_1

    .line 161
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_2
    const-string v2, "\u4e0b\u8f7d"

    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_3
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iget v11, v6, Lcom/market2345/model/InstalledApp;->versionCode:I

    if-le v0, v11, :cond_5

    .line 167
    iget-object v0, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v11, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    const-string v2, "\u5b89\u88c5"

    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto/16 :goto_1

    .line 171
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_4
    const-string v2, "\u5347\u7ea7"

    .line 172
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const v3, 0x7f07005a

    .line 173
    const v4, 0x7f020185

    goto/16 :goto_1

    .line 178
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_5
    const-string v2, "\u6253\u5f00"

    .line 179
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const v3, 0x7f07005a

    .line 180
    const v4, 0x7f020185

    goto/16 :goto_1

    .line 187
    .end local v2    # "text":Ljava/lang/String;
    .end local v6    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v10    # "updateApp":Lcom/market2345/model/App;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_8
    invoke-virtual {p0}, Lcom/market2345/customview/TopicDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v11, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    const-string v2, "\u5347\u7ea7"

    .line 189
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const v3, 0x7f07005a

    .line 190
    const v4, 0x7f020185

    goto/16 :goto_1

    .line 192
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/market2345/customview/TopicDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iget-object v11, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v6

    .line 193
    .restart local v6    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v6, :cond_7

    .line 194
    const-string v2, "\u4e0b\u8f7d"

    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto/16 :goto_1

    .line 196
    .end local v2    # "text":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_7
    const-string v2, "\u6253\u5f00"

    .line 197
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const v3, 0x7f07005a

    .line 198
    const v4, 0x7f020185

    goto/16 :goto_1

    .end local v2    # "text":Ljava/lang/String;
    .end local v6    # "installedApp":Lcom/market2345/model/InstalledApp;
    .restart local v7    # "text":Ljava/lang/String;
    :sswitch_9
    move-object v2, v7

    .line 203
    .end local v7    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_4
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_1
        0xc8 -> :sswitch_7
        0x1ea -> :sswitch_9
        0x258 -> :sswitch_5
        0x259 -> :sswitch_6
        0x25a -> :sswitch_8
    .end sparse-switch
.end method
