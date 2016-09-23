.class public Lcom/market2345/dumpclean/TrustAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;
    }
.end annotation


# instance fields
.field private final TYPE:I

.field private final TYPE_CONTENT:I

.field private final TYPE_TITLE:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/TrustMode;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/TrustMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/TrustMode;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->TYPE:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->TYPE_TITLE:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->TYPE_CONTENT:I

    .line 30
    iput-object p1, p0, Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/TrustAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/TrustAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/TrustAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getMoveOnClickListener(Lcom/market2345/dumpclean/TrustMode;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "mode"    # Lcom/market2345/dumpclean/TrustMode;

    .prologue
    .line 113
    new-instance v0, Lcom/market2345/dumpclean/TrustAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/market2345/dumpclean/TrustAdapter$1;-><init>(Lcom/market2345/dumpclean/TrustAdapter;Lcom/market2345/dumpclean/TrustMode;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/TrustMode;

    .line 57
    .local v0, "mode":Lcom/market2345/dumpclean/TrustMode;
    iget-object v1, v0, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    sget-object v2, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v1, v2, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 60
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f02024f

    .line 66
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/TrustAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/TrustMode;

    .line 68
    .local v0, "mode":Lcom/market2345/dumpclean/TrustMode;
    if-nez p2, :cond_1

    .line 70
    new-instance v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;

    invoke-direct {v2, p0}, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;-><init>(Lcom/market2345/dumpclean/TrustAdapter;)V

    .line 71
    .local v2, "viewHodler":Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/TrustAdapter;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/market2345/dumpclean/TrustMode;->count:I

    if-lez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030091

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    const v3, 0x7f0900f7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_top_title:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f090302

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_count:Landroid/widget/TextView;

    .line 81
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :goto_1
    iget-object v3, v0, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    if-eq v3, v4, :cond_5

    .line 87
    iget-object v1, v0, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    .line 88
    .local v1, "n":Ljava/lang/String;
    iget-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_move:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/market2345/dumpclean/TrustAdapter;->getMoveOnClickListener(Lcom/market2345/dumpclean/TrustMode;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget-object v3, Lcom/market2345/dumpclean/ITEMTYPE;->APKFILE:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v4, v0, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v3, v4, :cond_2

    .line 91
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unInstalledApp://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/market2345/dumpclean/TrustMode;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 109
    .end local v1    # "n":Ljava/lang/String;
    :goto_2
    return-object p2

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030090

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    const v3, 0x7f090225

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->iv_app_icon:Landroid/widget/ImageView;

    .line 78
    const v3, 0x7f09009f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_name:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f090300

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_move:Landroid/widget/TextView;

    goto :goto_0

    .line 83
    .end local v2    # "viewHodler":Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;

    .restart local v2    # "viewHodler":Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;
    goto :goto_1

    .line 92
    .restart local v1    # "n":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/market2345/dumpclean/ITEMTYPE;->REMAIN:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v4, v0, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v3, v4, :cond_3

    .line 93
    iget-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 96
    :cond_3
    iget-object v3, v0, Lcom/market2345/dumpclean/TrustMode;->path:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    iget-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 99
    :cond_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installedApp://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/market2345/dumpclean/TrustMode;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 104
    .end local v1    # "n":Ljava/lang/String;
    :cond_5
    iget-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_top_title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, v2, Lcom/market2345/dumpclean/TrustAdapter$ViewHodler;->tv_count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/market2345/dumpclean/TrustMode;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    return v0
.end method
