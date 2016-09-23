.class public Lcom/market2345/lm/view/LMStatusView;
.super Landroid/widget/LinearLayout;
.source "LMStatusView.java"

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
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/market2345/lm/view/LMStatusView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/lm/view/LMStatusView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/market2345/lm/view/LMStatusView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030079

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    const v0, 0x7f0902a1

    invoke-virtual {p0, v0}, Lcom/market2345/lm/view/LMStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->ivProgress:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0902a2

    invoke-virtual {p0, v0}, Lcom/market2345/lm/view/LMStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->tvText:Landroid/widget/TextView;

    .line 54
    invoke-direct {p0, v2}, Lcom/market2345/lm/view/LMStatusView;->setIsDetailBtnDown(Z)V

    .line 55
    return-void
.end method

.method private setIsDetailBtnDown(Z)V
    .locals 3
    .param p1, "isDetailBtnDown"    # Z

    .prologue
    const/4 v1, -0x2

    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/market2345/lm/view/LMStatusView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, p0, Lcom/market2345/lm/view/LMStatusView;->ivProgress:Landroid/widget/ImageView;

    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    iget-object v1, p0, Lcom/market2345/lm/view/LMStatusView;->ivProgress:Landroid/widget/ImageView;

    const v2, 0x7f02030b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLMText(Ljava/lang/String;IZIIII)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # I
    .param p3, "tvEnable"    # Z
    .param p4, "visibility"    # I
    .param p5, "resIdBg"    # I
    .param p6, "textColorId"    # I
    .param p7, "level"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->tvText:Landroid/widget/TextView;

    const/4 v1, 0x1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->tvText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/lm/view/LMStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    invoke-virtual {p0, p7}, Lcom/market2345/lm/view/LMStatusView;->setLevel(I)V

    .line 184
    invoke-virtual {p0, p3}, Lcom/market2345/lm/view/LMStatusView;->setEnabled(Z)V

    .line 185
    invoke-virtual {p0, p4}, Lcom/market2345/lm/view/LMStatusView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 190
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 191
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "tv"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/market2345/lm/view/LMStatusView;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 176
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 77
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 88
    const-string v1, ""

    .line 89
    .local v1, "text":Ljava/lang/String;
    const/4 v3, 0x0

    .line 90
    .local v3, "tvEnable":Z
    const/4 v4, 0x0

    .line 91
    .local v4, "visibility":I
    const v5, 0x7f02018c

    .line 92
    .local v5, "resIdBg":I
    const v6, 0x7f07004f

    .line 93
    .local v6, "textColorId":I
    const/4 v7, 0x0

    .line 94
    .local v7, "level":I
    const/16 v2, 0xc

    .line 95
    .local v2, "textSize":I
    if-nez p1, :cond_0

    .line 96
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/market2345/lm/view/LMStatusView;->setVisibility(I)V

    .line 165
    :goto_0
    :sswitch_0
    return-void

    .line 100
    :cond_0
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mProgress:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v0, v9

    float-to-double v10, v0

    .line 101
    .local v10, "progress":D
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move-object v0, p0

    .line 164
    invoke-virtual/range {v0 .. v7}, Lcom/market2345/lm/view/LMStatusView;->setLMText(Ljava/lang/String;IZIIII)V

    goto :goto_0

    .line 104
    :sswitch_1
    const-string v1, "\u7b49\u5f85\u4e0b\u8f7d"

    .line 105
    const/4 v3, 0x1

    .line 106
    goto :goto_1

    .line 108
    :sswitch_2
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v10

    double-to-int v7, v12

    .line 110
    :sswitch_3
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v10

    double-to-int v7, v12

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/market2345/download/DownloadInfo;->mProgress:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "%"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    goto :goto_1

    .line 114
    :sswitch_4
    const-string v1, "\u76f4\u63a5\u4e0b\u8f7d"

    .line 115
    goto :goto_1

    .line 117
    :sswitch_5
    const-string v1, "\u7ee7\u7eed"

    .line 118
    const/4 v3, 0x1

    .line 119
    goto :goto_1

    .line 121
    :sswitch_6
    const-string v1, "\u91cd\u8bd5"

    .line 122
    goto :goto_1

    .line 124
    :sswitch_7
    const-string v1, "\u68c0\u6d4b\u4e2d"

    .line 125
    goto :goto_1

    .line 127
    :sswitch_8
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 128
    goto :goto_1

    .line 131
    :sswitch_9
    invoke-virtual {p0}, Lcom/market2345/lm/view/LMStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iget-object v9, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v8

    .line 132
    .local v8, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v8, :cond_2

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v9, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 135
    const/4 v3, 0x1

    .line 136
    const/4 v7, 0x0

    goto :goto_1

    .line 139
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 144
    :cond_2
    const-string v1, "\u5df2\u5b89\u88c5"

    .line 147
    goto :goto_1

    .line 149
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    :sswitch_a
    invoke-virtual {p0}, Lcom/market2345/lm/view/LMStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iget-object v9, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v8

    .line 150
    .restart local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v8, :cond_3

    .line 151
    const/16 v4, 0x8

    goto :goto_1

    .line 153
    :cond_3
    const-string v1, "\u5df2\u5b89\u88c5"

    .line 154
    const/16 v2, 0xe

    .line 155
    const/4 v7, 0x0

    .line 156
    const v6, 0x7f070049

    .line 157
    const v5, 0x7f07004a

    .line 159
    goto/16 :goto_1

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_6
        0xc4 -> :sswitch_4
        0xc5 -> :sswitch_3
        0xc8 -> :sswitch_9
        0x1ea -> :sswitch_0
        0x258 -> :sswitch_7
        0x259 -> :sswitch_8
        0x25a -> :sswitch_a
    .end sparse-switch
.end method
