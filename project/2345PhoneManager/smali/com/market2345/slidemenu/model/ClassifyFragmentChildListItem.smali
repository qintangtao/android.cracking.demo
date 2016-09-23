.class public Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
.super Ljava/lang/Object;
.source "ClassifyFragmentChildListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;
    }
.end annotation


# instance fields
.field private cLickLis:Landroid/view/View$OnClickListener;

.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classType:Ljava/lang/String;

.field private gameColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

.field public id:Ljava/lang/String;

.field private leftDrawableId:I

.field private mContext:Landroid/content/Context;

.field private softColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "drawableId"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;-><init>(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u6d4f\u89c8\u5668"

    aput-object v2, v1, v4

    const-string v2, "\u804a\u5929"

    aput-object v2, v1, v5

    const-string v2, "\u793e\u4ea4"

    aput-object v2, v1, v6

    const-string v2, "\u89c6\u9891"

    aput-object v2, v1, v7

    const-string v2, "\u97f3\u4e50"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u65b0\u95fb\u8d44\u8baf"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5730\u56fe\u5bfc\u822a"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u9152\u5e97"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u5546\u57ce"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u56e2\u8d2d"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u7167\u7247\u7f8e\u5316"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u51cf\u80a5"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u5b66\u4e60"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u9a7e\u7167"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u80a1\u7968\u6295\u8d44"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u652f\u4ed8"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\u8bb2\u6545\u4e8b"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->softColorList:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u6d88\u9664"

    aput-object v2, v1, v4

    const-string v2, "\u4f11\u95f2"

    aput-object v2, v1, v5

    const-string v2, "\u7b56\u7565\u7f51\u6e38"

    aput-object v2, v1, v6

    const-string v2, "\u52a8\u4f5c"

    aput-object v2, v1, v7

    const-string v2, "\u8dd1\u9177"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u6597\u5730\u4e3b"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5854\u9632"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u98de\u673a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u5c04\u51fb"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9b54\u5e7b"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u8d5b\u8f66"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u7ecf\u8425"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->gameColorList:Ljava/util/List;

    .line 118
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;

    .line 121
    iput p4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->leftDrawableId:I

    .line 122
    iput-object p5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->classType:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->classType:Ljava/lang/String;

    return-object v0
.end method

.method private getChildString(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getChildStringColor(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "colorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "soft"

    iget-object v2, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->classType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->softColorList:Ljava/util/List;

    .line 210
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 214
    :goto_1
    return v1

    .line 207
    :cond_1
    const-string v1, "game"

    iget-object v2, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->classType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->gameColorList:Ljava/util/List;

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public fillView(Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 130
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;-><init>(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f09017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->imageTitle:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f09017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->title:Landroid/widget/TextView;

    .line 138
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f09017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->all:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f090064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text1:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f090065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text2:Landroid/widget/TextView;

    .line 141
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f090066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text3:Landroid/widget/TextView;

    .line 142
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f090067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text4:Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text5:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text6:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->all:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text5:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->cLickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->imageTitle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->leftDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text1:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text2:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text3:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text4:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text5:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text6:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text1:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildStringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text2:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildStringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text3:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildStringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text4:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildStringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text5:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildStringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->holder:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->text6:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildStringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    :cond_2
    return-object p1
.end method
