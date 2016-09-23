.class public Lcom/market2345/customview/DetailDownloadProgressView;
.super Landroid/widget/LinearLayout;
.source "DetailDownloadProgressView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ivProgress:Landroid/widget/ImageView;

.field private mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private mDownText:Ljava/lang/String;

.field private tvText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/market2345/customview/DetailDownloadProgressView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/customview/DetailDownloadProgressView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/market2345/customview/DetailDownloadProgressView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/market2345/customview/DetailDownloadProgressView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/market2345/customview/DetailDownloadProgressView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/market2345/customview/DetailDownloadProgressView;->getDefaultDownText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->mDownText:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    const v0, 0x7f0902a1

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DetailDownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0902a2

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DetailDownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->tvText:Landroid/widget/TextView;

    .line 57
    invoke-direct {p0, v2}, Lcom/market2345/customview/DetailDownloadProgressView;->setIsTopicBtnDown(Z)V

    .line 58
    return-void
.end method

.method private setIsTopicBtnDown(Z)V
    .locals 3
    .param p1, "isDetailBtnDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/market2345/customview/DetailDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v1, p0, Lcom/market2345/customview/DetailDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 103
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDefaultDownText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "\u4e0b\u8f7d"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->tvText:Landroid/widget/TextView;

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
    .line 65
    invoke-virtual {p0, p1}, Lcom/market2345/customview/DetailDownloadProgressView;->setEnabled(Z)V

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->tvText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/customview/DetailDownloadProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    if-lez p4, :cond_1

    .line 75
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    :goto_1
    invoke-virtual {p0, p5}, Lcom/market2345/customview/DetailDownloadProgressView;->setLevel(I)V

    .line 81
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->tvText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DetailDownloadProgressView;->mDownText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 90
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/market2345/customview/DetailDownloadProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 93
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 237
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 112
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 108
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 233
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 17
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 116
    const-string v9, ""

    .line 117
    .local v9, "text":Ljava/lang/String;
    const/4 v3, 0x1

    .line 118
    .local v3, "tvEnable":Z
    const v6, 0x7f0200d0

    .line 119
    .local v6, "resIdBg":I
    const v5, 0x7f07001e

    .line 120
    .local v5, "textColorId":I
    const/4 v7, 0x0

    .line 122
    .local v7, "level":I
    if-nez p1, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/customview/DetailDownloadProgressView;->mDownText:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/market2345/customview/DetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    move-object v4, v9

    .line 229
    .end local v9    # "text":Ljava/lang/String;
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/market2345/download/DownloadInfo;->mProgress:F

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v2, v13

    float-to-double v10, v2

    .line 127
    .local v10, "progress":D
    move-object/from16 v0, p1

    iget v2, v0, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    move-object v4, v9

    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :goto_1
    move-object/from16 v2, p0

    .line 228
    invoke-virtual/range {v2 .. v7}, Lcom/market2345/customview/DetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0

    .line 130
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_0
    const-string v4, "\u7b49\u5f85\u4e2d"

    .line 131
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07004f

    .line 132
    goto :goto_1

    .line 135
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4e0b\u8f7d"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "%"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07004f

    .line 137
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v10

    double-to-int v7, v14

    .line 138
    goto :goto_1

    .line 140
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/customview/DetailDownloadProgressView;->mDownText:Ljava/lang/String;

    .line 141
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07004f

    .line 142
    goto :goto_1

    .line 144
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_3
    const-string v4, "\u7ee7\u7eed"

    .line 145
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07004f

    .line 146
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v10

    double-to-int v7, v14

    .line 147
    goto :goto_1

    .line 149
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_4
    const-string v4, "\u91cd\u8bd5"

    .line 150
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_5
    const-string v4, "\u68c0\u6d4b\u4e2d"

    .line 153
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const/16 v7, 0x2710

    .line 154
    const v5, 0x7f07004f

    .line 155
    const/4 v3, 0x0

    .line 156
    goto :goto_1

    .line 158
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_6
    const-string v4, "\u5b89\u88c5\u4e2d"

    .line 159
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const/16 v7, 0x2710

    .line 160
    const v5, 0x7f07004f

    .line 161
    const/4 v3, 0x0

    .line 162
    goto :goto_1

    .line 164
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/DetailDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateApp(Ljava/lang/String;)Lcom/market2345/model/App;

    move-result-object v12

    .line 166
    .local v12, "updateApp":Lcom/market2345/model/App;
    if-eqz v12, :cond_1

    iget v2, v12, Lcom/market2345/model/App;->versionCode:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    if-le v2, v13, :cond_1

    .line 167
    const-string v4, "\u5347\u7ea7"

    .line 168
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07005a

    .line 169
    const v6, 0x7f020186

    goto/16 :goto_1

    .line 171
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/DetailDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v8

    .line 172
    .local v8, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v8, :cond_3

    .line 173
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const-string v4, "\u5b89\u88c5"

    .line 175
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const/16 v7, 0x2710

    .line 176
    const v5, 0x7f07004f

    goto/16 :goto_1

    .line 178
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/customview/DetailDownloadProgressView;->mDownText:Ljava/lang/String;

    .line 179
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v6, 0x7f0200e0

    goto/16 :goto_1

    .line 184
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iget v13, v8, Lcom/market2345/model/InstalledApp;->versionCode:I

    if-le v2, v13, :cond_5

    .line 185
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    const-string v4, "\u5b89\u88c5"

    .line 187
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const/16 v7, 0x2710

    .line 188
    const v5, 0x7f07004f

    goto/16 :goto_1

    .line 191
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_4
    const-string v4, "\u5347\u7ea7"

    .line 192
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07005a

    .line 193
    const v6, 0x7f020186

    goto/16 :goto_1

    .line 198
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_5
    const-string v4, "\u6253\u5f00"

    .line 199
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07005a

    .line 200
    const v6, 0x7f020186

    goto/16 :goto_1

    .line 207
    .end local v4    # "text":Ljava/lang/String;
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v12    # "updateApp":Lcom/market2345/model/App;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/DetailDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    const-string v4, "\u5347\u7ea7"

    .line 209
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07005a

    .line 210
    const v6, 0x7f020186

    goto/16 :goto_1

    .line 212
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/DetailDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v8

    .line 213
    .restart local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v8, :cond_7

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/customview/DetailDownloadProgressView;->mDownText:Ljava/lang/String;

    .line 215
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v6, 0x7f0200e0

    goto/16 :goto_1

    .line 217
    .end local v4    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_7
    const-string v4, "\u6253\u5f00"

    .line 218
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    const v5, 0x7f07005a

    .line 219
    const v6, 0x7f020186

    goto/16 :goto_1

    .end local v4    # "text":Ljava/lang/String;
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    .restart local v9    # "text":Ljava/lang/String;
    :sswitch_9
    move-object v4, v9

    .line 224
    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 127
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
