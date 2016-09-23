.class public Lcom/market2345/feedback/FeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/feedback/FeedbackAdapter$1;,
        Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/FeedbackDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/FeedbackDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/FeedbackDetail;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mInfos:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/feedback/FeedbackAdapter;->mInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/feedback/FeedbackAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/market2345/model/FeedbackDetail;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/market2345/feedback/FeedbackAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/FeedbackDetail;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/market2345/feedback/FeedbackAdapter;->getItem(I)Lcom/market2345/model/FeedbackDetail;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 51
    if-nez p2, :cond_1

    .line 53
    new-instance v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;-><init>(Lcom/market2345/feedback/FeedbackAdapter;Lcom/market2345/feedback/FeedbackAdapter$1;)V

    iput-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    .line 54
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030059

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    const v1, 0x7f09025a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvUserFeedbackTime:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    const v1, 0x7f09025b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvUserName:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    const v1, 0x7f09025c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvUserFeedbackContent:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    const v1, 0x7f09025d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->rlReply:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    const v1, 0x7f09025e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvReplyTime:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    const v1, 0x7f090260

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvReplyContent:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/FeedbackDetail;

    .line 70
    .local v0, "info":Lcom/market2345/model/FeedbackDetail;
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvUserFeedbackTime:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/market2345/model/FeedbackDetail;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvUserName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/market2345/model/FeedbackDetail;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvUserFeedbackContent:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/market2345/model/FeedbackDetail;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->rlReply:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    iget-object v1, v0, Lcom/market2345/model/FeedbackDetail;->child:Lcom/market2345/model/FeedbackDetail;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->rlReply:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvReplyTime:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/market2345/model/FeedbackDetail;->child:Lcom/market2345/model/FeedbackDetail;

    iget-object v2, v2, Lcom/market2345/model/FeedbackDetail;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->tvReplyContent:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/market2345/model/FeedbackDetail;->child:Lcom/market2345/model/FeedbackDetail;

    iget-object v2, v2, Lcom/market2345/model/FeedbackDetail;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-object p2

    .line 65
    .end local v0    # "info":Lcom/market2345/model/FeedbackDetail;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    iput-object v1, p0, Lcom/market2345/feedback/FeedbackAdapter;->mHolder:Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;

    goto :goto_0
.end method
