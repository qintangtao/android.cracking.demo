.class public Lcom/market2345/manager/IgnoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "IgnoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/manager/IgnoreAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIgnoreList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private session:Lcom/market2345/datacenter/DataCenterObserver;

.field private unIgnoreButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 235
    new-instance v0, Lcom/market2345/manager/IgnoreAdapter$1;

    invoke-direct {v0, p0}, Lcom/market2345/manager/IgnoreAdapter$1;-><init>(Lcom/market2345/manager/IgnoreAdapter;)V

    iput-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->unIgnoreButtonListener:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 56
    invoke-direct {p0}, Lcom/market2345/manager/IgnoreAdapter;->setProductList()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/manager/IgnoreAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/IgnoreAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/manager/IgnoreAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/IgnoreAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initDataSourceList()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/market2345/manager/IgnoreAdapter;->mIgnoreList:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/market2345/manager/IgnoreAdapter;->mIgnoreList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_0
    iget-object v1, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method private setProductList()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getIgnoreUpdateList()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->mIgnoreList:Ljava/util/HashMap;

    .line 107
    invoke-direct {p0}, Lcom/market2345/manager/IgnoreAdapter;->initDataSourceList()V

    .line 108
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "newData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/market2345/manager/IgnoreAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 163
    invoke-virtual {p0}, Lcom/market2345/manager/IgnoreAdapter;->notifyDataSetChanged()V

    .line 165
    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    invoke-virtual {p0}, Lcom/market2345/manager/IgnoreAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/market2345/model/App;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/manager/IgnoreAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/market2345/manager/IgnoreAdapter;->getItem(I)Lcom/market2345/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 171
    if-nez p2, :cond_1

    .line 173
    iget-object v3, p0, Lcom/market2345/manager/IgnoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03007b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 174
    new-instance v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;-><init>()V

    .line 176
    .local v1, "holder":Lcom/market2345/manager/IgnoreAdapter$ViewHolder;
    const v3, 0x7f090225

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 177
    const v3, 0x7f09009f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 178
    const v3, 0x7f09023c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_show:Landroid/widget/TextView;

    .line 179
    const v3, 0x7f0902a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_all_size:Landroid/widget/TextView;

    .line 180
    const v3, 0x7f0902a8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_patch_size:Landroid/widget/TextView;

    .line 181
    const v3, 0x7f090222

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_download:Landroid/widget/ImageView;

    .line 182
    const v3, 0x7f0902a9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_current_version:Landroid/widget/TextView;

    .line 183
    const v3, 0x7f0902aa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_new_version:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 192
    .local v0, "app":Lcom/market2345/model/App;
    if-eqz v0, :cond_0

    .line 194
    iget-object v3, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    iget-object v4, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v2

    .line 195
    .local v2, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v2, :cond_2

    .line 197
    iget-object v3, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/market2345/datacenter/DataCenterObserver;->unIgnoreApp(Lcom/market2345/model/App;)Z

    .line 232
    .end local v2    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_0
    :goto_1
    return-object p2

    .line 188
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "holder":Lcom/market2345/manager/IgnoreAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/market2345/manager/IgnoreAdapter$ViewHolder;
    goto :goto_0

    .line 203
    .restart local v0    # "app":Lcom/market2345/model/App;
    .restart local v2    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_2
    iget v3, v0, Lcom/market2345/model/App;->mDownPartial:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 204
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_show:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0165

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_all_size:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_patch_size:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/market2345/model/App;->patch_size:J

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_all_size:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_patch_size:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_2
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_download:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_download:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/market2345/manager/IgnoreAdapter;->unIgnoreButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v3, v2, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    iget-object v3, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    iget-object v4, v2, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 219
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_current_version:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_new_version:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --> V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_3
    :goto_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iget-object v5, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 210
    :cond_4
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_show:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/market2345/manager/IgnoreAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0161

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_all_size:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_patch_size:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 223
    :cond_5
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_current_version:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/market2345/model/InstalledApp;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/common/util/Utils;->getSubLengthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, v1, Lcom/market2345/manager/IgnoreAdapter$ViewHolder;->tv_new_version:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --> V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/market2345/model/App;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/common/util/Utils;->getSubLengthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/manager/IgnoreAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/market2345/manager/IgnoreAdapter;->setProductList()V

    .line 266
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method
