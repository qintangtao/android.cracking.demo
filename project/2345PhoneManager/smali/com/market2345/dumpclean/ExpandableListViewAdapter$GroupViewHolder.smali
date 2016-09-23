.class final Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupViewHolder"
.end annotation


# instance fields
.field groupCb:Landroid/widget/ImageView;

.field groupImg:Landroid/widget/ImageView;

.field groupNameTV:Landroid/widget/TextView;

.field groupSizeTV:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSelect(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1067
    if-ne p1, v2, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 1069
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    if-nez p1, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 1073
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1074
    :cond_2
    if-ne p1, v4, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 1078
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1079
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1081
    :cond_4
    if-nez p1, :cond_5

    .line 1082
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1083
    :cond_5
    if-ne p1, v4, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
