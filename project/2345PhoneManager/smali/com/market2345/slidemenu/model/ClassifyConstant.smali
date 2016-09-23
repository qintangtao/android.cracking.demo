.class public Lcom/market2345/slidemenu/model/ClassifyConstant;
.super Ljava/lang/Object;
.source "ClassifyConstant.java"


# static fields
.field public static final TAG_GAME:Ljava/lang/String; = "game"

.field public static final TAG_SOFT:Ljava/lang/String; = "soft"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyConstant;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "drawableId"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v3, p0, Lcom/market2345/slidemenu/model/ClassifyConstant;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fillGameClassifyData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;>;"
    if-eqz p1, :cond_0

    .line 35
    const-string v0, "\u4f11\u95f2\u76ca\u667a"

    const-string v1, "2001"

    const v2, 0x7f02032f

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "\u7f51\u7edc\u6e38\u620f"

    const-string v1, "2002"

    const v2, 0x7f020317

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "\u52a8\u4f5c\u5192\u9669"

    const-string v1, "2003"

    const v2, 0x7f0200dc

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "\u68cb\u724c\u684c\u6e38"

    const-string v1, "2004"

    const v2, 0x7f020263

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "\u7b56\u7565\u5854\u9632"

    const-string v1, "2005"

    const v2, 0x7f02007d

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "\u5c04\u51fb\u98de\u884c"

    const-string v1, "2006"

    const v2, 0x7f0202e7

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "\u89d2\u8272\u626e\u6f14"

    const-string v1, "2007"

    const v2, 0x7f02019b

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "\u4f53\u80b2\u7ade\u901f"

    const-string v1, "2008"

    const v2, 0x7f0202fb

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "\u6a21\u62df\u7ecf\u8425"

    const-string v1, "2009"

    const v2, 0x7f02023a

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "\u8f85\u52a9\u5de5\u5177"

    const-string v1, "2010"

    const v2, 0x7f020133

    const-string v3, "game"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    return-void
.end method

.method public fillSoftClassifyData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;>;"
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "\u7cfb\u7edf\u5b89\u5168"

    const-string v1, "1001"

    const v2, 0x7f02032e

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "\u804a\u5929\u793e\u4ea4"

    const-string v1, "1002"

    const v2, 0x7f0201e2

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "\u5f71\u97f3\u89c6\u542c"

    const-string v1, "1003"

    const v2, 0x7f020330

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "\u65b0\u95fb\u9605\u8bfb"

    const-string v1, "1004"

    const v2, 0x7f02032c

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "\u751f\u6d3b\u4f11\u95f2"

    const-string v1, "1005"

    const v2, 0x7f0202e8

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "\u5730\u56fe\u51fa\u884c"

    const-string v1, "1006"

    const v2, 0x7f0200db

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v0, "\u8d2d\u7269\u4f18\u60e0"

    const-string v1, "1007"

    const v2, 0x7f020145

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v0, "\u62cd\u7167\u6444\u50cf"

    const-string v1, "1008"

    const v2, 0x7f020250

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v0, "\u5065\u5eb7\u533b\u7597"

    const-string v1, "1009"

    const v2, 0x7f020198

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "\u6559\u80b2\u5b66\u4e60"

    const-string v1, "1010"

    const v2, 0x7f020199

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "\u4e3b\u9898\u58c1\u7eb8"

    const-string v1, "1011"

    const v2, 0x7f020333

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "\u91d1\u878d\u7406\u8d22"

    const-string v1, "1012"

    const v2, 0x7f02019a

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "\u529e\u516c\u5546\u52a1"

    const-string v1, "1013"

    const v2, 0x7f02004d

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "\u513f\u7ae5\u4eb2\u5b50"

    const-string v1, "1014"

    const v2, 0x7f0200f3

    const-string v3, "soft"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->createItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public getChildDrawable(Lcom/market2345/slidemenu/model/ClassifyItemData;)Ljava/lang/Integer;
    .locals 3
    .param p1, "data"    # Lcom/market2345/slidemenu/model/ClassifyItemData;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "id":Ljava/lang/Integer;
    if-nez p1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 175
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/market2345/slidemenu/model/ClassifyItemData;->isHot()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    const-string v1, "az_xxcl"

    iget-object v2, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const v1, 0x7f02032d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 175
    goto :goto_0

    .line 84
    :cond_2
    const-string v1, "az_nsbb"

    iget-object v2, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const v1, 0x7f02024e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_3
    const-string v1, "az_bwyx"

    iget-object v2, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const v1, 0x7f020051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_4
    const-string v1, "az_2345"

    iget-object v2, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    const v1, 0x7f020331

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_5
    const-string v1, "az_lsbb"

    iget-object v2, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    const v1, 0x7f020240

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 92
    :cond_6
    const-string v1, "az_etzq"

    iget-object v2, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const v1, 0x7f0200f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_7
    iget-object v1, p1, Lcom/market2345/slidemenu/model/ClassifyItemData;->sid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 101
    :sswitch_0
    const v1, 0x7f02032e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    goto :goto_1

    .line 104
    :sswitch_1
    const v1, 0x7f0201e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 105
    goto :goto_1

    .line 107
    :sswitch_2
    const v1, 0x7f020330

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    goto :goto_1

    .line 110
    :sswitch_3
    const v1, 0x7f02032c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    goto/16 :goto_1

    .line 113
    :sswitch_4
    const v1, 0x7f0202e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    goto/16 :goto_1

    .line 116
    :sswitch_5
    const v1, 0x7f0200db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    goto/16 :goto_1

    .line 119
    :sswitch_6
    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 120
    goto/16 :goto_1

    .line 122
    :sswitch_7
    const v1, 0x7f020250

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    goto/16 :goto_1

    .line 125
    :sswitch_8
    const v1, 0x7f020198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    goto/16 :goto_1

    .line 128
    :sswitch_9
    const v1, 0x7f020199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    goto/16 :goto_1

    .line 131
    :sswitch_a
    const v1, 0x7f020333

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    goto/16 :goto_1

    .line 134
    :sswitch_b
    const v1, 0x7f02019a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    goto/16 :goto_1

    .line 137
    :sswitch_c
    const v1, 0x7f02004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 138
    goto/16 :goto_1

    .line 140
    :sswitch_d
    const v1, 0x7f0200f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    goto/16 :goto_1

    .line 143
    :sswitch_e
    const v1, 0x7f02032f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    goto/16 :goto_1

    .line 146
    :sswitch_f
    const v1, 0x7f020317

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    goto/16 :goto_1

    .line 149
    :sswitch_10
    const v1, 0x7f0200dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 150
    goto/16 :goto_1

    .line 152
    :sswitch_11
    const v1, 0x7f020263

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 153
    goto/16 :goto_1

    .line 155
    :sswitch_12
    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    goto/16 :goto_1

    .line 158
    :sswitch_13
    const v1, 0x7f0202e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 159
    goto/16 :goto_1

    .line 161
    :sswitch_14
    const v1, 0x7f02019b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 162
    goto/16 :goto_1

    .line 164
    :sswitch_15
    const v1, 0x7f0202fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    goto/16 :goto_1

    .line 167
    :sswitch_16
    const v1, 0x7f02023a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    goto/16 :goto_1

    .line 170
    :sswitch_17
    const v1, 0x7f020133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
        0x3f3 -> :sswitch_a
        0x3f4 -> :sswitch_b
        0x3f5 -> :sswitch_c
        0x3f6 -> :sswitch_d
        0x7d1 -> :sswitch_e
        0x7d2 -> :sswitch_f
        0x7d3 -> :sswitch_10
        0x7d4 -> :sswitch_11
        0x7d5 -> :sswitch_12
        0x7d6 -> :sswitch_13
        0x7d7 -> :sswitch_14
        0x7d8 -> :sswitch_15
        0x7d9 -> :sswitch_16
        0x7da -> :sswitch_17
    .end sparse-switch
.end method

.method public sendStatisticEvent(Landroid/content/Context;Lcom/market2345/slidemenu/model/ClassifyItemData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/market2345/slidemenu/model/ClassifyItemData;

    .prologue
    .line 179
    if-nez p2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v0, ""

    .line 184
    .local v0, "event":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/market2345/slidemenu/model/ClassifyItemData;->isHot()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    const-string v1, "az_xxcl"

    iget-object v2, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const-string v0, "HotClass_Fresh"

    .line 279
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-static {p1, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    const-string v1, "az_nsbb"

    iget-object v2, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    const-string v0, "HotClass_Girl"

    goto :goto_1

    .line 190
    :cond_4
    const-string v1, "az_bwyx"

    iget-object v2, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    const-string v0, "HotClass_Must"

    goto :goto_1

    .line 192
    :cond_5
    const-string v1, "az_2345"

    iget-object v2, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 193
    const-string v0, "HotClass_2345"

    goto :goto_1

    .line 194
    :cond_6
    const-string v1, "az_lsbb"

    iget-object v2, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 195
    const-string v0, "HotClass_Boy"

    goto :goto_1

    .line 196
    :cond_7
    const-string v1, "az_etzq"

    iget-object v2, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const-string v0, "HotClass_Kid"

    goto :goto_1

    .line 202
    :cond_8
    iget-object v1, p2, Lcom/market2345/slidemenu/model/ClassifyItemData;->sid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 205
    :sswitch_0
    const-string v0, "HotClass_Soft1"

    .line 206
    goto :goto_1

    .line 208
    :sswitch_1
    const-string v0, "HotClass_Soft2"

    .line 209
    goto :goto_1

    .line 211
    :sswitch_2
    const-string v0, "HotClass_Soft3"

    .line 212
    goto :goto_1

    .line 214
    :sswitch_3
    const-string v0, "HotClass_Soft4"

    .line 215
    goto :goto_1

    .line 217
    :sswitch_4
    const-string v0, "HotClass_Soft5"

    .line 218
    goto :goto_1

    .line 220
    :sswitch_5
    const-string v0, "HotClass_Soft6"

    .line 221
    goto :goto_1

    .line 223
    :sswitch_6
    const-string v0, "HotClass_Soft7"

    .line 224
    goto :goto_1

    .line 226
    :sswitch_7
    const-string v0, "HotClass_Soft8"

    .line 227
    goto :goto_1

    .line 229
    :sswitch_8
    const-string v0, "HotClass_Soft9"

    .line 230
    goto :goto_1

    .line 232
    :sswitch_9
    const-string v0, "HotClass_Soft10"

    .line 233
    goto :goto_1

    .line 235
    :sswitch_a
    const-string v0, "HotClass_Soft11"

    .line 236
    goto :goto_1

    .line 238
    :sswitch_b
    const-string v0, "HotClass_Soft12"

    .line 239
    goto :goto_1

    .line 241
    :sswitch_c
    const-string v0, "HotClass_Soft13"

    .line 242
    goto :goto_1

    .line 244
    :sswitch_d
    const-string v0, "HotClass_Soft14"

    .line 245
    goto :goto_1

    .line 247
    :sswitch_e
    const-string v0, "HotClass_Game1"

    .line 248
    goto/16 :goto_1

    .line 250
    :sswitch_f
    const-string v0, "HotClass_Game2"

    .line 251
    goto/16 :goto_1

    .line 253
    :sswitch_10
    const-string v0, "HotClass_Game3"

    .line 254
    goto/16 :goto_1

    .line 256
    :sswitch_11
    const-string v0, "HotClass_Game4"

    .line 257
    goto/16 :goto_1

    .line 259
    :sswitch_12
    const-string v0, "HotClass_Game5"

    .line 260
    goto/16 :goto_1

    .line 262
    :sswitch_13
    const-string v0, "HotClass_Game6"

    .line 263
    goto/16 :goto_1

    .line 265
    :sswitch_14
    const-string v0, "HotClass_Game7"

    .line 266
    goto/16 :goto_1

    .line 268
    :sswitch_15
    const-string v0, "HotClass_Game8"

    .line 269
    goto/16 :goto_1

    .line 271
    :sswitch_16
    const-string v0, "HotClass_Game9"

    .line 272
    goto/16 :goto_1

    .line 274
    :sswitch_17
    const-string v0, "HotClass_Game10"

    goto/16 :goto_1

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
        0x3f3 -> :sswitch_a
        0x3f4 -> :sswitch_b
        0x3f5 -> :sswitch_c
        0x3f6 -> :sswitch_d
        0x7d1 -> :sswitch_e
        0x7d2 -> :sswitch_f
        0x7d3 -> :sswitch_10
        0x7d4 -> :sswitch_11
        0x7d5 -> :sswitch_12
        0x7d6 -> :sswitch_13
        0x7d7 -> :sswitch_14
        0x7d8 -> :sswitch_15
        0x7d9 -> :sswitch_16
        0x7da -> :sswitch_17
    .end sparse-switch
.end method
