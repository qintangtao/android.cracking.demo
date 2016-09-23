.class public Lcom/market2345/cacheclean/CleanRamAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "CleanRamAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;,
        Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/cacheclean/AppRamCacheInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->infos:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanRamAppAdapter;)Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanRamAppAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->listener:Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 37
    .local v0, "count":I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    move v1, p1

    .line 62
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 63
    .local v0, "holder":Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;-><init>(Lcom/market2345/cacheclean/CleanRamAppAdapter;)V

    .line 67
    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;
    const v2, 0x7f0901c9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f0901cb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0901cc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0901ca

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->tv_clean:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/AppRamCacheInfo;->getIv_icon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v3, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/AppRamCacheInfo;->getIv_icon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    iget-object v3, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/AppRamCacheInfo;->getTv_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/AppRamCacheInfo;->getTv_size()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;->tv_clean:Landroid/widget/TextView;

    new-instance v3, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;-><init>(Lcom/market2345/cacheclean/CleanRamAppAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object p2

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;
    check-cast v0, Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanRamAppAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setListener(Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter;->listener:Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;

    .line 44
    return-void
.end method
