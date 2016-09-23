.class public Lcom/market2345/slidemenu/ClassifyFragmentChild;
.super Lcom/market2345/ui/BaseFragment;
.source "ClassifyFragmentChild.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;
    }
.end annotation


# static fields
.field public static final TYPE_GAME:I = 0x1

.field public static final TYPE_SOFT:I = 0x2


# instance fields
.field private classifyType:I

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;"
        }
    .end annotation
.end field

.field firstLoad:Z

.field loadDelay:Z

.field private mAdapter:Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNoData:Landroid/view/View;

.field private mNoDataRetryButton:Landroid/widget/Button;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->classifyType:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->loadDelay:Z

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->firstLoad:Z

    return-void
.end method

.method private LoadData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 145
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 146
    .local v7, "str":Ljava/lang/String;
    const-string v9, "classifytime"

    invoke-interface {v6, v9, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "time":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 150
    .local v2, "intervalTime":J
    const-wide/32 v10, 0x5265c00

    cmp-long v9, v2, v10

    if-gez v9, :cond_0

    .line 152
    const-string v9, "classify"

    invoke-interface {v6, v9, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .end local v2    # "intervalTime":J
    :cond_0
    if-eqz v7, :cond_2

    .line 157
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 158
    .local v5, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 159
    .local v1, "jObj":Lcom/google/gson/JsonObject;
    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->fillLocalData(Ljava/lang/Object;)V

    .line 203
    .end local v1    # "jObj":Lcom/google/gson/JsonObject;
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 164
    .local v4, "localContext":Landroid/content/Context;
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {v0, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "httpBuilder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v9, "category_id"

    const-string v10, "9999"

    invoke-virtual {v0, v9, v10}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v9

    const-string v10, "http://zhushou.2345.com/index.php?c=ard&d=getHotTag"

    invoke-virtual {v9, v10}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v9

    const-class v10, Lcom/market2345/slidemenu/model/ClassifyDatas;

    invoke-virtual {v9, v10}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v9

    new-instance v10, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;

    invoke-direct {v10, p0, v4}, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;-><init>(Lcom/market2345/slidemenu/ClassifyFragmentChild;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v9

    invoke-interface {v9}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 200
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->firstLoad:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/ClassifyFragmentChild;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChild;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->fillLocalData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChild;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChild;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/slidemenu/ClassifyFragmentChild;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChild;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->LoadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChild;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoDataRetryButton:Landroid/widget/Button;

    return-object v0
.end method

.method private fillLocalData(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 140
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 119
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/google/gson/JsonObject;

    .end local p1    # "obj":Ljava/lang/Object;
    const-string v4, "list"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 120
    .local v3, "list":Lcom/google/gson/JsonObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 122
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 123
    .local v0, "array":Lcom/google/gson/JsonArray;
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "array":Lcom/google/gson/JsonArray;
    .end local v2    # "j":I
    :cond_2
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mAdapter:Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;

    if-nez v4, :cond_3

    .line 131
    new-instance v4, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;

    iget-object v5, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;-><init>(Lcom/market2345/slidemenu/ClassifyFragmentChild;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mAdapter:Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;

    .line 132
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mAdapter:Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    :goto_3
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->progress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mAdapter:Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;

    invoke-virtual {v4}, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    .line 92
    iget v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->classifyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyConstant;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;->fillGameClassifyData(Ljava/util/ArrayList;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->classifyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyConstant;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;->fillSoftClassifyData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    const v0, 0x7f09015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mListView:Landroid/widget/ListView;

    .line 106
    const v0, 0x7f09012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->progress:Landroid/widget/ProgressBar;

    .line 107
    const v0, 0x7f09012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoData:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoData:Landroid/view/View;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoDataRetryButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public static newInstance(I)Lcom/market2345/slidemenu/ClassifyFragmentChild;
    .locals 1
    .param p0, "classifyType"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/market2345/slidemenu/ClassifyFragmentChild;

    invoke-direct {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;-><init>()V

    .line 67
    .local v0, "frag":Lcom/market2345/slidemenu/ClassifyFragmentChild;
    iput p0, v0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->classifyType:I

    .line 68
    return-object v0
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->initData()V

    .line 76
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->loadDelay:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->LoadData()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->initView(Landroid/view/View;)V

    .line 86
    return-object v0
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 260
    return-void
.end method

.method public showSelf()V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->loadDelay:Z

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild;->firstLoad:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->LoadData()V

    goto :goto_0
.end method
