.class Lcom/market2345/dumpclean/TrustAdapter$1;
.super Ljava/lang/Object;
.source "TrustAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/TrustAdapter;->getMoveOnClickListener(Lcom/market2345/dumpclean/TrustMode;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/TrustAdapter;

.field final synthetic val$mode:Lcom/market2345/dumpclean/TrustMode;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/TrustAdapter;Lcom/market2345/dumpclean/TrustMode;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->val$mode:Lcom/market2345/dumpclean/TrustMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 118
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->val$mode:Lcom/market2345/dumpclean/TrustMode;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/market2345/dumpclean/CleanTrustDBManager;

    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$100(Lcom/market2345/dumpclean/TrustAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/market2345/dumpclean/CleanTrustDBManager;-><init>(Landroid/content/Context;)V

    .line 120
    .local v3, "manager":Lcom/market2345/dumpclean/CleanTrustDBManager;
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->val$mode:Lcom/market2345/dumpclean/TrustMode;

    iget-object v4, v4, Lcom/market2345/dumpclean/TrustMode;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/market2345/dumpclean/CleanTrustDBManager;->delete(Ljava/lang/String;)V

    .line 121
    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->CACHE:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v5, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->val$mode:Lcom/market2345/dumpclean/TrustMode;

    iget-object v5, v5, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v4, v5, :cond_1

    .line 122
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/TrustMode;

    .line 123
    .local v2, "m":Lcom/market2345/dumpclean/TrustMode;
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$100(Lcom/market2345/dumpclean/TrustAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0015

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v4, v5, :cond_0

    .line 124
    iget v0, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    .line 125
    .local v0, "count":I
    if-ne v0, v6, :cond_6

    .line 126
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    .end local v0    # "count":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/market2345/dumpclean/TrustMode;
    :cond_1
    :goto_0
    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->REMAIN:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v5, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->val$mode:Lcom/market2345/dumpclean/TrustMode;

    iget-object v5, v5, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v4, v5, :cond_3

    .line 136
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/TrustMode;

    .line 137
    .restart local v2    # "m":Lcom/market2345/dumpclean/TrustMode;
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$100(Lcom/market2345/dumpclean/TrustAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b012e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v4, v5, :cond_2

    .line 138
    iget v0, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    .line 139
    .restart local v0    # "count":I
    if-ne v0, v6, :cond_7

    .line 140
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    .end local v0    # "count":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/market2345/dumpclean/TrustMode;
    :cond_3
    :goto_1
    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->APKFILE:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v5, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->val$mode:Lcom/market2345/dumpclean/TrustMode;

    iget-object v5, v5, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v4, v5, :cond_5

    .line 150
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/TrustMode;

    .line 151
    .restart local v2    # "m":Lcom/market2345/dumpclean/TrustMode;
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$100(Lcom/market2345/dumpclean/TrustAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    iget-object v5, v2, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v4, v5, :cond_4

    .line 152
    iget v0, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    .line 153
    .restart local v0    # "count":I
    if-ne v0, v6, :cond_8

    .line 154
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$000(Lcom/market2345/dumpclean/TrustAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    .end local v0    # "count":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/market2345/dumpclean/TrustMode;
    :cond_5
    :goto_2
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/market2345/MarketApplication;->setRefreshCleanActivity(Z)V

    .line 164
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    # getter for: Lcom/market2345/dumpclean/TrustAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/dumpclean/TrustAdapter;->access$100(Lcom/market2345/dumpclean/TrustAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b012b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 165
    iget-object v4, p0, Lcom/market2345/dumpclean/TrustAdapter$1;->this$0:Lcom/market2345/dumpclean/TrustAdapter;

    invoke-virtual {v4}, Lcom/market2345/dumpclean/TrustAdapter;->notifyDataSetChanged()V

    .line 167
    return-void

    .line 128
    .restart local v0    # "count":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "m":Lcom/market2345/dumpclean/TrustMode;
    :cond_6
    iget v4, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    goto/16 :goto_0

    .line 142
    :cond_7
    iget v4, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    goto :goto_1

    .line 156
    :cond_8
    iget v4, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/market2345/dumpclean/TrustMode;->count:I

    goto :goto_2
.end method
