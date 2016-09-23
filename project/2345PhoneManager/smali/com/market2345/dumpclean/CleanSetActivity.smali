.class public Lcom/market2345/dumpclean/CleanSetActivity;
.super Lcom/market2345/home/BaseActivity;
.source "CleanSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private arraySize:[Ljava/lang/String;

.field private arrayTimes:[Ljava/lang/String;

.field private bAlertSet:Z

.field private bDatabaseSet:Z

.field private dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

.field private dialogTime:Lcom/market2345/dumpclean/ListViewDialog;

.field private ibtn_left:Landroid/widget/ImageButton;

.field private iv_clean_alert:Landroid/widget/ImageView;

.field private iv_clean_database:Landroid/widget/ImageView;

.field private iv_clean_size:Landroid/widget/ImageView;

.field private iv_clean_time:Landroid/widget/ImageView;

.field private iv_clean_trust:Landroid/widget/ImageView;

.field private mCheckBtp:Landroid/graphics/Bitmap;

.field private mNotCheckBtp:Landroid/graphics/Bitmap;

.field private rl_clean_alert_set:Landroid/widget/RelativeLayout;

.field private rl_clean_database_set:Landroid/widget/RelativeLayout;

.field private rl_clean_size_set:Landroid/widget/RelativeLayout;

.field private rl_clean_time_set:Landroid/widget/RelativeLayout;

.field private rl_clean_trust_set:Landroid/widget/RelativeLayout;

.field private sizeIndex:I

.field private timeIndex:I

.field private tv_clean_database_show:Landroid/widget/TextView;

.field private tv_clean_size:Landroid/widget/TextView;

.field private tv_clean_size_show:Landroid/widget/TextView;

.field private tv_clean_time:Landroid/widget/TextView;

.field private tv_clean_time_show:Landroid/widget/TextView;

.field private tv_clean_trust:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    .line 52
    iput-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/CleanSetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/market2345/dumpclean/CleanSetActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/CleanSetActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arraySize:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/CleanSetActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/CleanSetActivity;)Lcom/market2345/dumpclean/ListViewDialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/CleanSetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/market2345/dumpclean/CleanSetActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/dumpclean/CleanSetActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arrayTimes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/dumpclean/CleanSetActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/dumpclean/CleanSetActivity;)Lcom/market2345/dumpclean/ListViewDialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanSetActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogTime:Lcom/market2345/dumpclean/ListViewDialog;

    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 77
    const-string v0, "clean_alert_set"

    invoke-static {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    .line 79
    const-string v0, "clean_database_update_set"

    invoke-static {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    .line 81
    const-string v0, "clean_time_set"

    invoke-static {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    .line 83
    iget v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    if-le v0, v2, :cond_0

    .line 84
    iput v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    .line 85
    :cond_0
    const-string v0, "clean_size_set"

    invoke-static {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    .line 87
    iget v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    if-le v0, v2, :cond_1

    .line 88
    iput v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    .line 89
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 92
    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->ibtn_left:Landroid/widget/ImageButton;

    .line 93
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->ibtn_left:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_alert_set:Landroid/widget/RelativeLayout;

    .line 96
    const v1, 0x7f090082

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_alert:Landroid/widget/ImageView;

    .line 97
    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_alert:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/dumpclean/CleanSetActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 98
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_alert_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_alert:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f090083

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_time_set:Landroid/widget/RelativeLayout;

    .line 102
    const v1, 0x7f090086

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_time:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time_show:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f090085

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arrayTimes:[Ljava/lang/String;

    iget v3, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_time_set:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time_show:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_time_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_time:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f090087

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_size_set:Landroid/widget/RelativeLayout;

    .line 113
    const v1, 0x7f09008a

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_size:Landroid/widget/ImageView;

    .line 114
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size_show:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arraySize:[Ljava/lang/String;

    iget v3, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_size_set:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size_show:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_size_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_size:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_trust_set:Landroid/widget/RelativeLayout;

    .line 124
    const v1, 0x7f09008e

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_trust:Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f09008d

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_trust:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f0b015e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/market2345/dumpclean/CleanTrustDBManager;

    invoke-direct {v4, p0}, Lcom/market2345/dumpclean/CleanTrustDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/market2345/dumpclean/CleanTrustDBManager;->queryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/market2345/dumpclean/CleanSetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "count":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_trust:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_trust_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_trust:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v1, 0x7f09008f

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_database_set:Landroid/widget/RelativeLayout;

    .line 133
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_database:Landroid/widget/ImageView;

    .line 134
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_database_show:Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_database_show:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_database:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/dumpclean/CleanSetActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 137
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_database_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_database:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method private setShowImage(ZLandroid/widget/ImageView;)V
    .locals 1
    .param p1, "toggle"    # Z
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 265
    if-nez p2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->mCheckBtp:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->mNotCheckBtp:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showSizeDialog()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/market2345/dumpclean/ListviewDialogAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arraySize:[Ljava/lang/String;

    iget v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I

    invoke-direct {v0, p0, v1, v2}, Lcom/market2345/dumpclean/ListviewDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 184
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    new-instance v1, Lcom/market2345/dumpclean/CleanSetActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/dumpclean/CleanSetActivity$1;-><init>(Lcom/market2345/dumpclean/CleanSetActivity;)V

    invoke-static {p0, v0, v1}, Lcom/market2345/util/DialogFactory;->createListViewDialog(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/market2345/dumpclean/ListViewDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    .line 200
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/ListViewDialog;->show()V

    .line 201
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    const v2, 0x7f0b0030

    invoke-virtual {p0, v2}, Lcom/market2345/dumpclean/CleanSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ListViewDialog;->setCleanTitle(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ListViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 203
    return-void
.end method

.method private showTimeDialog()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/market2345/dumpclean/ListviewDialogAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arrayTimes:[Ljava/lang/String;

    iget v2, p0, Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I

    invoke-direct {v0, p0, v1, v2}, Lcom/market2345/dumpclean/ListviewDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 209
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    new-instance v1, Lcom/market2345/dumpclean/CleanSetActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/dumpclean/CleanSetActivity$2;-><init>(Lcom/market2345/dumpclean/CleanSetActivity;)V

    invoke-static {p0, v0, v1}, Lcom/market2345/util/DialogFactory;->createListViewDialog(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/market2345/dumpclean/ListViewDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogTime:Lcom/market2345/dumpclean/ListViewDialog;

    .line 226
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogTime:Lcom/market2345/dumpclean/ListViewDialog;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/ListViewDialog;->show()V

    .line 227
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogTime:Lcom/market2345/dumpclean/ListViewDialog;

    const v2, 0x7f0b0031

    invoke-virtual {p0, v2}, Lcom/market2345/dumpclean/CleanSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ListViewDialog;->setCleanTitle(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->dialogTime:Lcom/market2345/dumpclean/ListViewDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ListViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    return-void
.end method

.method private updateCleanAlert()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    .line 234
    iget-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_alert:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 235
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_time_set:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->rl_clean_size_set:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time_show:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size_show:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    const-string v0, "clean_alert_set"

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    invoke-static {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 240
    invoke-static {p0}, Lcom/market2345/dumpclean/alert/CleanAlert;->initAlert(Landroid/content/Context;)V

    .line 242
    iget-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bAlertSet:Z

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "Cleaner_Setting_Notice1"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    :goto_1
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "Cleaner_Setting_Notice0"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCleanDatabase()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    .line 251
    iget-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->iv_clean_database:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 252
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_database_show:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    const-string v0, "clean_database_update_set"

    iget-boolean v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    invoke-static {p0, v0, v1}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 257
    iget-boolean v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->bDatabaseSet:Z

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "Cleaner_Setting_Update1"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    :goto_1
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :cond_1
    const-string v0, "Cleaner_Setting_Update0"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 154
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->finish()V

    goto :goto_0

    .line 158
    :sswitch_1
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->updateCleanAlert()V

    goto :goto_0

    .line 162
    :sswitch_2
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->showTimeDialog()V

    goto :goto_0

    .line 166
    :sswitch_3
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->showSizeDialog()V

    goto :goto_0

    .line 170
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/dumpclean/CleanTrustActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanSetActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    :sswitch_5
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->updateCleanDatabase()V

    goto :goto_0

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006c -> :sswitch_0
        0x7f09007f -> :sswitch_1
        0x7f090082 -> :sswitch_1
        0x7f090083 -> :sswitch_2
        0x7f090086 -> :sswitch_2
        0x7f090087 -> :sswitch_3
        0x7f09008a -> :sswitch_3
        0x7f09008b -> :sswitch_4
        0x7f09008e -> :sswitch_4
        0x7f09008f -> :sswitch_5
        0x7f090092 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanSetActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->mCheckBtp:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->mNotCheckBtp:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arrayTimes:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity;->arraySize:[Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->initData()V

    .line 73
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanSetActivity;->initView()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 143
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onResume()V

    .line 144
    const v1, 0x7f0b015e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/market2345/dumpclean/CleanTrustDBManager;

    invoke-direct {v4, p0}, Lcom/market2345/dumpclean/CleanTrustDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/market2345/dumpclean/CleanTrustDBManager;->queryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/market2345/dumpclean/CleanSetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "count":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_trust:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method
