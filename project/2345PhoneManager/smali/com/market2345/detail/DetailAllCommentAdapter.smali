.class public Lcom/market2345/detail/DetailAllCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailAllCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/detail/DetailAllCommentAdapter$1;,
        Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;,
        Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubDetailFragment"


# instance fields
.field private flag:Ljava/lang/String;

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

.field private mLazyLoadListener:Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mComments":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/CommentDetailInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mComments:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->flag:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mComments:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/market2345/model/CommentDetailInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/CommentDetailInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/market2345/detail/DetailAllCommentAdapter;->getItem(I)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 71
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mLazyLoadListener:Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;

    if-eqz v6, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/market2345/detail/DetailAllCommentAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_0

    .line 73
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mLazyLoadListener:Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;

    invoke-interface {v6}, Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;->isLoadOver()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mLazyLoadListener:Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;

    invoke-interface {v6}, Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;->isEnd()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    const-string v6, "yiming"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lazyload@getView--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v6, "yiming"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lazyload@getView---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/market2345/detail/DetailAllCommentAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mLazyLoadListener:Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;

    invoke-interface {v6}, Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;->lazyload()V

    .line 81
    :cond_0
    if-nez p2, :cond_3

    .line 83
    new-instance v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    invoke-direct {v6, p0, v9}, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;-><init>(Lcom/market2345/detail/DetailAllCommentAdapter;Lcom/market2345/detail/DetailAllCommentAdapter$1;)V

    iput-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    .line 84
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f03003d

    invoke-static {v6, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    iget-object v7, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    const v6, 0x7f0901f8

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 86
    iget-object v7, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    const v6, 0x7f0901fb

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvCommentContent:Landroid/widget/TextView;

    .line 87
    iget-object v7, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    const v6, 0x7f0901f9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvCommentUser:Landroid/widget/TextView;

    .line 88
    iget-object v7, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    const v6, 0x7f0901fa

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v7, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->ivCommentType:Landroid/widget/ImageView;

    .line 89
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    const v7, 0x7f0901fc

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 90
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mComments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/model/CommentDetailInfo;

    .line 99
    .local v4, "info":Lcom/market2345/model/CommentDetailInfo;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "fmt":Ljava/text/DateFormat;
    iget-object v6, v4, Lcom/market2345/model/CommentDetailInfo;->date:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 101
    .local v0, "date":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v6}, Lcom/market2345/common/util/DateFormatUtils;->isToday(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "hour":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "min":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_1

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_2

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    :cond_2
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4eca\u5929 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "fmt":Ljava/text/DateFormat;
    .end local v3    # "hour":Ljava/lang/String;
    .end local v5    # "min":Ljava/lang/String;
    :goto_1
    iget-object v6, v4, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    if-eqz v6, :cond_5

    const-string v6, ""

    iget-object v7, v4, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 120
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvCommentUser:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    invoke-static {v7}, Lcom/market2345/util/AppsUtils;->getHandledMobileOrEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_2
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvCommentContent:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/market2345/model/CommentDetailInfo;->comment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget v6, v4, Lcom/market2345/model/CommentDetailInfo;->mark:I

    if-ne v6, v10, :cond_6

    .line 129
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->ivCommentType:Landroid/widget/ImageView;

    const v7, 0x7f02001b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_3
    invoke-virtual {p0}, Lcom/market2345/detail/DetailAllCommentAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_8

    invoke-virtual {p0}, Lcom/market2345/detail/DetailAllCommentAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_8

    const-string v6, "SubDetailFragment"

    iget-object v7, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->flag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 142
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->divider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_4
    return-object p2

    .line 94
    .end local v4    # "info":Lcom/market2345/model/CommentDetailInfo;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iput-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    goto/16 :goto_0

    .line 113
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v2    # "fmt":Ljava/text/DateFormat;
    .restart local v4    # "info":Lcom/market2345/model/CommentDetailInfo;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/market2345/model/CommentDetailInfo;->date:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 115
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "fmt":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_5
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->tvCommentUser:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/market2345/model/CommentDetailInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 131
    :cond_6
    iget v6, v4, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 134
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->ivCommentType:Landroid/widget/ImageView;

    const v7, 0x7f02001a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 139
    :cond_7
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->ivCommentType:Landroid/widget/ImageView;

    const v7, 0x7f02001c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 144
    :cond_8
    iget-object v6, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mHolder:Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public setLazyLoadListener(Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mLazyLoadListener:Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;

    .line 44
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "mComments":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/CommentDetailInfo;>;"
    iput-object p1, p0, Lcom/market2345/detail/DetailAllCommentAdapter;->mComments:Ljava/util/List;

    .line 48
    return-void
.end method
