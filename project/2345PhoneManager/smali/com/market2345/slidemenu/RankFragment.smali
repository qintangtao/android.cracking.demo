.class public Lcom/market2345/slidemenu/RankFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "RankFragment.java"


# instance fields
.field firstLoad:Z

.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

.field loadDelay:Z

.field private rankType:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private title1:Landroid/widget/TextView;

.field private title2:Landroid/widget/TextView;

.field private title3:Landroid/widget/TextView;

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u98d9\u5347\u699c"

    aput-object v1, v0, v3

    const-string v1, "\u4e0b\u8f7d\u699c"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "\u597d\u8bc4\u699c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/market2345/slidemenu/RankFragment;->titles:[Ljava/lang/String;

    .line 33
    iput-boolean v4, p0, Lcom/market2345/slidemenu/RankFragment;->firstLoad:Z

    .line 34
    iput-boolean v3, p0, Lcom/market2345/slidemenu/RankFragment;->loadDelay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/RankFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/RankFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/RankFragment;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/RankFragment;->change(I)V

    return-void
.end method

.method private change(I)V
    .locals 8
    .param p1, "titleId"    # I

    .prologue
    const v7, 0x7f070092

    const v6, 0x7f020274

    const/4 v5, 0x0

    const v4, 0x7f07006e

    .line 129
    sparse-switch p1, :sswitch_data_0

    .line 157
    :goto_0
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->containsFragment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 159
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 183
    :goto_1
    return-void

    .line 131
    :sswitch_0
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 139
    :sswitch_1
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_2
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, "sort":I
    sparse-switch p1, :sswitch_data_1

    .line 176
    :goto_2
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/market2345/applist/RankListFragment;->newInstance(Ljava/lang/String;I)Lcom/market2345/applist/RankListFragment;

    move-result-object v0

    .line 177
    .local v0, "listFragment":Lcom/market2345/applist/RankListFragment;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/market2345/applist/RankListFragment;->setSupportTag(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Lcom/market2345/applist/RankListFragment;->showSelf()V

    .line 179
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 180
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v2, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 181
    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    goto/16 :goto_1

    .line 165
    .end local v0    # "listFragment":Lcom/market2345/applist/RankListFragment;
    :sswitch_3
    const/4 v1, 0x2

    .line 166
    goto :goto_2

    .line 168
    :sswitch_4
    const/4 v1, 0x0

    .line 169
    goto :goto_2

    .line 171
    :sswitch_5
    const/4 v1, 0x1

    .line 172
    goto :goto_2

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x7f0902e5 -> :sswitch_0
        0x7f0902e9 -> :sswitch_1
        0x7f0902f3 -> :sswitch_2
    .end sparse-switch

    .line 163
    :sswitch_data_1
    .sparse-switch
        0x7f0902e5 -> :sswitch_3
        0x7f0902e9 -> :sswitch_4
        0x7f0902f3 -> :sswitch_5
    .end sparse-switch
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 84
    const v1, 0x7f0902e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->titles:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v1, 0x7f0902e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->titles:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f0902f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/slidemenu/RankFragment;->titles:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Lcom/market2345/slidemenu/RankFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/RankFragment$1;-><init>(Lcom/market2345/slidemenu/RankFragment;)V

    .line 123
    .local v0, "lis":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment;->title3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public static newRankInstance(Ljava/lang/String;)Lcom/market2345/slidemenu/RankFragment;
    .locals 1
    .param p0, "rankType"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lcom/market2345/slidemenu/RankFragment;

    invoke-direct {v0}, Lcom/market2345/slidemenu/RankFragment;-><init>()V

    .line 39
    .local v0, "frag":Lcom/market2345/slidemenu/RankFragment;
    iput-object p0, v0, Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;

    .line 40
    return-object v0
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090343

    invoke-direct {v0, v1, v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/market2345/slidemenu/RankFragment;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/market2345/slidemenu/RankFragment;->loadDelay:Z

    if-eqz v0, :cond_1

    .line 49
    const v0, 0x7f0902e5

    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/RankFragment;->change(I)V

    .line 51
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/RankFragment;->initView(Landroid/view/View;)V

    .line 58
    return-object v0
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/market2345/slidemenu/RankFragment;->tag:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public showSelf()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/slidemenu/RankFragment;->loadDelay:Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/slidemenu/RankFragment;->firstLoad:Z

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f0902e5

    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/RankFragment;->change(I)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/slidemenu/RankFragment;->firstLoad:Z

    goto :goto_0
.end method
