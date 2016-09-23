.class public Lcom/market2345/wificonn/WifiReceivedFilesActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "WifiReceivedFilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;
    }
.end annotation


# instance fields
.field private dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

.field private delAll:Landroid/widget/ImageView;

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;"
        }
    .end annotation
.end field

.field private header:Landroid/widget/TextView;

.field private receivedAdapter:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

.field private receivedFiles:Landroid/widget/ListView;

.field private receiver:Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/wificonn/WifiReceivedFilesActivity;)Lcom/market2345/wificonn/WifiReceivedFilesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedAdapter:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    return-object v0
.end method

.method private showDel([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "ids"    # [I
    .param p2, "files"    # [Ljava/lang/String;

    .prologue
    .line 172
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-instance v1, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;

    invoke-direct {v1}, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;-><init>()V

    .line 176
    .local v1, "f":Landroid/support/v4/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "received_del_ids"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 178
    const-string v3, "received_del_files"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private showDelAll()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->delAll:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->delAll:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->finish()V

    .line 146
    return-void
.end method

.method public deleteAll(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 151
    .local v3, "ids":[I
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 152
    .local v1, "filePaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/FileFromPC;

    .line 155
    .local v0, "file":Lcom/market2345/model/FileFromPC;
    iget v4, v0, Lcom/market2345/model/FileFromPC;->id:I

    aput v4, v3, v2

    .line 156
    iget-object v4, v0, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "file":Lcom/market2345/model/FileFromPC;
    :cond_0
    invoke-direct {p0, v3, v1}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->showDel([I[Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v2, 0x7f0300dc

    invoke-virtual {p0, v2}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    .line 61
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v2, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 63
    const v2, 0x7f09043b

    invoke-virtual {p0, v2}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->delAll:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f09043c

    invoke-virtual {p0, v2}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedFiles:Landroid/widget/ListView;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    .line 66
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getFilesFromPC()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getFilesFromPC()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->showDelAll()V

    .line 71
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03008d

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "headRoot":Landroid/view/View;
    const v2, 0x7f0902fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->header:Landroid/widget/TextView;

    .line 81
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->header:Landroid/widget/TextView;

    const-string v3, "\u63a5\u6536\u5386\u53f2(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->getFileFromPCCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedFiles:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 84
    new-instance v2, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    iget-object v3, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedAdapter:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    .line 85
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedFiles:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedAdapter:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedFiles:Landroid/widget/ListView;

    const v3, 0x7f0902b1

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedFiles:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 90
    new-instance v2, Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;

    invoke-direct {v2, p0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;-><init>(Lcom/market2345/wificonn/WifiReceivedFilesActivity;)V

    iput-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receiver:Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receiver:Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 115
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receiver:Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/FileFromPC;

    .line 165
    .local v0, "file":Lcom/market2345/model/FileFromPC;
    const-string v1, "janan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c\u4e00\u6b65"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-array v1, v4, [I

    iget v2, v0, Lcom/market2345/model/FileFromPC;->id:I

    aput v2, v1, v5

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, v0, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->showDel([I[Ljava/lang/String;)V

    .line 167
    return v4
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getFilesFromPC()Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, "localFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/FileFromPC;>;"
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedAdapter:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    invoke-virtual {v1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->header:Landroid/widget/TextView;

    const-string v2, "\u63a5\u6536\u5386\u53f2(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->getFileFromPCCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->showDelAll()V

    .line 139
    return-void
.end method
