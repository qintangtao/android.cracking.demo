.class public Lcom/market2345/startup/StartupAdapter;
.super Landroid/widget/BaseAdapter;
.source "StartupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/startup/StartupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/StartupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/StartupInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/market2345/startup/StartupAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/market2345/startup/StartupAdapter;->mInfos:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/startup/StartupAdapter;->mInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/startup/StartupAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/market2345/model/StartupInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/startup/StartupAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/StartupInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/market2345/startup/StartupAdapter;->getItem(I)Lcom/market2345/model/StartupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 54
    new-instance v1, Lcom/market2345/startup/StartupAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/market2345/startup/StartupAdapter$ViewHolder;-><init>(Lcom/market2345/startup/StartupAdapter;)V

    iput-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    .line 55
    iget-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0300b9

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    iget-object v2, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    const v1, 0x7f090225

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/market2345/startup/StartupAdapter$ViewHolder;->ivAppIcon:Landroid/widget/ImageView;

    .line 57
    iget-object v2, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    const v1, 0x7f09039d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/startup/StartupAdapter$ViewHolder;->tvAppName:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    const v1, 0x7f09039c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/market2345/startup/StartupAdapter$ViewHolder;->cbSwitch:Landroid/widget/CheckBox;

    .line 59
    iget-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/StartupInfo;

    .line 68
    .local v0, "info":Lcom/market2345/model/StartupInfo;
    iget-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/startup/StartupAdapter$ViewHolder;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/market2345/model/StartupInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/startup/StartupAdapter$ViewHolder;->tvAppName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/market2345/model/StartupInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/startup/StartupAdapter$ViewHolder;->cbSwitch:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/market2345/model/StartupInfo;->isStartup:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    return-object p2

    .line 63
    .end local v0    # "info":Lcom/market2345/model/StartupInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/startup/StartupAdapter$ViewHolder;

    iput-object v1, p0, Lcom/market2345/startup/StartupAdapter;->mHolder:Lcom/market2345/startup/StartupAdapter$ViewHolder;

    goto :goto_0
.end method
