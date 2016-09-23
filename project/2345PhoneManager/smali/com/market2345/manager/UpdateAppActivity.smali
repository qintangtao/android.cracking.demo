.class public Lcom/market2345/manager/UpdateAppActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "UpdateAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# static fields
.field public static final DOWNLOADALL:Ljava/lang/String; = "downloadall"


# instance fields
.field private mAdapter:Lcom/market2345/manager/UpdateAdapter;

.field private mAppsListView:Landroid/widget/ListView;

.field private mBack:Landroid/widget/ImageButton;

.field private mBottomLay:Landroid/widget/LinearLayout;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mSession:Lcom/market2345/datacenter/DataCenterObserver;

.field private mShowIgnoreText:Landroid/widget/TextView;

.field private mShowText:Landroid/widget/TextView;

.field private mToWonderButton:Landroid/widget/Button;

.field private mUpdateAllText:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/manager/UpdateAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/UpdateAppActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAppActivity;->setBottomStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/manager/UpdateAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/UpdateAppActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAppActivity;->downLoadAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/manager/UpdateAppActivity;)Lcom/market2345/datacenter/DataCenterObserver;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/UpdateAppActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    return-object v0
.end method

.method private downLoadAll()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/market2345/manager/UpdateAppActivity$3;

    invoke-direct {v1, p0}, Lcom/market2345/manager/UpdateAppActivity$3;-><init>(Lcom/market2345/manager/UpdateAppActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method private downPartial(Lcom/market2345/model/App;)Z
    .locals 2
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v0, 0x1

    .line 131
    iget v1, p1, Lcom/market2345/model/App;->mDownPartial:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseFileLength(Ljava/lang/String;)F
    .locals 9
    .param p1, "fileLength"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v3

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "fileEnd":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "fileNum":Ljava/lang/String;
    const-string v4, "MB"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 217
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    goto :goto_0

    .line 219
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :cond_2
    const-string v4, "KB"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v8

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 221
    .restart local v0    # "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    goto :goto_0

    .line 223
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :cond_3
    const-string v4, "GB"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 225
    .restart local v0    # "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    goto :goto_0
.end method

.method private setBottomStatus()V
    .locals 14

    .prologue
    .line 135
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v11}, Lcom/market2345/datacenter/DataCenterObserver;->getIgnoreNumber()I

    move-result v5

    .line 136
    .local v5, "ignoreCount":I
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v11}, Lcom/market2345/datacenter/DataCenterObserver;->getUpgradeNumber()I

    move-result v10

    .line 137
    .local v10, "updateCount":I
    add-int v11, v5, v10

    if-lez v11, :cond_6

    .line 138
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mBottomLay:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    if-lez v10, :cond_4

    .line 140
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mAdapter:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v11}, Lcom/market2345/manager/UpdateAdapter;->getCount()I

    move-result v6

    .line 141
    .local v6, "listSize":I
    const/4 v9, 0x0

    .line 142
    .local v9, "totalSize":F
    const/4 v7, 0x0

    .line 144
    .local v7, "saveSize":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 145
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mAdapter:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v11, v4}, Lcom/market2345/manager/UpdateAdapter;->getItem(I)Lcom/market2345/model/App;

    move-result-object v0

    .line 146
    .local v0, "app":Lcom/market2345/model/App;
    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->downPartial(Lcom/market2345/model/App;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 149
    iget-wide v12, v0, Lcom/market2345/model/App;->patch_size:J

    long-to-float v11, v12

    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x44800000    # 1024.0f

    div-float v3, v11, v12

    .line 150
    .local v3, "fileLength":F
    iget-object v11, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/market2345/manager/UpdateAppActivity;->parseFileLength(Ljava/lang/String;)F

    move-result v11

    sub-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 155
    :goto_1
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_0

    .line 156
    add-float/2addr v9, v3

    .line 144
    .end local v3    # "fileLength":F
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v11, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/market2345/manager/UpdateAppActivity;->parseFileLength(Ljava/lang/String;)F

    move-result v3

    .restart local v3    # "fileLength":F
    goto :goto_1

    .line 160
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v3    # "fileLength":F
    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v12, v9

    invoke-direct {v1, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 161
    .local v1, "bd":Ljava/math/BigDecimal;
    const/4 v11, 0x2

    const/4 v12, 0x5

    invoke-virtual {v1, v11, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    .line 163
    new-instance v2, Ljava/math/BigDecimal;

    float-to-double v12, v7

    invoke-direct {v2, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 164
    .local v2, "bdSave":Ljava/math/BigDecimal;
    const/4 v11, 0x2

    const/4 v12, 0x5

    invoke-virtual {v2, v11, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    .line 166
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u5168\u90e8\u5347\u7ea7 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "show":Ljava/lang/String;
    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-eqz v11, :cond_3

    .line 168
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(\u5171\u7701"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MB)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 170
    :cond_3
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mUpdateAllText:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    .end local v1    # "bd":Ljava/math/BigDecimal;
    .end local v2    # "bdSave":Ljava/math/BigDecimal;
    .end local v4    # "i":I
    .end local v6    # "listSize":I
    .end local v7    # "saveSize":F
    .end local v8    # "show":Ljava/lang/String;
    .end local v9    # "totalSize":F
    :goto_2
    if-lez v5, :cond_5

    .line 180
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowIgnoreText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :goto_3
    return-void

    .line 175
    :cond_4
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowText:Landroid/widget/TextView;

    const-string v12, "\u6682\u65e0\u5e94\u7528\u53ef\u5347\u7ea7"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mUpdateAllText:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 182
    :cond_5
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowIgnoreText:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 185
    :cond_6
    iget-object v11, p0, Lcom/market2345/manager/UpdateAppActivity;->mBottomLay:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 235
    :sswitch_0
    const-class v1, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "type"

    const-string v4, "az_jcfx"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    const v4, 0x7f0b006b

    invoke-virtual {p0, v4}, Lcom/market2345/manager/UpdateAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/market2345/home/HomeUtils;->startActivityFromIn(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAppActivity;->downLoadAll()V

    goto :goto_0

    .line 245
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/market2345/manager/IgnoredAppsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Update_IgnoreSee"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAppActivity;->finish()V

    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_3
        0x7f09022e -> :sswitch_0
        0x7f09040d -> :sswitch_1
        0x7f09040e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->setContentView(I)V

    .line 80
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    .line 82
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mBack:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f09040b

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mBottomLay:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f09022e

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mToWonderButton:Landroid/widget/Button;

    .line 90
    const v0, 0x7f09040c

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowText:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f09040e

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowIgnoreText:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f09040d

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mUpdateAllText:Landroid/widget/Button;

    .line 93
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/market2345/manager/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mAppsListView:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mToWonderButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mUpdateAllText:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mShowIgnoreText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mAppsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020334

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mAppsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/manager/UpdateAppActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 101
    new-instance v0, Lcom/market2345/manager/UpdateAdapter;

    invoke-direct {v0, p0}, Lcom/market2345/manager/UpdateAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mAdapter:Lcom/market2345/manager/UpdateAdapter;

    .line 102
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mAdapter:Lcom/market2345/manager/UpdateAdapter;

    new-instance v1, Lcom/market2345/manager/UpdateAppActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/manager/UpdateAppActivity$1;-><init>(Lcom/market2345/manager/UpdateAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/manager/UpdateAdapter;->setUpdateCallBack(Lcom/market2345/manager/UpdateAdapter$UpdateCallback;)V

    .line 109
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mAppsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/manager/UpdateAppActivity;->mAdapter:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "downloadall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/market2345/manager/UpdateAppActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/manager/UpdateAppActivity$2;-><init>(Lcom/market2345/manager/UpdateAppActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAppActivity;->setBottomStatus()V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 278
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 279
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 267
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 268
    check-cast v0, Landroid/util/Pair;

    .line 269
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.ignore.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAppActivity;->setBottomStatus()V

    .line 273
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
