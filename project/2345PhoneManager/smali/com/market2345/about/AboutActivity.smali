.class public Lcom/market2345/about/AboutActivity;
.super Lcom/market2345/home/BaseActivity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/update/UpdateUtils$UpdateListener;


# instance fields
.field private isUpdating:Z

.field private ivNewVersion:Landroid/widget/ImageView;

.field private mOfficeWeb:Landroid/widget/TextView;

.field private mOfficeWeiBo:Landroid/widget/TextView;

.field private mOfficeWeiXin:Landroid/widget/TextView;

.field private version_info:Landroid/widget/TextView;

.field private web:Ljava/lang/String;

.field private weiBoWeb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/about/AboutActivity;->isUpdating:Z

    .line 46
    const-string v0, "http://zs.2345.com"

    iput-object v0, p0, Lcom/market2345/about/AboutActivity;->web:Ljava/lang/String;

    .line 48
    const-string v0, "http://weibo.com/2345yybk"

    iput-object v0, p0, Lcom/market2345/about/AboutActivity;->weiBoWeb:Ljava/lang/String;

    return-void
.end method

.method private clearAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 176
    return-void
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 71
    const v3, 0x7f090055

    invoke-virtual {p0, v3}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/market2345/about/AboutActivity;->version_info:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f090057

    invoke-virtual {p0, v3}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/market2345/about/AboutActivity;->mOfficeWeb:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/market2345/about/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 74
    .local v1, "color":I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->web:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->mOfficeWeb:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 78
    const v3, 0x7f090059

    invoke-virtual {p0, v3}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/market2345/about/AboutActivity;->mOfficeWeiBo:Landroid/widget/TextView;

    .line 79
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    const-string v3, "@2345\u738b\u724c\u624b\u673a\u52a9\u624b"

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->mOfficeWeiBo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 83
    const v3, 0x7f09005b

    invoke-virtual {p0, v3}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/market2345/about/AboutActivity;->mOfficeWeiXin:Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->mOfficeWeiXin:Landroid/widget/TextView;

    const-string v4, "Apps2345"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->version_info:Landroid/widget/TextView;

    const-string v4, "V3.0.242702"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 91
    const v3, 0x7f090054

    invoke-virtual {p0, v3}, Lcom/market2345/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    .line 92
    const/16 v2, 0x26

    .line 93
    .local v2, "curVersion":I
    invoke-static {p0, v2}, Lcom/market2345/util/SPUtil;->getLatestVersion(Landroid/content/Context;I)I

    move-result v3

    if-le v3, v2, :cond_0

    .line 94
    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRotateAnimation(Landroid/content/Context;ILandroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animID"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 169
    .local v1, "rotateAnim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 170
    .local v0, "li":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 171
    invoke-virtual {p3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x10000000

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/about/AboutActivity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-boolean v4, p0, Lcom/market2345/about/AboutActivity;->isUpdating:Z

    if-nez v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/update/UpdateUtils;->aboutUpdateClick()V

    goto :goto_0

    .line 126
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "webOffice":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v4, p0, Lcom/market2345/about/AboutActivity;->web:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v1}, Lcom/market2345/about/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    .end local v1    # "webOffice":Landroid/content/Intent;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "weiBoOffice":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v4, p0, Lcom/market2345/about/AboutActivity;->weiBoWeb:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v2}, Lcom/market2345/about/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    .end local v2    # "weiBoOffice":Landroid/content/Intent;
    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, "weiXinOffice":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Lcom/market2345/about/AboutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 142
    .local v0, "manager":Landroid/text/ClipboardManager;
    const-string v4, "Apps2345"

    invoke-virtual {v0, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v4, 0x7f0b016f

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f090051
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/market2345/about/AboutActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/market2345/about/AboutActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/market2345/about/AboutActivity;->initListener()V

    .line 59
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/update/UpdateUtils;->registerUpdateListener(Lcom/market2345/update/UpdateUtils$UpdateListener;)V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 66
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/update/UpdateUtils;->unRegisterUpdateListener()V

    .line 68
    return-void
.end method

.method public onUpdateFinished()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/about/AboutActivity;->isUpdating:Z

    .line 163
    iget-object v0, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/market2345/about/AboutActivity;->clearAnimation(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public onUpdateStart()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/about/AboutActivity;->isUpdating:Z

    .line 155
    iget-object v0, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 156
    const/high16 v0, 0x7f040000

    iget-object v1, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    invoke-direct {p0, p0, v0, v1}, Lcom/market2345/about/AboutActivity;->startRotateAnimation(Landroid/content/Context;ILandroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/market2345/about/AboutActivity;->ivNewVersion:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method
