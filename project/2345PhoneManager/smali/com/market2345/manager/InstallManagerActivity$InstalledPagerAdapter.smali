.class Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InstallManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/manager/InstallManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstalledPagerAdapter"
.end annotation


# static fields
.field private static final PAGER_COUNT:I = 0x2

.field private static final SYS_APPS:I = 0x1

.field private static final USER_APPS:I


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/InstallManagerActivity;


# direct methods
.method constructor <init>(Lcom/market2345/manager/InstallManagerActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 134
    iget-object v4, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03007f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, "view":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 136
    .local v2, "appsListView":Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/InstalledApp;>;"
    if-nez p2, :cond_0

    .line 138
    iget-object v4, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    # getter for: Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4}, Lcom/market2345/manager/InstallManagerActivity;->access$200(Lcom/market2345/manager/InstallManagerActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    :goto_0
    new-instance v0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;

    iget-object v4, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    iget-object v5, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {v0, v4, v5, v1, p2}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;-><init>(Lcom/market2345/manager/InstallManagerActivity;Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 145
    .local v0, "adapter":Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;
    const v4, 0x7f0902b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    return-object v3

    .line 141
    .end local v0    # "adapter":Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;
    :cond_0
    iget-object v4, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    # getter for: Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4}, Lcom/market2345/manager/InstallManagerActivity;->access$200(Lcom/market2345/manager/InstallManagerActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 160
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 166
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    iget-object v2, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/market2345/common/util/Utils;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method
