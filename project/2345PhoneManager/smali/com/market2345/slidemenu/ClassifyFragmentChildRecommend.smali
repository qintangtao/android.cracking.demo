.class public Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;
.super Lcom/market2345/ui/BaseFragment;
.source "ClassifyFragmentChildRecommend.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final dataKey:Ljava/lang/String; = "recommandclassifydata"

.field private static final timeKey:Ljava/lang/String; = "recommandclassifytime"


# instance fields
.field private bodyLay:Landroid/widget/LinearLayout;

.field childClickListener:Landroid/view/View$OnClickListener;

.field classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

.field private gameIndex:I

.field private hasLocal:Z

.field private hotIndex:I

.field private isNeedChangeDataImmediately:Z

.field private loadingBar:Landroid/widget/ProgressBar;

.field private loadingLay:Landroid/widget/LinearLayout;

.field private localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

.field private mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

.field private mNoData:Landroid/view/View;

.field private mNoDataRetryButton:Landroid/widget/Button;

.field private scroll:Lcom/market2345/customview/ScrollListenAbleScrollView;

.field private showDelay:Z

.field private softIndex:I

.field private tag:Ljava/lang/String;

.field private typeGame:Ljava/lang/String;

.field private typeHot:Ljava/lang/String;

.field private typeSoft:Ljava/lang/String;

.field private typeTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->showDelay:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isNeedChangeDataImmediately:Z

    .line 77
    iput-boolean v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hasLocal:Z

    .line 197
    iput v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hotIndex:I

    .line 199
    iput v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->gameIndex:I

    .line 201
    iput v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->softIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;
    .param p1, "x1"    # Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->saveDatas(Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hasLocal:Z

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isNeedChangeDataImmediately:Z

    return v0
.end method

.method static synthetic access$302(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;
    .param p1, "x1"    # Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    return-object p1
.end method

.method static synthetic access$400(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initNeededBeforeFillData()V

    return-void
.end method

.method static synthetic access$500(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->bodyLay:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->fillDataToViews(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$700(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->showError()V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingShow(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadData()V

    return-void
.end method

.method private doLoad()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initHttp()V

    .line 186
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 187
    return-void
.end method

.method private fillDataToViews(Landroid/widget/LinearLayout;)V
    .locals 9
    .param p1, "lay"    # Landroid/widget/LinearLayout;

    .prologue
    const v8, 0x7f080004

    .line 339
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 340
    .local v0, "bodyCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 342
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    .line 344
    .local v5, "type":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 345
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1    # "childView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->fillDataToViews(Landroid/widget/LinearLayout;)V

    .line 340
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v5    # "type":Ljava/lang/String;
    .restart local v1    # "childView":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 350
    .restart local v5    # "type":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeHot:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v4, "newHotDatas":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/slidemenu/model/ClassifyItemData;>;"
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->hot:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->hot:Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->hot:Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->hot:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 359
    const v6, 0x7f090017

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->setLocalClickListener(Landroid/view/View;)V

    goto :goto_2

    .line 372
    .end local v4    # "newHotDatas":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/slidemenu/model/ClassifyItemData;>;"
    :cond_3
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeGame:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 374
    iget v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->gameIndex:I

    iget-object v7, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v7, v7, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v7, v7, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->game:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 376
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->game:Ljava/util/ArrayList;

    iget v7, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->gameIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/slidemenu/model/ClassifyItemData;

    .local v2, "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    move-object v6, v1

    .line 377
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0, v6, v7, v2}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->setChildTextDrawableAndText(Landroid/widget/TextView;ILcom/market2345/slidemenu/model/ClassifyItemData;)V

    .line 378
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 379
    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->setLocalClickListener(Landroid/view/View;)V

    .line 380
    iget v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->gameIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->gameIndex:I

    goto/16 :goto_2

    .line 383
    .end local v2    # "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    :cond_4
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeSoft:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    iget v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->softIndex:I

    iget-object v7, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v7, v7, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v7, v7, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->soft:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 387
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->soft:Ljava/util/ArrayList;

    iget v7, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->softIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/slidemenu/model/ClassifyItemData;

    .restart local v2    # "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    move-object v6, v1

    .line 388
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0, v6, v7, v2}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->setChildTextDrawableAndText(Landroid/widget/TextView;ILcom/market2345/slidemenu/model/ClassifyItemData;)V

    .line 389
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->setLocalClickListener(Landroid/view/View;)V

    .line 391
    iget v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->softIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->softIndex:I

    goto/16 :goto_2

    .line 396
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    .end local v5    # "type":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingShow(I)V

    .line 397
    return-void
.end method

.method private getFontHeight(F)I
    .locals 4
    .param p1, "fontSize"    # F

    .prologue
    .line 401
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 402
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 403
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 404
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method

.method private initHttp()V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v1, :cond_0

    .line 119
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomCate"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 121
    const-class v1, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 122
    new-instance v1, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;-><init>(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 153
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 155
    .end local v0    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    :cond_0
    return-void
.end method

.method private initLocalDatas()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isActivityNull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    :goto_0
    return v4

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 430
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "recommandclassifydata"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 433
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 434
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iput-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .line 437
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_1
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private initNeededBeforeFillData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeTitle:Ljava/lang/String;

    .line 266
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeHot:Ljava/lang/String;

    .line 267
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeGame:Ljava/lang/String;

    .line 268
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->typeSoft:Ljava/lang/String;

    .line 269
    iput v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hotIndex:I

    .line 270
    iput v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->gameIndex:I

    .line 271
    iput v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->softIndex:I

    .line 272
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getView()Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 208
    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingBar:Landroid/widget/ProgressBar;

    .line 209
    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mNoData:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mNoData:Landroid/view/View;

    const v2, 0x7f09012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mNoDataRetryButton:Landroid/widget/Button;

    .line 211
    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->bodyLay:Landroid/widget/LinearLayout;

    .line 212
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/ScrollListenAbleScrollView;

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->scroll:Lcom/market2345/customview/ScrollListenAbleScrollView;

    .line 213
    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingLay:Landroid/widget/LinearLayout;

    .line 214
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingShow(I)V

    .line 217
    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mNoDataRetryButton:Landroid/widget/Button;

    new-instance v2, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$2;

    invoke-direct {v2, p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$2;-><init>(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_0
    return-void
.end method

.method private isTimeLimited()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isActivityNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 422
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "recommandclassifytime"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadData()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initLocalDatas()Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hasLocal:Z

    .line 167
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hasLocal:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initNeededBeforeFillData()V

    .line 170
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->bodyLay:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->fillDataToViews(Landroid/widget/LinearLayout;)V

    .line 171
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->doLoad()V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->doLoad()V

    goto :goto_0
.end method

.method private loadingShow(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 245
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 251
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hasLocal:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->scroll:Lcom/market2345/customview/ScrollListenAbleScrollView;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/ScrollListenAbleScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method private saveDatas(Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)V
    .locals 6
    .param p1, "datas"    # Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .prologue
    .line 409
    iget-object v1, p1, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    iget v1, v1, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isActivityNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recommandclassifydata"

    iget-object v3, p1, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->dataString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recommandclassifytime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setChildTextDrawableAndText(Landroid/widget/TextView;ILcom/market2345/slidemenu/model/ClassifyItemData;)V
    .locals 4
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "drawablePadding"    # I
    .param p3, "itemdata"    # Lcom/market2345/slidemenu/model/ClassifyItemData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyConstant;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

    .line 452
    :cond_0
    iget-object v0, p3, Lcom/market2345/slidemenu/model/ClassifyItemData;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

    invoke-virtual {v0, p3}, Lcom/market2345/slidemenu/model/ClassifyConstant;->getChildDrawable(Lcom/market2345/slidemenu/model/ClassifyItemData;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 457
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 458
    invoke-virtual {p3}, Lcom/market2345/slidemenu/model/ClassifyItemData;->isHot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 470
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 471
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 472
    return-void

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setLocalClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->childClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;-><init>(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->childClickListener:Landroid/view/View$OnClickListener;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->childClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    return-void
.end method

.method private showError()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingShow(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initView()V

    .line 84
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->showSelf()V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v0, 0x7f030027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->tag:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public showSelf()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->TAG:Ljava/lang/String;

    const-string v1, "showSelf"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->showDelay:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadData()V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->showDelay:Z

    goto :goto_0
.end method
