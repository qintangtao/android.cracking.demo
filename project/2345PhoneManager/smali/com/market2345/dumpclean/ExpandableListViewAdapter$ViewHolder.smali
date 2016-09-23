.class final Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field fl_junk_subscript:Landroid/widget/FrameLayout;

.field iv_child_checkBox:Landroid/widget/ImageView;

.field iv_child_icon:Landroid/widget/ImageView;

.field iv_junk_checkbox:Landroid/widget/ImageView;

.field iv_junk_icon:Landroid/widget/ImageView;

.field iv_junk_icon_small:Landroid/widget/ImageView;

.field ll_child_three:Landroid/widget/LinearLayout;

.field ll_junk_layout:Landroid/widget/LinearLayout;

.field tv_child_name:Landroid/widget/TextView;

.field tv_child_size:Landroid/widget/TextView;

.field tv_junk_name:Landroid/widget/TextView;

.field tv_junk_size:Landroid/widget/TextView;

.field tv_junk_tip:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1091
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

    .line 1101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1102
    if-ne p1, v2, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 1104
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    if-nez p1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 1108
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1109
    :cond_2
    if-ne p1, v4, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 1113
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1114
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1116
    :cond_4
    if-nez p1, :cond_5

    .line 1117
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1118
    :cond_5
    if-ne p1, v4, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
