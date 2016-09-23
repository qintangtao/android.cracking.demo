.class public Lcom/market2345/home/HomeTabActivity;
.super Lcom/market2345/home/LeftActivity;
.source "HomeTabActivity.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;
.implements Lcom/market2345/guide/GuideShow;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
.implements Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/home/HomeTabActivity$HttpResult;,
        Lcom/market2345/home/HomeTabActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final CHANGE_HOTWORD_HINT:I = 0x2

.field private static final CHECK_CLEAR_DB_UPDATE:I = 0x7

.field private static final CHECK_UPGRADE:I = 0x3

.field private static final CREAT_SHORTCUT:I = 0x6

.field private static final DELAY_INIT:I = 0x5

.field private static final GET_HOTWORDS:I = 0x4

.field public static final NOTIFI:Ljava/lang/String; = "notification"

.field private static final OPEN_SEARCH:Ljava/lang/String; = "com.market2345.search"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private bottomAdapter:Lcom/market2345/home/BottomAdapter;

.field private bottomGrid:Landroid/widget/GridView;

.field private bottomItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/home/model/IBottomBarItem;",
            ">;"
        }
    .end annotation
.end field

.field public final check2345:Ljava/lang/String;

.field private currenthotWord:Ljava/lang/String;

.field private edittext:Landroid/widget/EditText;

.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

.field private fragmentFactory:Lcom/market2345/slidemenu/SlidingFragmentFactory;

.field public hasShowSearchLayout:Z

.field private hotWordsArray:[Ljava/lang/String;

.field private isDestroy:Z

.field private loaded:Z

.field public mHandler:Landroid/os/Handler;

.field private mMenu:Landroid/widget/ImageView;

.field protected mSession:Lcom/market2345/datacenter/DataCenterObserver;

.field private mTitleBar:Landroid/view/View;

.field private mUpdateCounter:I

.field private menuController:Lcom/market2345/home/controller/SlidingMenuController;

.field private popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

.field private sloganView:Landroid/view/View;

.field touchTime:J

.field waitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/home/HomeTabActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/market2345/home/LeftActivity;-><init>()V

    .line 135
    iput-boolean v2, p0, Lcom/market2345/home/HomeTabActivity;->hasShowSearchLayout:Z

    .line 137
    iput-boolean v2, p0, Lcom/market2345/home/HomeTabActivity;->loaded:Z

    .line 157
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/market2345/home/HomeTabActivity;->waitTime:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/home/HomeTabActivity;->touchTime:J

    .line 161
    new-instance v0, Lcom/market2345/home/HomeTabActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/home/HomeTabActivity$MyHandler;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    .line 393
    const-string v0, "diaoyongcheck2345"

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity;->check2345:Ljava/lang/String;

    .line 1003
    iput-boolean v2, p0, Lcom/market2345/home/HomeTabActivity;->isDestroy:Z

    .line 1126
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/home/HomeTabActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/home/HomeTabActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->currenthotWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->showSlidingGuide()V

    return-void
.end method

.method static synthetic access$102(Lcom/market2345/home/HomeTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity;->currenthotWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/market2345/home/HomeTabActivity;Lcom/market2345/home/model/IBottomBarItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;
    .param p1, "x1"    # Lcom/market2345/home/model/IBottomBarItem;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/market2345/home/HomeTabActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/market2345/home/HomeTabActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->mainBottomStatisticEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/home/HomeTabActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->sloganView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/home/HomeTabActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->changeSearchHint(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/home/HomeTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/market2345/home/HomeTabActivity;->isDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->delayedInit()V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/SlidingMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    return-object v0
.end method

.method private changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z
    .locals 5
    .param p1, "ibo"    # Lcom/market2345/home/model/IBottomBarItem;

    .prologue
    const/4 v2, 0x0

    .line 820
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v2

    .line 842
    :goto_0
    return v1

    .line 824
    :cond_1
    const/4 v1, 0x0

    .line 825
    .local v1, "isSuccess":Z
    const/4 v0, 0x0

    .line 826
    .local v0, "frag":Lcom/market2345/ui/BaseFragment;
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-interface {p1}, Lcom/market2345/home/model/IBottomBarItem;->getCMD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->containsFragment(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 827
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentFactory:Lcom/market2345/slidemenu/SlidingFragmentFactory;

    invoke-interface {p1}, Lcom/market2345/home/model/IBottomBarItem;->getCMD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/market2345/slidemenu/SlidingFragmentFactory;->createFragment(Ljava/lang/String;)Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    .line 831
    :goto_1
    if-eqz v0, :cond_2

    .line 832
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 833
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v3, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 834
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 835
    const/4 v1, 0x1

    .line 837
    :cond_2
    instance-of v3, v0, Lcom/market2345/slidemenu/ManagementFragment2;

    if-eqz v3, :cond_4

    .line 838
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/market2345/home/HomeTabActivity;->hideOrShowTitleBar(Z)V

    goto :goto_0

    .line 829
    :cond_3
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-interface {p1}, Lcom/market2345/home/model/IBottomBarItem;->getCMD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->findFragmentByTag(Ljava/lang/String;)Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    goto :goto_1

    .line 840
    :cond_4
    invoke-virtual {p0, v2}, Lcom/market2345/home/HomeTabActivity;->hideOrShowTitleBar(Z)V

    goto :goto_0
.end method

.method private changeFocus(I)V
    .locals 3
    .param p1, "poistion"    # I

    .prologue
    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 847
    if-ne v0, p1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/market2345/home/model/IBottomBarItem;->setSelected(Z)V

    .line 846
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/market2345/home/model/IBottomBarItem;->setSelected(Z)V

    goto :goto_1

    .line 853
    :cond_1
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomAdapter:Lcom/market2345/home/BottomAdapter;

    invoke-virtual {v1}, Lcom/market2345/home/BottomAdapter;->notifyDataSetChanged()V

    .line 854
    return-void
.end method

.method private changeSearchHint(Z)V
    .locals 6
    .param p1, "immediately"    # Z

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getHot_words()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "hostWords":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p0, v2}, Lcom/market2345/http/MarketAPI;->getHotSearch(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    .line 346
    iget-object v2, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 347
    .local v1, "ms":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 348
    if-nez p1, :cond_1

    .line 349
    iget-object v2, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private checkWifiStartFromJS(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 732
    if-nez p1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 741
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 742
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "result":Ljava/lang/String;
    const-string v2, "market2345://startApp?"

    .line 744
    .local v2, "pa":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v6

    if-lez v6, :cond_2

    .line 746
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 748
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.phonemanager2345.zhushou.connect.pc"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, "action":Landroid/content/Intent;
    const-string v6, "com.phonemanager2345.zhushou.url.key"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 752
    const-string v6, "[?]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "path":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v9, :cond_0

    .line 754
    aget-object v6, v4, v8

    const-string v7, "[&]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "params":[Ljava/lang/String;
    array-length v6, v3

    if-eqz v6, :cond_0

    array-length v6, v3

    if-lt v6, v10, :cond_0

    .line 756
    const/16 v6, 0x26

    aget-object v7, v3, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->isUpdateStatusDefault(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/download/DownloadManager;->isWifiNetwork()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 759
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/market2345/update/WifiUpdateDialogActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 760
    .local v1, "intent1":Landroid/content/Intent;
    const-string v6, "key_update_versionName"

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v6, "key_connect_url"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v1}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 764
    .end local v1    # "intent1":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/market2345/wificonn/WifiConnDialogActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    .restart local v1    # "intent1":Landroid/content/Intent;
    const-string v6, "pc_name"

    aget-object v7, v3, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    const-string v6, "connect"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, v1}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private closeMenu()V
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 880
    return-void
.end method

.method private delayedInit()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 577
    new-instance v3, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;-><init>()V

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    .line 578
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    const-string v4, "left"

    invoke-virtual {v3, v4}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->setSupportTag(Ljava/lang/String;)V

    .line 579
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 580
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    const v4, 0x7f0902e4

    iget-object v5, p0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v3, v4, v5}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->replaceFragment(ILcom/market2345/ui/BaseFragment;)V

    .line 581
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 583
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {v3}, Lcom/market2345/home/controller/SlidingMenuController;->initForHome()V

    .line 584
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    .line 586
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v3, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 587
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 588
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 589
    invoke-direct {p0, v1}, Lcom/market2345/home/HomeTabActivity;->handleIntentTag(Landroid/content/Intent;)V

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    const v4, 0x7f0902e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    .line 594
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    const v4, 0x7f0903e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity;->sloganView:Landroid/view/View;

    .line 595
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/market2345/home/HomeTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 597
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    new-instance v4, Lcom/market2345/home/HomeTabActivity$2;

    invoke-direct {v4, p0}, Lcom/market2345/home/HomeTabActivity$2;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 613
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    const v4, 0x7f0903e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    .line 614
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 615
    .local v2, "parent":Landroid/view/View;
    new-instance v3, Lcom/market2345/home/HomeTabActivity$3;

    invoke-direct {v3, p0, v2}, Lcom/market2345/home/HomeTabActivity$3;-><init>(Lcom/market2345/home/HomeTabActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 626
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    new-instance v4, Lcom/market2345/home/HomeTabActivity$4;

    invoke-direct {v4, p0}, Lcom/market2345/home/HomeTabActivity$4;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->updateAvatar()V

    .line 647
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    new-instance v4, Lcom/market2345/home/HomeTabActivity$5;

    invoke-direct {v4, p0}, Lcom/market2345/home/HomeTabActivity$5;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual {v3, v4}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 663
    if-eqz v1, :cond_3

    const-string v3, "notification"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 671
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 672
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 673
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 674
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 675
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/download/DownloadManager;->getDownloadings()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 676
    .local v0, "downloadings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/market2345/download/DownloadInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/home/model/IBottomBarItem;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v3, p0, v4}, Lcom/market2345/home/model/IBottomBarItem;->ifShowRednotify(Landroid/content/Context;I)V

    .line 679
    :cond_2
    return-void

    .line 666
    .end local v0    # "downloadings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/market2345/download/DownloadInfo;>;"
    :cond_3
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v3}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    invoke-direct {p0, v6}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    goto :goto_0
.end method

.method private handleIntentTag(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v8, 0x3

    const/4 v10, 0x0

    const/high16 v9, 0x4000000

    .line 492
    const-string v7, "notification"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 493
    .local v6, "tag":I
    if-ne v6, v11, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/market2345/search/SearchDialogFragment;

    .line 495
    .local v5, "searchDialogFragment":Lcom/market2345/search/SearchDialogFragment;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/market2345/search/SearchDialogFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    invoke-virtual {v5}, Lcom/market2345/search/SearchDialogFragment;->dismiss()V

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->closeMenu()V

    .line 499
    iget-object v7, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v7}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 500
    invoke-direct {p0, v12}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    .line 573
    .end local v5    # "searchDialogFragment":Lcom/market2345/search/SearchDialogFragment;
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 503
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .local v3, "intentTo":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, v3}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 506
    .end local v3    # "intentTo":Landroid/content/Intent;
    :cond_3
    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 507
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .restart local v3    # "intentTo":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 509
    const-string v7, "downloadall"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0, v3}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 511
    .end local v3    # "intentTo":Landroid/content/Intent;
    :cond_4
    if-ne v6, v8, :cond_5

    .line 512
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .restart local v3    # "intentTo":Landroid/content/Intent;
    const-string v7, "type"

    const-string v8, "az_jcfx"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v7, "title"

    const v8, 0x7f0b016b

    invoke-virtual {p0, v8}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v3}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 517
    .end local v3    # "intentTo":Landroid/content/Intent;
    :cond_5
    if-ne v6, v12, :cond_6

    .line 518
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .restart local v3    # "intentTo":Landroid/content/Intent;
    const-string v7, "type"

    const-string v8, "az_zjbb"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v7, "title"

    const v8, 0x7f0b015a

    invoke-virtual {p0, v8}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v3}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 523
    .end local v3    # "intentTo":Landroid/content/Intent;
    :cond_6
    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 524
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->closeMenu()V

    .line 525
    iget-object v7, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v7}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 526
    invoke-direct {p0, v10}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    goto/16 :goto_0

    .line 528
    :cond_7
    const/16 v7, 0x8

    if-ne v6, v7, :cond_8

    .line 530
    iget-object v7, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v7}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 531
    invoke-direct {p0, v8}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    .line 532
    iget-object v7, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    if-eqz v7, :cond_1

    .line 533
    iget-object v7, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v7}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->getcurrentFragmentForWDH()Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    .line 534
    .local v0, "currentFragment":Lcom/market2345/ui/BaseFragment;
    if-eqz v0, :cond_1

    instance-of v7, v0, Lcom/market2345/slidemenu/ManagementFragment2;

    if-eqz v7, :cond_1

    .line 535
    check-cast v0, Lcom/market2345/slidemenu/ManagementFragment2;

    .end local v0    # "currentFragment":Lcom/market2345/ui/BaseFragment;
    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->setAccelerationOver()V

    goto/16 :goto_0

    .line 542
    :cond_8
    const/16 v7, 0xa

    if-ne v6, v7, :cond_9

    .line 543
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 545
    invoke-static {p0, v4}, Lcom/market2345/dumpclean/StartCleanActUtil;->startCleanActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 547
    const-string v7, "Notification_Clean"

    invoke-static {p0, v7}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .end local v4    # "it":Landroid/content/Intent;
    :cond_9
    const/16 v7, 0xb

    if-ne v6, v7, :cond_1

    .line 549
    invoke-static {p0}, Lcom/market2345/jpush/PushContants;->getPushInfo(Landroid/content/Context;)Lcom/market2345/jpush/PushInfo;

    move-result-object v2

    .line 550
    .local v2, "info":Lcom/market2345/jpush/PushInfo;
    if-eqz v2, :cond_a

    .line 551
    iget v7, v2, Lcom/market2345/jpush/PushInfo;->actionId:I

    if-ne v7, v11, :cond_b

    .line 553
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    .local v1, "d":Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    const-string v7, "sid"

    iget v8, v2, Lcom/market2345/jpush/PushInfo;->sid:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v1}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 567
    .end local v1    # "d":Landroid/content/Intent;
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->closeMenu()V

    .line 568
    iget-object v7, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v7}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 569
    invoke-direct {p0, v10}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    goto/16 :goto_0

    .line 557
    :cond_b
    iget v7, v2, Lcom/market2345/jpush/PushInfo;->actionId:I

    if-ne v7, v8, :cond_c

    .line 559
    iget v7, v2, Lcom/market2345/jpush/PushInfo;->topicId:I

    iget v8, v2, Lcom/market2345/jpush/PushInfo;->topicTemplateId:I

    invoke-static {p0, v7, v8}, Lcom/market2345/topic/TopicUtils;->startTopicActivity(Landroid/content/Context;II)V

    goto :goto_1

    .line 560
    :cond_c
    iget v7, v2, Lcom/market2345/jpush/PushInfo;->actionId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 562
    iget v7, v2, Lcom/market2345/jpush/PushInfo;->topicId:I

    invoke-static {p0, v7}, Lcom/market2345/topic/TopicUtils;->startWebViewTopicActivity(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private initBottomList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/home/model/IBottomBarItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f020053

    const v7, 0x7f02016d

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    .line 885
    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommend"

    const v2, 0x7f0202aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0202a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f07000e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/market2345/home/model/BottomBarItem;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/market2345/home/model/BottomBarItem;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    const v2, 0x7f0201ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0201ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/market2345/home/model/BottomBarItem;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/market2345/home/model/BottomBarItem;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "soft"

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/market2345/home/model/BottomBarItem;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/market2345/home/model/BottomBarItem;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manage"

    const v2, 0x7f020214

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0201fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/market2345/home/model/BottomBarItem;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/market2345/home/model/BottomBarItem;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    const v2, 0x7f0200e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f02016e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020054

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/market2345/home/model/BottomBarItem;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/market2345/home/model/BottomBarItem;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 800
    const v0, 0x7f090199

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    .line 801
    const v0, 0x7f090398

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomGrid:Landroid/widget/GridView;

    .line 802
    new-instance v0, Lcom/market2345/home/BottomAdapter;

    invoke-direct {v0, p0}, Lcom/market2345/home/BottomAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomAdapter:Lcom/market2345/home/BottomAdapter;

    .line 803
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomAdapter:Lcom/market2345/home/BottomAdapter;

    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->initBottomList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/home/BottomAdapter;->setDatas(Ljava/util/ArrayList;)V

    .line 804
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomAdapter:Lcom/market2345/home/BottomAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 805
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/market2345/home/HomeTabActivity$7;

    invoke-direct {v1, p0}, Lcom/market2345/home/HomeTabActivity$7;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 816
    return-void
.end method

.method private mainBottomStatisticEvent(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 857
    packed-switch p1, :pswitch_data_0

    .line 876
    :goto_0
    return-void

    .line 859
    :pswitch_0
    const-string v0, "Main_Recommend_5"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :pswitch_1
    const-string v0, "Main_Soft_6"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :pswitch_2
    const-string v0, "Main_Game_7"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 868
    :pswitch_3
    const-string v0, "Main_Manage_8"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    :pswitch_4
    const-string v0, "Main_Download_9"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private openSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {v3}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {v3}, Lcom/market2345/home/controller/SlidingMenuController;->closeMenu()V

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v3}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    invoke-direct {p0, v4}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    .line 476
    :cond_1
    const-string v3, "Desk_Search_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/market2345/search/SearchDialogFragment;

    .line 479
    .local v2, "f1":Lcom/market2345/search/SearchDialogFragment;
    if-eqz v2, :cond_2

    .line 480
    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->dismiss()V

    .line 483
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "search_from_desk"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    invoke-static {}, Lcom/market2345/search/SearchDialogFragment;->newInstance()Lcom/market2345/search/SearchDialogFragment;

    move-result-object v1

    .line 487
    .local v1, "f":Lcom/market2345/search/SearchDialogFragment;
    invoke-virtual {v1, v0}, Lcom/market2345/search/SearchDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 488
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lcom/market2345/search/SearchDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private showCurrentGuidePage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pageKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    invoke-virtual {v0}, Lcom/market2345/home/controller/PopupWindowController;->dismissWindow()V

    .line 933
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    invoke-virtual {v0, p1}, Lcom/market2345/home/controller/PopupWindowController;->buildWindow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/market2345/home/controller/PopupWindowController;->setWindowHandler(Landroid/os/Handler;)V

    .line 935
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    const v1, 0x7f090399

    invoke-virtual {p0, v1}, Lcom/market2345/home/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/market2345/home/controller/PopupWindowController;->showWindowAtLocation(Landroid/view/View;III)V

    .line 937
    :cond_0
    return-void
.end method

.method private showHotGuide()V
    .locals 1

    .prologue
    .line 914
    const-string v0, "showhoticon"

    invoke-direct {p0, v0}, Lcom/market2345/home/HomeTabActivity;->showCurrentGuidePage(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method private showMenuGuide()V
    .locals 1

    .prologue
    .line 928
    const-string v0, "check_leftmenu"

    invoke-direct {p0, v0}, Lcom/market2345/home/HomeTabActivity;->showCurrentGuidePage(Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method private showMenuGuideForUnion()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initUnionIconInfo()V

    .line 909
    const-string v0, "showunionicon"

    invoke-direct {p0, v0}, Lcom/market2345/home/HomeTabActivity;->showCurrentGuidePage(Ljava/lang/String;)V

    .line 911
    :cond_0
    return-void
.end method

.method private showSlidingGuide()V
    .locals 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->getCurrentFragment()Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    .line 919
    .local v0, "current":Lcom/market2345/ui/BaseFragment;
    if-eqz v0, :cond_0

    const-string v1, "recommend"

    invoke-virtual {v0}, Lcom/market2345/ui/BaseFragment;->getSupportTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {v1}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuTouchModeAbove(I)V

    .line 922
    const-string v1, "check_slide"

    invoke-direct {p0, v1}, Lcom/market2345/home/HomeTabActivity;->showCurrentGuidePage(Ljava/lang/String;)V

    .line 925
    :cond_0
    return-void
.end method

.method private test()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/account/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method private upConfirm()V
    .locals 6

    .prologue
    .line 397
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "diaoyongcheck2345"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 398
    .local v0, "check":Z
    if-nez v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x929

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :cond_0
    return-void
.end method

.method private updateAvatar()V
    .locals 4

    .prologue
    const v3, 0x7f020313

    .line 690
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 691
    sget-object v1, Lcom/market2345/home/HomeTabActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateAvatar---aMenu null"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    :goto_0
    return-void

    .line 695
    :cond_0
    sget-object v1, Lcom/market2345/home/HomeTabActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateAvatar"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "avatarUrl":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Lcom/market2345/home/HomeTabActivity$6;

    invoke-direct {v2, p0}, Lcom/market2345/home/HomeTabActivity$6;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0

    .line 722
    .end local v0    # "avatarUrl":Ljava/lang/String;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 723
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 725
    :cond_2
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateUpdateShowCount()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1191
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    if-nez v1, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->getCurrentFragment()Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    .line 1196
    .local v0, "currentFragment":Lcom/market2345/ui/BaseFragment;
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getUpgradeNumber()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/market2345/home/model/IBottomBarItem;->ifShowRednotify(Landroid/content/Context;I)V

    .line 1197
    instance-of v1, v0, Lcom/market2345/slidemenu/ManagementFragment2;

    if-eqz v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/market2345/home/model/IBottomBarItem;->hiddleRedNotify(Z)V

    goto :goto_0
.end method


# virtual methods
.method public change(Z)V
    .locals 3
    .param p1, "isFull"    # Z

    .prologue
    .line 1113
    sget-object v0, Lcom/market2345/home/HomeTabActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    if-eqz p1, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuTouchModeAbove(I)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuTouchModeAbove(I)V

    goto :goto_0
.end method

.method public hideOrShowTitleBar(Z)V
    .locals 2
    .param p1, "hiddle"    # Z

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    if-eqz p1, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuTouchModeAbove(I)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuTouchModeAbove(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/home/LeftActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 359
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->showSlidingGuide()V

    .line 362
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 943
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/market2345/home/HomeTabActivity;->touchTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/market2345/home/HomeTabActivity;->waitTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 944
    const v2, 0x7f0b0102

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 945
    iput-wide v0, p0, Lcom/market2345/home/HomeTabActivity;->touchTime:J

    .line 950
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/LeftActivity;->onBackPressed()V

    .line 948
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x26

    .line 410
    const/4 v4, 0x0

    invoke-super {p0, v4}, Lcom/market2345/home/LeftActivity;->onCreate(Landroid/os/Bundle;)V

    .line 412
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 413
    const-class v4, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HomeTabActivity onCreate"

    invoke-static {v4, v5}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->upConfirm()V

    .line 415
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 416
    .local v3, "it":Landroid/content/Intent;
    invoke-static {p0}, Lcom/market2345/dumpclean/alert/CleanAlert;->initAlert(Landroid/content/Context;)V

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "intentFrom":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 419
    const-string v4, "intentFrom"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    const-string v4, "com.market2345.search"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "short_cut_search"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->openSearch()V

    .line 424
    :cond_1
    const v4, 0x7f030089

    invoke-virtual {p0, v4}, Lcom/market2345/home/HomeTabActivity;->setBehindContentView(I)V

    .line 425
    const v4, 0x7f0300b5

    invoke-virtual {p0, v4}, Lcom/market2345/home/HomeTabActivity;->setContentView(I)V

    .line 426
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/market2345/home/HomeTabActivity;->loaded:Z

    .line 427
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportUnReportedLog(Landroid/content/Context;)V

    .line 428
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->initView()V

    .line 429
    new-instance v4, Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/market2345/home/controller/SlidingMenuController;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    iput-object v4, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    .line 430
    iget-object v4, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {v4, v8}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuTouchModeAbove(I)V

    .line 431
    new-instance v4, Lcom/market2345/home/controller/PopupWindowController;

    invoke-direct {v4, p0}, Lcom/market2345/home/controller/PopupWindowController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    .line 432
    new-instance v4, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f090343

    invoke-direct {v4, v5, v6}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v4, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    .line 433
    new-instance v4, Lcom/market2345/slidemenu/SlidingFragmentFactory;

    invoke-direct {v4}, Lcom/market2345/slidemenu/SlidingFragmentFactory;-><init>()V

    iput-object v4, p0, Lcom/market2345/home/HomeTabActivity;->fragmentFactory:Lcom/market2345/slidemenu/SlidingFragmentFactory;

    .line 434
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 435
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/market2345/home/HomeTabActivity;->checkWifiStartFromJS(Landroid/content/Intent;)V

    .line 437
    invoke-static {p0}, Lcom/market2345/util/SPUtil;->getLastVersion(Landroid/content/Context;)I

    move-result v4

    if-le v7, v4, :cond_2

    .line 438
    invoke-static {p0, v7}, Lcom/market2345/util/SPUtil;->setLastVersion(Landroid/content/Context;I)V

    .line 440
    :cond_2
    invoke-static {p0}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/market2345/util/SPUtil;->appIsFirstStart(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/market2345/util/SPUtil;->getLastVersion(Landroid/content/Context;)I

    move-result v4

    if-ne v7, v4, :cond_3

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, "fastInstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 444
    .end local v0    # "fastInstallIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {p0}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    .line 446
    iget-object v4, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    new-instance v5, Lcom/market2345/home/HomeTabActivity$1;

    invoke-direct {v5, p0}, Lcom/market2345/home/HomeTabActivity$1;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual {v4, v5}, Lcom/market2345/home/controller/SlidingMenuController;->setMenuOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 460
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v4, "com.market2345.search"

    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const-string v4, "short_cut_search"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 462
    :cond_5
    invoke-virtual {p0, v8}, Lcom/market2345/home/HomeTabActivity;->onWindowFocusChanged(Z)V

    .line 464
    :cond_6
    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/market2345/slidemenu/DataCacheForViewPager;->fill(Landroid/app/Activity;)V

    .line 466
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1008
    invoke-super {p0}, Lcom/market2345/home/LeftActivity;->onDestroy()V

    .line 1009
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/home/HomeTabActivity;->isDestroy:Z

    .line 1011
    const-class v0, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeTabActivity onDestroy"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1013
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 1015
    invoke-static {}, Lcom/statistic2345/log/Statistics;->exitStatistic()V

    .line 1018
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/home/HomeTabActivity$8;

    invoke-direct {v1, p0}, Lcom/market2345/home/HomeTabActivity$8;-><init>(Lcom/market2345/home/HomeTabActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1043
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 1103
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/account/model/event/SignInResultEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/market2345/account/model/event/SignInResultEvent;

    .prologue
    .line 1203
    iget-boolean v0, p1, Lcom/market2345/account/model/event/SignInResultEvent;->success:Z

    if-eqz v0, :cond_0

    .line 1204
    sget-object v0, Lcom/market2345/home/HomeTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "Logged in"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1205
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->updateAvatar()V

    .line 1207
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/account/model/event/SignOutResultEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/market2345/account/model/event/SignOutResultEvent;

    .prologue
    .line 1210
    iget-boolean v0, p1, Lcom/market2345/account/model/event/SignOutResultEvent;->success:Z

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/market2345/home/HomeTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "Logged out"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->updateAvatar()V

    .line 1214
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/applist/event/FragmentFinishEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/market2345/applist/event/FragmentFinishEvent;

    .prologue
    .line 682
    invoke-static {p0}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->showHotGuide()V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string v0, "check_slide"

    invoke-direct {p0, v0}, Lcom/market2345/home/HomeTabActivity;->showCurrentGuidePage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 954
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    invoke-virtual {v0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-super {p0, p1, p2}, Lcom/market2345/home/LeftActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 962
    :goto_0
    return v0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;

    invoke-virtual {v0}, Lcom/market2345/home/controller/SlidingMenuController;->toggle()V

    .line 959
    const/4 v0, 0x1

    goto :goto_0

    .line 962
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/market2345/home/LeftActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 967
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;

    invoke-virtual {v0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 969
    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/market2345/home/LeftActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/market2345/home/LeftActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->checkWifiStartFromJS(Landroid/content/Intent;)V

    .line 376
    :cond_0
    const-string v0, "com.market2345.search"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "short_cut_search"

    const-string v1, "intentFrom"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->openSearch()V

    .line 380
    :cond_2
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->handleIntentTag(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 996
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 997
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onPause(Landroid/content/Context;)V

    .line 998
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    .line 1000
    invoke-super {p0}, Lcom/market2345/home/LeftActivity;->onPause()V

    .line 1001
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 976
    invoke-super {p0}, Lcom/market2345/home/LeftActivity;->onResume()V

    .line 978
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 979
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onResume(Landroid/content/Context;)V

    .line 980
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    .line 983
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->getCurrentFragment()Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/home/HomeTabActivity;->loaded:Z

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/home/model/IBottomBarItem;

    invoke-direct {p0, v0}, Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0, v1}, Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->updateAvatar()V

    .line 991
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1074
    const-string v5, "http://zhushou.2345.com/index.php?c=search&d=getHot"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1075
    if-eqz p2, :cond_2

    .line 1076
    instance-of v5, p2, Lcom/market2345/model/HotSearch;

    if-eqz v5, :cond_2

    move-object v1, p2

    .line 1077
    check-cast v1, Lcom/market2345/model/HotSearch;

    .line 1078
    .local v1, "hotSearch":Lcom/market2345/model/HotSearch;
    iget-object v5, v1, Lcom/market2345/model/HotSearch;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .local v0, "bulider":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, v1, Lcom/market2345/model/HotSearch;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1081
    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    iget-object v5, v1, Lcom/market2345/model/HotSearch;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/model/Word;

    iget-object v5, v5, Lcom/market2345/model/Word;->word:Ljava/lang/String;

    aput-object v5, v6, v2

    .line 1082
    iget-object v5, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    .line 1083
    iget-object v5, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    :cond_0
    iget-object v5, p0, Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    .line 1091
    .local v4, "session":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/market2345/datacenter/DataCenterObserver;->setHot_words(Ljava/lang/String;)V

    .line 1092
    iget-object v5, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1093
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 1094
    iget-object v5, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1098
    .end local v0    # "bulider":Ljava/lang/StringBuilder;
    .end local v1    # "hotSearch":Lcom/market2345/model/HotSearch;
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/market2345/home/LeftActivity;->onWindowFocusChanged(Z)V

    .line 386
    iget-boolean v0, p0, Lcom/market2345/home/HomeTabActivity;->loaded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/home/HomeTabActivity;->loaded:Z

    .line 391
    :cond_0
    return-void
.end method

.method public setSearchText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/CharSequence;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 797
    return-void
.end method

.method public showGuide(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "pageKey"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Lcom/market2345/home/HomeTabActivity;->showCurrentGuidePage(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public startQRScan(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1107
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/market2345/home/HomeTabActivity;->overridePendingTransition(II)V

    .line 1108
    const-string v0, "Title_2Code "

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x4

    .line 1047
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1048
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->updateUpdateShowCount()V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 1050
    check-cast v0, Landroid/util/Pair;

    .line 1051
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1053
    invoke-direct {p0}, Lcom/market2345/home/HomeTabActivity;->updateUpdateShowCount()V

    goto :goto_0

    .line 1054
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.download.status.change"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getDownloadings()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/market2345/home/model/IBottomBarItem;->ifShowRednotify(Landroid/content/Context;I)V

    goto :goto_0

    .line 1058
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1060
    const-string v1, "pref.add.new.download"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1061
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getDownloadings()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/market2345/home/model/IBottomBarItem;->ifShowRednotify(Landroid/content/Context;I)V

    goto :goto_0

    .line 1063
    :cond_4
    const-string v1, "pref.download.load.completed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity;->bottomItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/home/model/IBottomBarItem;

    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getDownloadings()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/market2345/home/model/IBottomBarItem;->ifShowRednotify(Landroid/content/Context;I)V

    goto :goto_0
.end method
