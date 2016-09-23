.class public Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "LeftSlidingFragment.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# static fields
.field private static final KILL_PROCESS_END:I = 0x3

.field private static SPEEDUPTIME:J

.field private static interval:I


# instance fields
.field final CHANGETEXT:I

.field final CLEANNUMBER:I

.field final CLEANTASK:I

.field final TOTALLEVEL:I

.field private aboutButton:Landroid/widget/ImageView;

.field actualLevel:I

.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private cleanUpButton:Landroid/widget/ImageView;

.field private computerConnectionButton:Landroid/widget/ImageView;

.field private connectionStatus:I

.field private countView:Landroid/widget/TextView;

.field endLevel:I

.field private fileManagerButton:Landroid/widget/ImageView;

.field private hand:Landroid/os/Handler;

.field imageSrc:Landroid/widget/ImageView;

.field isDown:Z

.field isOver:Z

.field private iv_startup:Landroid/widget/ImageView;

.field private mClearRelativeLayout:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mSession:Lcom/market2345/datacenter/DataCenterObserver;

.field private mText:Landroid/widget/TextView;

.field private messageBoardButton:Landroid/widget/ImageView;

.field private processCount:I

.field private processSize:Ljava/lang/String;

.field radius:F

.field private saveTime:I

.field private scanningButton:Landroid/widget/ImageView;

.field private settingButton:Landroid/widget/ImageView;

.field private speedUpButton:Landroid/widget/TextView;

.field startLevel:I

.field private supportTag:Ljava/lang/String;

.field private task:Ljava/util/TimerTask;

.field private taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

.field private timer:Ljava/util/Timer;

.field private title1:Lcom/market2345/customview/TextViewWithBottomLine;

.field private title2:Lcom/market2345/customview/TextViewWithBottomLine;

.field private title3:Lcom/market2345/customview/TextViewWithBottomLine;

.field private tvStartup:Landroid/widget/TextView;

.field private uninstallButton:Landroid/widget/ImageView;

.field private unionButton:Landroid/widget/ImageView;

.field private unionLay:Landroid/widget/LinearLayout;

.field private upgradeAppButton:Landroid/widget/ImageView;

.field waterLevel:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->SPEEDUPTIME:J

    .line 92
    const/16 v0, 0x2710

    sput v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->interval:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->connectionStatus:I

    .line 98
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;-><init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;-><init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mHandler:Landroid/os/Handler;

    .line 470
    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->CLEANTASK:I

    .line 472
    const/16 v0, 0xc

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->CLEANNUMBER:I

    .line 474
    const/16 v0, 0xd

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->CHANGETEXT:I

    .line 480
    const/16 v0, 0x2710

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->TOTALLEVEL:I

    .line 491
    iput-boolean v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isDown:Z

    .line 501
    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    .line 503
    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startLevel:I

    .line 523
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;-><init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->hand:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonOnClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->saveTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->saveTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Lcom/market2345/clean/shortcut/TaskInfoProvider;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->task:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
    .param p1, "x1"    # Ljava/util/TimerTask;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->task:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->hand:Landroid/os/Handler;

    return-object v0
.end method

.method private buttonOnClick(I)V
    .locals 6
    .param p1, "viewId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 197
    sparse-switch p1, :sswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_1Keyacce"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->killProcess()V

    goto :goto_0

    .line 206
    :sswitch_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Sidebar_Boot_3"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/startup/StartupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :sswitch_2
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Sidebar_Clean_4"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/dumpclean/StartCleanActUtil;->startCleanActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 217
    :sswitch_3
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_File"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/filebrowser/FileCategoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    :sswitch_4
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_Update"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "uninstall":Landroid/content/Intent;
    const-string v1, "posi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    .end local v0    # "uninstall":Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_Uninstall"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 239
    :sswitch_6
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_Setting"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/settings/SettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 243
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/feedback/FeedBackActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 246
    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/about/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 249
    :sswitch_9
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_Connect"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->changeConnectionStatus()V

    .line 252
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->connectionStatus:I

    if-nez v1, :cond_1

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/wificonn/ConnPCGuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    :cond_1
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->connectionStatus:I

    if-ne v1, v4, :cond_2

    .line 255
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conn_mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 256
    :cond_2
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->connectionStatus:I

    if-ne v1, v5, :cond_0

    .line 257
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conn_mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 261
    :sswitch_a
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SideBar_2Code"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902e6 -> :sswitch_0
        0x7f0902e7 -> :sswitch_2
        0x7f0902e8 -> :sswitch_2
        0x7f0902eb -> :sswitch_4
        0x7f0902ec -> :sswitch_5
        0x7f0902ed -> :sswitch_3
        0x7f0902ee -> :sswitch_1
        0x7f0902ef -> :sswitch_a
        0x7f0902f0 -> :sswitch_9
        0x7f0902f4 -> :sswitch_6
        0x7f0902f5 -> :sswitch_7
        0x7f0902f6 -> :sswitch_8
        0x7f09032e -> :sswitch_0
    .end sparse-switch
.end method

.method private changeConnectionStatus()V
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->connectionStatus:I

    .line 326
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->connectionStatus:I

    packed-switch v0, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->computerConnectionButton:Landroid/widget/ImageView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->computerConnectionButton:Landroid/widget/ImageView;

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->computerConnectionButton:Landroid/widget/ImageView;

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUnionApps()V
    .locals 5

    .prologue
    .line 373
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "getlist"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "uid"

    sget-object v3, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "sign"

    const-string v3, "getlist"

    sget-object v4, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/market2345/lm/util/RequestUtils;->getSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/lm/bean/UnionDownloadApps;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$3;

    invoke-direct {v2, p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$3;-><init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 391
    return-void
.end method

.method private initBall(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 507
    const v0, 0x7f09032e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mClearRelativeLayout:Landroid/widget/RelativeLayout;

    .line 508
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mClearRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    const v0, 0x7f090097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    .line 510
    const v0, 0x7f090098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    .line 511
    const v0, 0x7f09009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mText:Landroid/widget/TextView;

    .line 517
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initData()V

    .line 518
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initView()V

    .line 519
    return-void
.end method

.method private initTitles()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 358
    .local v0, "lineColor":I
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title1:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v4}, Lcom/market2345/customview/TextViewWithBottomLine;->setBottomHeight(I)V

    .line 359
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title1:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v0}, Lcom/market2345/customview/TextViewWithBottomLine;->setBottomLineColor(I)V

    .line 360
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title1:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v3}, Lcom/market2345/customview/TextViewWithBottomLine;->setLinePadding(I)V

    .line 361
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title2:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v4}, Lcom/market2345/customview/TextViewWithBottomLine;->setBottomHeight(I)V

    .line 362
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title2:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v0}, Lcom/market2345/customview/TextViewWithBottomLine;->setBottomLineColor(I)V

    .line 363
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title2:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v3}, Lcom/market2345/customview/TextViewWithBottomLine;->setLinePadding(I)V

    .line 364
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title3:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v4}, Lcom/market2345/customview/TextViewWithBottomLine;->setBottomHeight(I)V

    .line 365
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title3:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v0}, Lcom/market2345/customview/TextViewWithBottomLine;->setBottomLineColor(I)V

    .line 366
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title3:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1, v3}, Lcom/market2345/customview/TextViewWithBottomLine;->setLinePadding(I)V

    .line 367
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title1:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1}, Lcom/market2345/customview/TextViewWithBottomLine;->invalidate()V

    .line 368
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title2:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1}, Lcom/market2345/customview/TextViewWithBottomLine;->invalidate()V

    .line 369
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title3:Lcom/market2345/customview/TextViewWithBottomLine;

    invoke-virtual {v1}, Lcom/market2345/customview/TextViewWithBottomLine;->invalidate()V

    .line 370
    return-void
.end method

.method private initUnion()V
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/lm/util/ChannelUtil;->checkLM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;-><init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V

    invoke-static {v0, v1}, Lcom/market2345/http/MarketAPI;->getUnionApps(Landroid/content/Context;Lcom/market2345/httpnew/HttpCallback;)V

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->unionLay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->unionLay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 285
    const v0, 0x7f0902e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/TextViewWithBottomLine;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title1:Lcom/market2345/customview/TextViewWithBottomLine;

    .line 286
    const v0, 0x7f0902e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/TextViewWithBottomLine;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title2:Lcom/market2345/customview/TextViewWithBottomLine;

    .line 287
    const v0, 0x7f0902f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/TextViewWithBottomLine;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->title3:Lcom/market2345/customview/TextViewWithBottomLine;

    .line 288
    const v0, 0x7f0902e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->cleanUpButton:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f0902ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->fileManagerButton:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f0902ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->uninstallButton:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0902eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->upgradeAppButton:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f0902f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->settingButton:Landroid/widget/ImageView;

    .line 294
    const v0, 0x7f0902f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->messageBoardButton:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f0902f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->aboutButton:Landroid/widget/ImageView;

    .line 296
    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->countView:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f0902e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->tvStartup:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0902ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->iv_startup:Landroid/widget/ImageView;

    .line 300
    const v0, 0x7f0902e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->speedUpButton:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0902f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->computerConnectionButton:Landroid/widget/ImageView;

    .line 302
    const v0, 0x7f0902ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->scanningButton:Landroid/widget/ImageView;

    .line 303
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initBall(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method private initViewData()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->updateShowCount()V

    .line 309
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->setListeners()V

    .line 310
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initTitles()V

    .line 311
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->cleanUpButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->fileManagerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->uninstallButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->upgradeAppButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->settingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->messageBoardButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->aboutButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->tvStartup:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->iv_startup:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->speedUpButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->computerConnectionButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->scanningButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void
.end method

.method private updateShowCount()V
    .locals 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getUpgradeNumber()I

    move-result v0

    .line 271
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 272
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->countView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->countView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->countView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->countView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->countView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPowerSaving(I)I
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 143
    .local v0, "random":D
    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 144
    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 146
    :cond_0
    int-to-double v4, p1

    mul-double v2, v0, v4

    .line 147
    .local v2, "time":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method public getProgress(I)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 583
    int-to-float v1, p1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 584
    .local v0, "percent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method initData()V
    .locals 3

    .prologue
    .line 592
    new-instance v1, Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .line 593
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {v1}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v0

    .line 594
    .local v0, "percent":I
    mul-int/lit8 v1, v0, 0x64

    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    .line 595
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startLevel:I

    .line 596
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isOver:Z

    .line 597
    return-void
.end method

.method public initUnionIconInfo()V
    .locals 5

    .prologue
    .line 460
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->unionLay:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/market2345/guide/model/UnionIconInfo;->getStaticInstance()Lcom/market2345/guide/model/UnionIconInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 461
    new-instance v0, Lcom/market2345/guide/model/UnionIconInfo;

    invoke-direct {v0}, Lcom/market2345/guide/model/UnionIconInfo;-><init>()V

    .line 462
    .local v0, "info":Lcom/market2345/guide/model/UnionIconInfo;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 463
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->unionLay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 464
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Lcom/market2345/guide/model/UnionIconInfo;->centerX:I

    .line 465
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Lcom/market2345/guide/model/UnionIconInfo;->centerY:I

    .line 466
    invoke-static {v0}, Lcom/market2345/guide/model/UnionIconInfo;->setStaticInstance(Lcom/market2345/guide/model/UnionIconInfo;)V

    .line 468
    .end local v0    # "info":Lcom/market2345/guide/model/UnionIconInfo;
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method initView()V
    .locals 3

    .prologue
    const/16 v2, 0x1f40

    .line 603
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 620
    :goto_0
    return-void

    .line 605
    :cond_0
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    if-lt v1, v2, :cond_1

    .line 606
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    :goto_1
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 617
    .local v0, "clip":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    .line 618
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 619
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevelChange()V

    goto :goto_0

    .line 608
    .end local v0    # "clip":Landroid/graphics/drawable/ClipDrawable;
    :cond_1
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    const/16 v2, 0x1770

    if-le v1, v2, :cond_2

    .line 609
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 610
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 612
    :cond_2
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public killProcess()V
    .locals 6

    .prologue
    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 683
    .local v0, "time":J
    sget-wide v2, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->SPEEDUPTIME:J

    sub-long v2, v0, v2

    sget v4, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->interval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 684
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    if-nez v2, :cond_0

    .line 685
    new-instance v2, Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 688
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->killProcess(Landroid/os/Handler;)V

    .line 689
    :cond_1
    sput-wide v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->SPEEDUPTIME:J

    .line 695
    :goto_0
    return-void

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u60a8\u7684\u7231\u673a\u521a\u521a\u5df2\u52a0\u901f\u8fc7\uff0c\u8bf7\u7a0d\u540e\u518d\u52a0\u901f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 692
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mText:Landroid/widget/TextView;

    const-string v3, "\u5df2\u52a0\u901f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->hand:Landroid/os/Handler;

    const/16 v3, 0xd

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    .line 164
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 165
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initViewData()V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initView(Landroid/view/View;)V

    .line 173
    return-object v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initData()V

    .line 320
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initView()V

    .line 321
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->changeConnectionStatus()V

    .line 316
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 317
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->supportTag:Ljava/lang/String;

    .line 700
    return-void
.end method

.method public showItemContent(I)V
    .locals 0
    .param p1, "viewId"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonOnClick(I)V

    .line 157
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 666
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;

    .line 667
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$6;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$6;-><init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->task:Ljava/util/TimerTask;

    .line 678
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 679
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 178
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 179
    check-cast v0, Landroid/util/Pair;

    .line 180
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->updateShowCount()V

    .line 194
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.wifi.pc.link.status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->changeConnectionStatus()V

    goto :goto_0

    .line 188
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "pref.disconnect.pc"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->changeConnectionStatus()V

    goto :goto_0
.end method

.method public updateWaterLevel(FF)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "transY"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 655
    iget-object v4, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 656
    .local v1, "layoutPar":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    add-float/2addr v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    iget v6, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 657
    .local v2, "top":I
    iget v4, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    mul-float/2addr v4, v7

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 658
    .local v3, "width":I
    iget v4, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    mul-float/2addr v4, v7

    mul-float/2addr v4, p1

    float-to-int v0, v4

    .line 659
    .local v0, "height":I
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 660
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 661
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 662
    iget-object v4, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mClearRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    return-void
.end method

.method waterLevelChange()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mText:Landroid/widget/TextView;

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    invoke-virtual {p0, v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getProgress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    rsub-int v2, v2, 0x1388

    int-to-float v2, v2

    const v3, 0x459c4000    # 5000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    mul-float v1, v2, v3

    .line 631
    .local v1, "transY":F
    const/4 v0, 0x0

    .line 632
    .local v0, "scaleX":F
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    const/16 v3, 0x1388

    if-eq v2, v3, :cond_0

    .line 633
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    mul-float/2addr v2, v3

    mul-float v3, v1, v1

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->radius:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 638
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 639
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 640
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 641
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 646
    :goto_1
    return-void

    .line 635
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->updateWaterLevel(FF)V

    goto :goto_1
.end method
