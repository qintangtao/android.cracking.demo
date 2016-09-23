.class public Lcom/market2345/customview/NoScrollListView;
.super Landroid/widget/ListView;
.source "NoScrollListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 40
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-super {p0, p1, v10}, Landroid/widget/ListView;->onMeasure(II)V

    .line 42
    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 44
    .local v6, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v6, :cond_0

    .line 100
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v9, 0x0

    .line 51
    .local v9, "totalHeight":I
    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getFooterViewsCount()I

    move-result v2

    .line 52
    .local v2, "footCount":I
    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getHeaderViewsCount()I

    move-result v3

    .line 53
    .local v3, "headCount":I
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 54
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getChildCount()I

    move-result v1

    .line 55
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, "listItem":Landroid/view/View;
    if-lez v1, :cond_1

    .line 60
    if-lez v2, :cond_2

    sub-int v10, v0, v2

    if-lt v5, v10, :cond_2

    .line 63
    sub-int v10, v5, v0

    add-int/2addr v10, v1

    invoke-virtual {p0, v10}, Lcom/market2345/customview/NoScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 70
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 71
    .local v4, "height":I
    if-nez v7, :cond_4

    .line 73
    const/4 v10, 0x0

    invoke-interface {v6, v5, v10, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 76
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 87
    :goto_3
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listAdapter row "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "height:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/2addr v9, v4

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    .end local v4    # "height":I
    :cond_2
    sub-int v10, v1, v2

    if-lt v5, v10, :cond_3

    .line 66
    add-int v10, v5, v3

    add-int/2addr v10, v2

    invoke-virtual {p0, v10}, Lcom/market2345/customview/NoScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p0, v5}, Lcom/market2345/customview/NoScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_2

    .line 79
    .restart local v4    # "height":I
    :catch_0
    move-exception v8

    .line 81
    .local v8, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 85
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_3

    .line 93
    .end local v4    # "height":I
    .end local v7    # "listItem":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getDividerHeight()I

    move-result v10

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    add-int/2addr v10, v9

    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getPaddingTop()I

    move-result v11

    add-int v9, v10, v11

    .line 99
    invoke-virtual {p0}, Lcom/market2345/customview/NoScrollListView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0, v10, v9}, Lcom/market2345/customview/NoScrollListView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method
