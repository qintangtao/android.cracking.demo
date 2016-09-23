.class public Lcom/market2345/slidemenu/DownloadFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;
    }
.end annotation


# static fields
.field public static final DISMISS_DIALOG:I = 0x2

.field public static final SHOW_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

.field private mCompletedDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mDownloadings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mWaitWifiDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private supportTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/slidemenu/DownloadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->supportTag:Ljava/lang/String;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/DownloadFragment;)Lcom/market2345/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/slidemenu/DownloadFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/DownloadFragment;->initDownloadItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/slidemenu/DownloadFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getDownloadingSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/market2345/slidemenu/DownloadFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getWaitWifiSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/market2345/slidemenu/DownloadFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getCompletedCounts()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/market2345/slidemenu/DownloadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/DownloadFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getCompletedCounts()I
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDownloadingSize()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getWaitWifiSize()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private initDownloadItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/download/DownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/download/DownloadItem;>;"
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    const v2, 0x7f09007e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment;->mListView:Landroid/widget/ListView;

    .line 224
    const v2, 0x7f09007d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 225
    .local v0, "emptyLay":Landroid/widget/LinearLayout;
    const v2, 0x7f09022e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 226
    .local v1, "toWonderButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 227
    new-instance v2, Lcom/market2345/slidemenu/DownloadFragment$2;

    invoke-direct {v2, p0}, Lcom/market2345/slidemenu/DownloadFragment$2;-><init>(Lcom/market2345/slidemenu/DownloadFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method private loadDownloads()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    monitor-enter v1

    .line 117
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getDownloadings()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getCompletedDownloads()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getInstalledDownloads()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getWaitWifiDownloads()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;

    new-instance v1, Lcom/market2345/download/DownloadTitle;

    invoke-direct {v1, v3}, Lcom/market2345/download/DownloadTitle;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;

    new-instance v1, Lcom/market2345/download/DownloadTitle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/market2345/download/DownloadTitle;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    new-instance v1, Lcom/market2345/download/DownloadTitle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/market2345/download/DownloadTitle;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/DownloadFragment;->initDownloadItems(Ljava/util/ArrayList;)V

    .line 139
    return-void

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyList()V
    .locals 5

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "deletedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/download/DownloadInfo;>;"
    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/download/DownloadItem;

    .line 210
    .local v1, "downloadInfo":Lcom/market2345/download/DownloadItem;
    instance-of v3, v1, Lcom/market2345/download/DownloadInfo;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/io/File;

    move-object v3, v1

    check-cast v3, Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    check-cast v1, Lcom/market2345/download/DownloadInfo;

    .end local v1    # "downloadInfo":Lcom/market2345/download/DownloadItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/market2345/download/DownloadManager;->deleteDownload([Lcom/market2345/download/DownloadInfo;)V

    .line 216
    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment;->adapter:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    if-eqz v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment;->adapter:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_2
    return-void
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    new-instance v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;-><init>(Lcom/market2345/slidemenu/DownloadFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->adapter:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    .line 153
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment;->adapter:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/slidemenu/DownloadFragment$1;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/DownloadFragment$1;-><init>(Lcom/market2345/slidemenu/DownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 108
    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0}, Lcom/market2345/slidemenu/DownloadFragment;->loadDownloads()V

    .line 110
    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/DownloadFragment;->initView(Landroid/view/View;)V

    .line 111
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDestroyView()V

    .line 205
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onHiddenChanged(Z)V

    .line 98
    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;->change(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 199
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment;->supportTag:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method
