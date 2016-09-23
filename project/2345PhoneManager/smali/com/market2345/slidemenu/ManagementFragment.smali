.class public Lcom/market2345/slidemenu/ManagementFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "ManagementFragment.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;
    }
.end annotation


# instance fields
.field private cleanManagementContentTextView:Landroid/widget/TextView;

.field private clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

.field private line2:Landroid/widget/RelativeLayout;

.field private line3:Landroid/widget/RelativeLayout;

.field private line4:Landroid/widget/RelativeLayout;

.field private line5:Landroid/widget/RelativeLayout;

.field private line_uninstall:Landroid/widget/RelativeLayout;

.field private line_upgrade:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private receiveManagementContenttextView:Landroid/widget/TextView;

.field private supportTag:Ljava/lang/String;

.field private upgradeSubtitleTextView:Landroid/widget/TextView;

.field private upgradeTextViewCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-direct {v0, p0, v1}, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;-><init>(Lcom/market2345/slidemenu/ManagementFragment;Lcom/market2345/slidemenu/ManagementFragment$1;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    .line 71
    iput-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->supportTag:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/market2345/slidemenu/ManagementFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/slidemenu/ManagementFragment$1;-><init>(Lcom/market2345/slidemenu/ManagementFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->mHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/ManagementFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment;->updateShowCount()V

    return-void
.end method

.method private checkNums()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    .local v0, "currentTimeMillis":J
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/market2345/cacheclean/Util;->getLaseCleanDate(Landroid/content/Context;J)J

    move-result-wide v2

    .line 246
    .local v2, "durTime":J
    cmp-long v5, v2, v0

    if-nez v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/market2345/slidemenu/ManagementFragment;->cleanManagementContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0b00ab

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    iget-object v5, p0, Lcom/market2345/slidemenu/ManagementFragment;->receiveManagementContenttextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0b00ad

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/datacenter/DataCenterObserver;->getFileFromPCCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void

    .line 252
    :cond_0
    const-wide/32 v6, 0x5265c00

    div-long/2addr v2, v6

    .line 253
    const-wide/16 v6, 0x1e

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    .line 254
    iget-object v5, p0, Lcom/market2345/slidemenu/ManagementFragment;->cleanManagementContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0b00a9

    new-array v8, v11, [Ljava/lang/Object;

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseTimeSize(Landroid/content/Context;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "str1":Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/slidemenu/ManagementFragment;->cleanManagementContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0b00aa

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 123
    const v0, 0x7f090305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line_upgrade:Landroid/widget/RelativeLayout;

    .line 124
    const v0, 0x7f09030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line_uninstall:Landroid/widget/RelativeLayout;

    .line 125
    const v0, 0x7f090310

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line2:Landroid/widget/RelativeLayout;

    .line 126
    const v0, 0x7f090313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line3:Landroid/widget/RelativeLayout;

    .line 127
    const v0, 0x7f090316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line4:Landroid/widget/RelativeLayout;

    .line 128
    const v0, 0x7f09031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line5:Landroid/widget/RelativeLayout;

    .line 129
    const v0, 0x7f09030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const v0, 0x7f090308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeSubtitleTextView:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f090318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->cleanManagementContentTextView:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f09031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->receiveManagementContenttextView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line_upgrade:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line_uninstall:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line2:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line3:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line4:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->line5:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->clickListener:Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private updateShowCount()V
    .locals 7

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getUpgradeNumber()I

    move-result v0

    .line 170
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 172
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6709"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a\u5e94\u7528\u53ef\u4ee5\u5347\u7ea7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "text":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v1, "ss":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070067

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    const/16 v6, 0x11

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 180
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .end local v1    # "ss":Landroid/text/SpannableString;
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeTextViewCount:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment;->upgradeSubtitleTextView:Landroid/widget/TextView;

    const-string v4, "\u6240\u6709\u5e94\u7528\u90fd\u662f\u6700\u65b0\u7684"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 107
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/ManagementFragment;->initView(Landroid/view/View;)V

    .line 99
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onHiddenChanged(Z)V

    .line 114
    if-nez p1, :cond_0

    .line 119
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment;->checkNums()V

    .line 239
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 240
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment;->supportTag:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 149
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 151
    check-cast v0, Landroid/util/Pair;

    .line 152
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.pc.transfer.file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->receiveManagementContenttextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment;->receiveManagementContenttextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b00ad

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->getFileFromPCCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
