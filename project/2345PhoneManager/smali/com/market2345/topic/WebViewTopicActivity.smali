.class public Lcom/market2345/topic/WebViewTopicActivity;
.super Lcom/market2345/applist/activity/TitleBarActivity;
.source "WebViewTopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;,
        Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;,
        Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;,
        Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;,
        Lcom/market2345/topic/WebViewTopicActivity$JSInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC_SUB_TYPE_NORMAL:I = 0x0

.field private static final TOPIC_SUB_TYPE_SINGLE_APP:I = 0x1


# instance fields
.field private CODE2STATUS:[Ljava/lang/String;

.field private STATUS2CODE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disableLinkInWebView:Z

.field private mAppStatusView:Landroid/view/View;

.field private mApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mDownloadURLMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingView:Landroid/view/View;

.field private mNoData:Landroid/view/View;

.field private mPackageNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceHolder:Landroid/view/View;

.field private mPlaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubType:I

.field private mTopTitle:Landroid/widget/TextView;

.field private mTopicId:I

.field private mTopicInfo:Lcom/market2345/topic/model/TopicInfo;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewError:Landroid/view/View;

.field private session:Lcom/market2345/datacenter/DataCenterObserver;

.field private showCustomizeLabel:Z

.field private showGiftLabel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/market2345/topic/WebViewTopicActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/market2345/applist/activity/TitleBarActivity;-><init>()V

    .line 58
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u7b49\u5f85\u4e2d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6682\u505c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u76f4\u63a5\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u7ee7\u7eed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u91cd\u8bd5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u68c0\u6d4b\u4e2d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5b89\u88c5\u4e2d"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5347\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5b89\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6253\u5f00"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mSubType:I

    .line 898
    return-void
.end method

.method private DownloadInfo2IntStatus(Lcom/market2345/download/DownloadInfo;)I
    .locals 6
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 590
    const-string v2, ""

    .line 591
    .local v2, "text":Ljava/lang/String;
    iget v4, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v4, :sswitch_data_0

    .line 663
    :goto_0
    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->STATUS2CODE:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 664
    .local v1, "result":I
    return v1

    .line 594
    .end local v1    # "result":I
    :sswitch_0
    const-string v2, "\u7b49\u5f85\u4e2d"

    .line 595
    goto :goto_0

    .line 598
    :sswitch_1
    const-string v2, "\u6682\u505c"

    .line 599
    goto :goto_0

    .line 601
    :sswitch_2
    const-string v2, "\u76f4\u63a5\u4e0b\u8f7d"

    .line 602
    goto :goto_0

    .line 604
    :sswitch_3
    const-string v2, "\u7ee7\u7eed"

    .line 605
    goto :goto_0

    .line 607
    :sswitch_4
    const-string v2, "\u91cd\u8bd5"

    .line 608
    goto :goto_0

    .line 610
    :sswitch_5
    const-string v2, "\u68c0\u6d4b\u4e2d"

    .line 611
    goto :goto_0

    .line 613
    :sswitch_6
    const-string v2, "\u5b89\u88c5\u4e2d"

    .line 614
    goto :goto_0

    .line 616
    :sswitch_7
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateApp(Ljava/lang/String;)Lcom/market2345/model/App;

    move-result-object v3

    .line 618
    .local v3, "updateApp":Lcom/market2345/model/App;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/market2345/model/App;->versionCode:I

    iget v5, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    if-le v4, v5, :cond_0

    .line 619
    const-string v2, "\u5347\u7ea7"

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 622
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_2

    .line 623
    iget-object v4, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 624
    const-string v2, "\u5b89\u88c5"

    goto :goto_0

    .line 626
    :cond_1
    const-string v2, "\u4e0b\u8f7d"

    goto :goto_0

    .line 631
    :cond_2
    iget v4, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iget v5, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    if-le v4, v5, :cond_4

    .line 632
    iget-object v4, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    const-string v2, "\u5b89\u88c5"

    goto/16 :goto_0

    .line 636
    :cond_3
    const-string v2, "\u5347\u7ea7"

    goto/16 :goto_0

    .line 641
    :cond_4
    const-string v2, "\u6253\u5f00"

    goto/16 :goto_0

    .line 648
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v3    # "updateApp":Lcom/market2345/model/App;
    :sswitch_8
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 649
    const-string v2, "\u5347\u7ea7"

    goto/16 :goto_0

    .line 651
    :cond_5
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 652
    .restart local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_6

    .line 653
    const-string v2, "\u4e0b\u8f7d"

    goto/16 :goto_0

    .line 655
    :cond_6
    const-string v2, "\u6253\u5f00"

    goto/16 :goto_0

    .line 591
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
        0x258 -> :sswitch_5
        0x259 -> :sswitch_6
        0x25a -> :sswitch_8
    .end sparse-switch
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mStatusMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/topic/WebViewTopicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->initWebViewButtons()V

    return-void
.end method

.method static synthetic access$1300(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->STATUS2CODE:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceHolder:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebViewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/topic/WebViewTopicActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/topic/WebViewTopicActivity;)Lcom/market2345/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPackageNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/topic/WebViewTopicActivity;)Lcom/market2345/datacenter/DataCenterObserver;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/topic/WebViewTopicActivity;Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/topic/WebViewTopicActivity;->callbackButtonInitStatus(Ljava/lang/String;III)V

    return-void
.end method

.method private callbackButtonInitStatus(Ljava/lang/String;III)V
    .locals 3
    .param p1, "btnId"    # Ljava/lang/String;
    .param p2, "intStatus"    # I
    .param p3, "isEnabled"    # I
    .param p4, "intPercents"    # I

    .prologue
    .line 222
    sget-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackButtonInitStatus---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setBtnStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method private handleWebViewDownloadStatus()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->disableLinkInWebView:Z

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v1, "set DownloadListener"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/market2345/topic/WebViewTopicActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/topic/WebViewTopicActivity$1;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v1, "remove DownloadListener"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_0
.end method

.method private initAppStatus(Lcom/market2345/model/App;)V
    .locals 28
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090225

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 388
    .local v6, "iv_app_icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090392

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 389
    .local v7, "iv_recommend_icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f09009f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 390
    .local v23, "tv_title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f09038f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 391
    .local v18, "tv_label":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090390

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 392
    .local v16, "tv_gift_label":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f09023c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 393
    .local v21, "tv_size":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090393

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 394
    .local v14, "tv_download_count":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090397

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/IntroduceView;

    .line 395
    .local v17, "tv_introduce":Lcom/market2345/customview/download/IntroduceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090229

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/market2345/customview/download/MyProgressImageView;

    .line 396
    .local v9, "pb_progress":Lcom/market2345/customview/download/MyProgressImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090222

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/market2345/customview/download/DownloadStatusView;

    .line 397
    .local v13, "tv_download":Lcom/market2345/customview/download/DownloadStatusView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090226

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/market2345/customview/download/RateView;

    .line 398
    .local v19, "tv_rate":Lcom/market2345/customview/download/RateView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090391

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/market2345/customview/download/DownloadCountLayout;

    .line 399
    .local v12, "rl_size_download_count":Lcom/market2345/customview/download/DownloadCountLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090395

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/market2345/customview/download/DownloadSpeedLayout;

    .line 400
    .local v8, "ll_download_size_speed":Lcom/market2345/customview/download/DownloadSpeedLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090228

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/market2345/customview/download/SizeView;

    .line 401
    .local v15, "tv_download_size":Lcom/market2345/customview/download/SizeView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f090396

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/market2345/customview/download/SpeedView;

    .line 402
    .local v22, "tv_speed":Lcom/market2345/customview/download/SpeedView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f09038c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 404
    .local v20, "tv_signature":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 405
    const v24, 0x7f090012

    move/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v13, v0, v1}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 406
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 407
    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/model/App;->recomIco:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v7}, Lcom/market2345/topic/WebViewTopicActivity;->setTitleIcon(ILandroid/widget/ImageView;)V

    .line 408
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->showCustomizeLabel:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->sLabel:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 410
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->sLabel:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->showGiftLabel:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/model/App;->giftTotal:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    .line 417
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->requestLayout()V

    .line 423
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/market2345/common/util/ApplicationUtils;->getFormatDownloads(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 428
    .local v10, "m":D
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpl-double v24, v10, v24

    if-lez v24, :cond_1

    .line 429
    const-string v24, "10.0"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/market2345/model/App;->mark:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v10    # "m":D
    :cond_1
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/IntroduceView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const v24, 0x7f090007

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 437
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 438
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lcom/market2345/customview/download/MyProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 439
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 440
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/IntroduceView;->setTag(ILjava/lang/Object;)V

    .line 441
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lcom/market2345/customview/download/DownloadCountLayout;->setTag(ILjava/lang/Object;)V

    .line 442
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setTag(ILjava/lang/Object;)V

    .line 443
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/market2345/customview/download/SizeView;->setTag(ILjava/lang/Object;)V

    .line 444
    const v24, 0x7f09000b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/SpeedView;->setTag(ILjava/lang/Object;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v4

    .line 447
    .local v4, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v4, :cond_5

    .line 448
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [Lcom/market2345/download/interfaces/IProgressCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    const/16 v25, 0x1

    aput-object v13, v24, v25

    const/16 v25, 0x2

    aput-object v19, v24, v25

    const/16 v25, 0x3

    aput-object v17, v24, v25

    const/16 v25, 0x4

    aput-object v12, v24, v25

    const/16 v25, 0x5

    aput-object v8, v24, v25

    const/16 v25, 0x6

    aput-object v15, v24, v25

    const/16 v25, 0x7

    aput-object v22, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 493
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->isShown()Z

    move-result v24

    if-nez v24, :cond_2

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceHolder:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 498
    :cond_2
    sget-object v24, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 413
    .end local v4    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    :cond_3
    const/16 v24, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 419
    :cond_4
    const/16 v24, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 431
    :catch_0
    move-exception v5

    .line 432
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 460
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 462
    const-string v24, "\u5347\u7ea7"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/topic/WebViewTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f07005a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 464
    const v24, 0x7f020185

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    .line 467
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 468
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    :goto_5
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setEnabled(Z)V

    .line 486
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/market2345/customview/download/DownloadStatusView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 487
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/market2345/customview/download/MyProgressImageView;->setVisibility(I)V

    .line 488
    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/RateView;->setVisibility(I)V

    .line 489
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/IntroduceView;->setVisibility(I)V

    .line 490
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/market2345/customview/download/DownloadCountLayout;->setVisibility(I)V

    .line 491
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 470
    :cond_6
    const/16 v24, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 472
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 474
    const-string v24, "\u6253\u5f00"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/topic/WebViewTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f07005a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 476
    const v24, 0x7f020185

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 478
    :cond_8
    const-string v24, "\u4e0b\u8f7d"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/topic/WebViewTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f07004f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 480
    const v24, 0x7f02018b

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    .line 481
    const/16 v24, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private initJsBridge()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    invoke-direct {v1, p0}, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    const-string v2, "zhushou"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 277
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private initTopic(Lcom/market2345/topic/model/TopicInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/market2345/topic/model/TopicInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 502
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopicInfo:Lcom/market2345/topic/model/TopicInfo;

    .line 503
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopTitle:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/market2345/topic/model/TopicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/market2345/topic/model/TopicInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/market2345/topic/model/TopicInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/market2345/topic/model/TopicInfo;->third_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "softId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/market2345/topic/model/TopicInfo;->softId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable_link "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/market2345/topic/model/TopicInfo;->disable_link:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    iget-object v2, p1, Lcom/market2345/topic/model/TopicInfo;->third_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p1, Lcom/market2345/topic/model/TopicInfo;->third_url:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 516
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    .line 519
    :cond_1
    iget v2, p1, Lcom/market2345/topic/model/TopicInfo;->disable_link:I

    if-lez v2, :cond_7

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/market2345/topic/WebViewTopicActivity;->setDisableLinkInWebView(Z)V

    .line 520
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableLinkInWebView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->disableLinkInWebView:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->handleWebViewDownloadStatus()V

    .line 524
    iget v2, p1, Lcom/market2345/topic/model/TopicInfo;->softId:I

    if-gtz v2, :cond_9

    .line 526
    iput v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mSubType:I

    .line 528
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 529
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    .line 532
    :cond_2
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mStatusMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 533
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mStatusMap:Ljava/util/HashMap;

    .line 536
    :cond_3
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 537
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;

    .line 540
    :cond_4
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPackageNameMap:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 541
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPackageNameMap:Ljava/util/HashMap;

    .line 544
    :cond_5
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mCallbacks:Ljava/util/HashMap;

    if-nez v2, :cond_6

    .line 545
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mCallbacks:Ljava/util/HashMap;

    .line 548
    :cond_6
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->STATUS2CODE:Ljava/util/HashMap;

    if-nez v2, :cond_8

    .line 549
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->STATUS2CODE:Ljava/util/HashMap;

    .line 550
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;

    array-length v1, v2

    .line 551
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 552
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->STATUS2CODE:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_7
    move v2, v4

    .line 519
    goto :goto_0

    .line 555
    :cond_8
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->initWebViewButtons()V

    .line 562
    :goto_2
    return-void

    .line 558
    :cond_9
    iput v3, p0, Lcom/market2345/topic/WebViewTopicActivity;->mSubType:I

    .line 559
    sget-object v2, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v3, "softId > 0"

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    iget v2, p1, Lcom/market2345/topic/model/TopicInfo;->softId:I

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p0, v2, v3}, Lcom/market2345/http/MarketAPI;->getAppInfo(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    goto :goto_2
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 235
    iput-boolean v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->showCustomizeLabel:Z

    .line 236
    iput-boolean v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->showGiftLabel:Z

    .line 237
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topicId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopicId:I

    .line 238
    iget v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopicId:I

    if-ne v0, v3, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e3b\u9898\u4e0d\u5b58\u5728!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->finish()V

    .line 243
    :cond_0
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopTitle:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    .line 245
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;-><init>(Lcom/market2345/topic/WebViewTopicActivity;Lcom/market2345/topic/WebViewTopicActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 246
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;

    invoke-direct {v1, p0, v4}, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;-><init>(Lcom/market2345/topic/WebViewTopicActivity;Lcom/market2345/topic/WebViewTopicActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 247
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->handleWebViewDownloadStatus()V

    .line 249
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mLoadingView:Landroid/view/View;

    .line 250
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 251
    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mNoData:Landroid/view/View;

    .line 252
    const v0, 0x7f0900fa

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebViewError:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebViewError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const v0, 0x7f090389

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;

    .line 255
    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceHolder:Landroid/view/View;

    .line 256
    return-void
.end method

.method private initWebViewButtons()V
    .locals 7

    .prologue
    .line 668
    sget-object v4, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v5, "initWebViewButtons"

    invoke-static {v4, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mCallbacks:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 670
    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 671
    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 672
    .local v3, "url":Ljava/lang/String;
    sget-object v4, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v4, v3}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v2

    .line 674
    .local v2, "info":Lcom/market2345/download/DownloadInfo;
    if-eqz v2, :cond_0

    .line 675
    new-instance v0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;

    invoke-direct {v0, p0}, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    .line 676
    .local v0, "callback":Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;
    const v4, 0x7f090007

    invoke-virtual {v0, v4, v2}, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->setTag(ILjava/lang/Object;)V

    .line 677
    const v4, 0x7f09000b

    invoke-virtual {v0, v4, v3}, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->setTag(ILjava/lang/Object;)V

    .line 678
    const v4, 0x7f090012

    invoke-virtual {v0, v4, p0}, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->setTag(ILjava/lang/Object;)V

    .line 679
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/market2345/download/interfaces/IProgressCallback;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v4}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 680
    invoke-virtual {v2, p0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 681
    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 685
    .end local v0    # "callback":Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 283
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 284
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 286
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mNoData:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopicId:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0, p0, v1}, Lcom/market2345/http/MarketAPI;->getTopic(Landroid/content/Context;ILcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 292
    return-void
.end method

.method private setDisableLinkInWebView(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/market2345/topic/WebViewTopicActivity;->disableLinkInWebView:Z

    .line 125
    return-void
.end method

.method private setTitleIcon(ILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "recomIco"    # I
    .param p2, "iv_recommend_icon"    # Landroid/widget/ImageView;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 830
    packed-switch p1, :pswitch_data_0

    .line 851
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 854
    :goto_0
    return-void

    .line 832
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    const v0, 0x7f020241

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 839
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    const v0, 0x7f020131

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 843
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    const v0, 0x7f0202ab

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 847
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    const v0, 0x7f0202f2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 703
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 707
    return-void
.end method

.method private updateWebViewButtons()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 565
    sget-object v6, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v7, "updateWebViewButtons"

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 567
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 568
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    .local v0, "btnId":Ljava/lang/String;
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v6, v5}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v2

    .line 570
    .local v2, "info":Lcom/market2345/download/DownloadInfo;
    if-eqz v2, :cond_1

    .line 571
    sget-object v6, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btnId---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    sget-object v6, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStatus---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/market2345/download/DownloadInfo;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    invoke-direct {p0, v2}, Lcom/market2345/topic/WebViewTopicActivity;->DownloadInfo2IntStatus(Lcom/market2345/download/DownloadInfo;)I

    move-result v4

    .line 574
    .local v4, "status":I
    invoke-direct {p0, v0, v4, v10, v9}, Lcom/market2345/topic/WebViewTopicActivity;->callbackButtonInitStatus(Ljava/lang/String;III)V

    goto :goto_0

    .line 576
    .end local v4    # "status":I
    :cond_1
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 577
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 578
    .local v3, "linkedPackageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 579
    iget-object v6, p0, Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v6, v3}, Lcom/market2345/datacenter/DataCenterObserver;->isInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v4, 0xa

    .line 580
    .restart local v4    # "status":I
    :goto_1
    invoke-direct {p0, v0, v4, v10, v9}, Lcom/market2345/topic/WebViewTopicActivity;->callbackButtonInitStatus(Ljava/lang/String;III)V

    goto :goto_0

    .line 579
    .end local v4    # "status":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 586
    .end local v0    # "btnId":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v3    # "linkedPackageName":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 322
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->finish()V

    goto :goto_0

    .line 325
    :sswitch_1
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const-string v0, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->loadData()V

    goto :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009e -> :sswitch_0
        0x7f09012d -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    sget-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->setContentView(I)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/topic/WebViewTopicActivity;->disableLinkInWebView:Z

    .line 136
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->initView()V

    .line 137
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->initJsBridge()V

    .line 138
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->initListener()V

    .line 139
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->loadData()V

    .line 140
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=topic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->showError()V

    .line 697
    :cond_2
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->showError()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-super {p0}, Lcom/market2345/applist/activity/TitleBarActivity;->onResume()V

    .line 146
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->updateWebViewButtons()V

    .line 147
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 340
    sget-object v5, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v6, "onSuccess"

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string v5, "http://zhushou.2345.com/index.php?c=ard&d=info"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 346
    if-eqz p2, :cond_3

    instance-of v5, p2, Lcom/market2345/model/SingleAppResp;

    if-eqz v5, :cond_3

    move-object v1, p2

    .line 347
    check-cast v1, Lcom/market2345/model/SingleAppResp;

    .line 348
    .local v1, "appDetail":Lcom/market2345/model/SingleAppResp;
    iget-object v5, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v5, :cond_0

    .line 349
    iget-object v0, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    .line 350
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    iget v6, v0, Lcom/market2345/model/App;->sid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget v5, p0, Lcom/market2345/topic/WebViewTopicActivity;->mSubType:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity;->mStatusMap:Ljava/util/HashMap;

    iget v6, v0, Lcom/market2345/model/App;->sid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 354
    .local v3, "intStatus":I
    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;

    aget-object v4, v5, v3

    .line 355
    .local v4, "status":Ljava/lang/String;
    sget-object v5, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    sget-object v5, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSucess: performClick---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/market2345/model/App;->sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 361
    :cond_2
    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v5, p0, v4, v0}, Lcom/market2345/download/DownloadManager;->performClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 365
    .end local v3    # "intStatus":I
    .end local v4    # "status":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->initAppStatus(Lcom/market2345/model/App;)V

    goto/16 :goto_0

    .line 370
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "appDetail":Lcom/market2345/model/SingleAppResp;
    :cond_3
    const-string v5, "detail"

    const-string v6, "detail success:null"

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 373
    :cond_4
    if-eqz p2, :cond_0

    const-string v5, "http://zhushou.2345.com/index.php?c=ard&d=topic"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p2, Lcom/market2345/topic/model/TopicResponseInfo;

    if-eqz v5, :cond_0

    move-object v2, p2

    .line 374
    check-cast v2, Lcom/market2345/topic/model/TopicResponseInfo;

    .line 375
    .local v2, "info":Lcom/market2345/topic/model/TopicResponseInfo;
    iget-object v5, v2, Lcom/market2345/topic/model/TopicResponseInfo;->list:Lcom/market2345/topic/model/TopicInfo;

    if-eqz v5, :cond_5

    .line 376
    iget-object v5, v2, Lcom/market2345/topic/model/TopicResponseInfo;->list:Lcom/market2345/topic/model/TopicInfo;

    invoke-direct {p0, v5}, Lcom/market2345/topic/WebViewTopicActivity;->initTopic(Lcom/market2345/topic/model/TopicInfo;)V

    goto/16 :goto_0

    .line 378
    :cond_5
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->showError()V

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 296
    sget-object v1, Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;

    const-string v2, "update"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p0}, Lcom/market2345/topic/WebViewTopicActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget v1, p0, Lcom/market2345/topic/WebViewTopicActivity;->mSubType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-direct {p0}, Lcom/market2345/topic/WebViewTopicActivity;->initWebViewButtons()V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity;->mTopicInfo:Lcom/market2345/topic/model/TopicInfo;

    iget v2, v2, Lcom/market2345/topic/model/TopicInfo;->softId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 310
    .local v0, "app":Lcom/market2345/model/App;
    invoke-direct {p0, v0}, Lcom/market2345/topic/WebViewTopicActivity;->initAppStatus(Lcom/market2345/model/App;)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
