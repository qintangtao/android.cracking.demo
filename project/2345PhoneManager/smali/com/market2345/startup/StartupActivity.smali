.class public Lcom/market2345/startup/StartupActivity;
.super Lcom/market2345/home/BaseActivity;
.source "StartupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/startup/StartupActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final FLAG_CHANGE_STARTUP_STATE_FAIL:I = 0x2

.field private static final FLAG_CHANGE_STARTUP_STATE_SUCCESS:I = 0x1

.field private static final FLAG_NO_ROOT_PERMISSION:I = 0x0

.field private static final FLAG_SHOW_LOADING_DIALOG:I = 0x3


# instance fields
.field private adapter:Lcom/market2345/startup/StartupAdapter;

.field private lvSoftware:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/StartupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pbLoading:Landroid/widget/ProgressBar;

.field private pd:Landroid/app/ProgressDialog;

.field private rlLoading:Landroid/widget/RelativeLayout;

.field private rlStartupCount:Landroid/widget/RelativeLayout;

.field private tvNoData:Landroid/widget/TextView;

.field private tvStartupCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/startup/StartupActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/startup/StartupActivity;->changeState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/startup/StartupActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->tvStartupCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/startup/StartupActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/market2345/startup/StartupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/market2345/startup/StartupActivity;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/startup/StartupActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/startup/StartupActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/startup/StartupActivity;)Lcom/market2345/startup/StartupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/market2345/startup/StartupActivity;Lcom/market2345/startup/StartupAdapter;)Lcom/market2345/startup/StartupAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;
    .param p1, "x1"    # Lcom/market2345/startup/StartupAdapter;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/market2345/startup/StartupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/market2345/startup/StartupActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/startup/StartupActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/startup/StartupActivity;->hasNoData(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/market2345/startup/StartupActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->rlLoading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/startup/StartupActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->rlStartupCount:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/startup/StartupActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/startup/StartupActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->lvSoftware:Landroid/widget/ListView;

    return-object v0
.end method

.method private changeState(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    new-instance v0, Lcom/market2345/startup/StartupActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/market2345/startup/StartupActivity$2;-><init>(Lcom/market2345/startup/StartupActivity;I)V

    .line 182
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method private hasNoData(Z)V
    .locals 3
    .param p1, "isLoading"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 250
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->lvSoftware:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->rlStartupCount:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->rlLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->lvSoftware:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/startup/StartupActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/startup/StartupActivity$1;-><init>(Lcom/market2345/startup/StartupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->tvStartupCount:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->lvSoftware:Landroid/widget/ListView;

    .line 92
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->rlStartupCount:Landroid/widget/RelativeLayout;

    .line 93
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->rlLoading:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->pbLoading:Landroid/widget/ProgressBar;

    .line 95
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->tvNoData:Landroid/widget/TextView;

    .line 97
    new-instance v0, Lcom/market2345/startup/StartupActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/startup/StartupActivity$MyHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/market2345/startup/StartupActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/startup/StartupActivity$3;-><init>(Lcom/market2345/startup/StartupActivity;)V

    .line 232
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 268
    const v2, 0x7f03004a

    invoke-static {p0, v2}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    .line 269
    .local v1, "dialog":Landroid/app/Dialog;
    const v2, 0x7f09021e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 270
    .local v0, "btnSure":Landroid/widget/Button;
    new-instance v2, Lcom/market2345/startup/StartupActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/market2345/startup/StartupActivity$4;-><init>(Lcom/market2345/startup/StartupActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 280
    return-void
.end method

.method private showLoadingDialog()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;

    .line 285
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;

    const-string v1, "\u5904\u7406\u4e2d\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 287
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 288
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/startup/StartupActivity;->finish()V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/market2345/startup/StartupActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/market2345/startup/StartupActivity;->initView()V

    .line 67
    invoke-direct {p0}, Lcom/market2345/startup/StartupActivity;->initListener()V

    .line 68
    invoke-direct {p0}, Lcom/market2345/startup/StartupActivity;->loadData()V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iput-object v1, p0, Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 82
    iput-object v1, p0, Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;

    .line 85
    :cond_1
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 86
    return-void
.end method
