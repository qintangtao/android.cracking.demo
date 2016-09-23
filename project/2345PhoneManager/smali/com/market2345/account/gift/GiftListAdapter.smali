.class Lcom/market2345/account/gift/GiftListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GiftListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mFooterDividersEnabled:Z

.field private mGameGifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGift;",
            ">;"
        }
    .end annotation
.end field

.field private mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

.field private mGiftHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/account/model/GameGift;",
            ">;"
        }
    .end annotation
.end field

.field private mIconEnabled:Z

.field private mLazyLoadListener:Lcom/market2345/account/gift/LazyLoadListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/market2345/account/gift/GiftDelegate;)V
    .locals 4
    .param p2, "giftDelegate"    # Lcom/market2345/account/gift/GiftDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGift;",
            ">;",
            "Lcom/market2345/account/gift/GiftDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "gameGifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/account/model/GameGift;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    .line 41
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGift;

    .line 42
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v0    # "gameGift":Lcom/market2345/account/model/GameGift;
    :cond_0
    iput-object p2, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

    .line 45
    return-void
.end method

.method private forwardGiftDetail(Lcom/market2345/account/model/GameGift;)V
    .locals 3
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/market2345/account/gift/GiftDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key.gift.id"

    iget-object v2, p1, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "key.soft.id"

    iget-object v2, p1, Lcom/market2345/account/model/GameGift;->softId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method


# virtual methods
.method public addGiftList(Lcom/market2345/account/model/GameGift;)V
    .locals 2
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    return-void
.end method

.method public addGiftList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "gameGifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/account/model/GameGift;>;"
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGift;

    .line 214
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    .end local v0    # "gameGift":Lcom/market2345/account/model/GameGift;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public clearGiftList()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 238
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGiftById(Ljava/lang/String;)Lcom/market2345/account/model/GameGift;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGift;

    return-object v0
.end method

.method public getItem(I)Lcom/market2345/account/model/GameGift;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGift;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/market2345/account/gift/GiftListAdapter;->getItem(I)Lcom/market2345/account/model/GameGift;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const v10, 0x7f070050

    const v9, 0x7f02018e

    const/4 v4, 0x0

    .line 64
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mLazyLoadListener:Lcom/market2345/account/gift/LazyLoadListener;

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mLazyLoadListener:Lcom/market2345/account/gift/LazyLoadListener;

    invoke-interface {v3}, Lcom/market2345/account/gift/LazyLoadListener;->isLoadOver()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mLazyLoadListener:Lcom/market2345/account/gift/LazyLoadListener;

    invoke-interface {v3}, Lcom/market2345/account/gift/LazyLoadListener;->isEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mLazyLoadListener:Lcom/market2345/account/gift/LazyLoadListener;

    invoke-interface {v3}, Lcom/market2345/account/gift/LazyLoadListener;->lazyload()V

    .line 73
    :cond_0
    if-nez p2, :cond_7

    .line 74
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f030080

    invoke-virtual {v3, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;-><init>(Lcom/market2345/account/gift/GiftListAdapter;)V

    .line 76
    .local v1, "holder":Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;
    const v3, 0x7f09028a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    .line 77
    const v3, 0x7f0902b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_content:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0902b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_icon:Landroid/widget/ImageView;

    .line 79
    const v3, 0x7f09028d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_over_time:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f0902b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_title:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f090218

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_code:Landroid/widget/TextView;

    .line 82
    const v3, 0x7f0902b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->diver:Landroid/widget/FrameLayout;

    .line 83
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-boolean v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mIconEnabled:Z

    if-nez v3, :cond_1

    .line 86
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_icon:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f080018

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 89
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mFooterDividersEnabled:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 105
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->diver:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 108
    :cond_3
    invoke-virtual {p0, p1}, Lcom/market2345/account/gift/GiftListAdapter;->getItem(I)Lcom/market2345/account/model/GameGift;

    move-result-object v0

    .line 110
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    iget-boolean v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mIconEnabled:Z

    if-eqz v3, :cond_4

    .line 111
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v7, v0, Lcom/market2345/account/model/GameGift;->softLogo:Ljava/lang/String;

    iget-object v8, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 114
    :cond_4
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const v7, 0x7f090018

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 116
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/market2345/account/model/GameGift;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_content:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/market2345/account/model/GameGift;->content:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/market2345/account/model/GameGift;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_over_time:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8fc7\u671f\u65f6\u95f4\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/market2345/account/model/GameGift;->endDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->userGiftCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 123
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_code:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_1
    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->userGiftCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    iget-object v7, v0, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_5
    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 156
    :cond_6
    :goto_3
    return-object p2

    .line 94
    .end local v0    # "gameGift":Lcom/market2345/account/model/GameGift;
    .end local v1    # "holder":Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;

    .line 95
    .restart local v1    # "holder":Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const-string v7, "\u67e5\u770b"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-boolean v3, p0, Lcom/market2345/account/gift/GiftListAdapter;->mFooterDividersEnabled:Z

    if-nez v3, :cond_2

    .line 100
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->diver:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 125
    .restart local v0    # "gameGift":Lcom/market2345/account/model/GameGift;
    :cond_8
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_code:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_code:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u793c\u5305\u7801\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/market2345/account/model/GameGift;->userGiftCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const-string v7, "\u67e5\u770b"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 133
    :pswitch_0
    const-string v5, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    goto :goto_2

    :pswitch_1
    const-string v6, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v5

    goto/16 :goto_2

    :pswitch_2
    const-string v5, "3"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x2

    goto/16 :goto_2

    :pswitch_3
    const-string v5, "2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_2

    :pswitch_4
    const-string v5, "4"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v6

    goto/16 :goto_2

    .line 137
    :pswitch_5
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const-string v4, "\u62a2\u793c\u5305"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const v4, 0x7f02018b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 142
    :pswitch_6
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const-string v5, "\u5df2\u62a2\u5149"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const v5, 0x7f020191

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 148
    :pswitch_7
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    iget-object v3, v1, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->gift_get:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGift;

    .line 163
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    iget-object v1, v0, Lcom/market2345/account/model/GameGift;->userGiftCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftListAdapter;->forwardGiftDetail(Lcom/market2345/account/model/GameGift;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, v0, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v2, v0, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

    invoke-virtual {v1, v0}, Lcom/market2345/account/gift/GiftDelegate;->getGameGiftCode(Lcom/market2345/account/model/GameGift;)V

    goto :goto_0

    .line 169
    :pswitch_1
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_4
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_5
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    .line 177
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftListAdapter;->forwardGiftDetail(Lcom/market2345/account/model/GameGift;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public removeGiftList(Lcom/market2345/account/model/GameGift;)V
    .locals 2
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGiftHashMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "gameGift":Lcom/market2345/account/model/GameGift;
    check-cast p1, Lcom/market2345/account/model/GameGift;

    .line 231
    .restart local p1    # "gameGift":Lcom/market2345/account/model/GameGift;
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListAdapter;->mGameGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/market2345/account/gift/GiftListAdapter;->mFooterDividersEnabled:Z

    .line 242
    return-void
.end method

.method public setIconEnabled(Z)V
    .locals 0
    .param p1, "iconEnabled"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/market2345/account/gift/GiftListAdapter;->mIconEnabled:Z

    .line 246
    return-void
.end method

.method public setmLazyloadListener(Lcom/market2345/account/gift/LazyLoadListener;)V
    .locals 0
    .param p1, "mLazyLoadListener"    # Lcom/market2345/account/gift/LazyLoadListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/market2345/account/gift/GiftListAdapter;->mLazyLoadListener:Lcom/market2345/account/gift/LazyLoadListener;

    .line 205
    return-void
.end method
