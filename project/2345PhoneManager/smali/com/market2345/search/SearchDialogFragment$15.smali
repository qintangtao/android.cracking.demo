.class Lcom/market2345/search/SearchDialogFragment$15;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/search/SearchDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    .line 1145
    .local v3, "item":Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v4}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/market2345/applist/activity/ClassifyListActivityNew;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1146
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "categoryid"

    iget-object v5, v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    iget-object v4, v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1148
    const-string v4, "classtype"

    const-string v5, "soft"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {v4}, Lcom/market2345/search/SearchDialogFragment;->access$2800(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1150
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {v4}, Lcom/market2345/search/SearchDialogFragment;->access$2800(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    move-result-object v4

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->soft:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyItemData;

    .line 1151
    .local v0, "c":Lcom/market2345/slidemenu/model/ClassifyItemData;
    iget-object v4, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1152
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # setter for: Lcom/market2345/search/SearchDialogFragment;->data:Lcom/market2345/slidemenu/model/ClassifyItemData;
    invoke-static {v4, v0}, Lcom/market2345/search/SearchDialogFragment;->access$2902(Lcom/market2345/search/SearchDialogFragment;Lcom/market2345/slidemenu/model/ClassifyItemData;)Lcom/market2345/slidemenu/model/ClassifyItemData;

    goto :goto_0

    .line 1156
    .end local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyItemData;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1157
    const-string v4, "classtype"

    const-string v5, "game"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {v4}, Lcom/market2345/search/SearchDialogFragment;->access$2800(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1159
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {v4}, Lcom/market2345/search/SearchDialogFragment;->access$2800(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    move-result-object v4

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->game:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyItemData;

    .line 1160
    .restart local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyItemData;
    iget-object v4, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1161
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # setter for: Lcom/market2345/search/SearchDialogFragment;->data:Lcom/market2345/slidemenu/model/ClassifyItemData;
    invoke-static {v4, v0}, Lcom/market2345/search/SearchDialogFragment;->access$2902(Lcom/market2345/search/SearchDialogFragment;Lcom/market2345/slidemenu/model/ClassifyItemData;)Lcom/market2345/slidemenu/model/ClassifyItemData;

    goto :goto_1

    .line 1166
    .end local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyItemData;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v4, "categoryname"

    iget-object v5, v3, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string v5, "tags"

    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->data:Lcom/market2345/slidemenu/model/ClassifyItemData;
    invoke-static {v4}, Lcom/market2345/search/SearchDialogFragment;->access$2900(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyItemData;

    move-result-object v4

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyItemData;->tag:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->data:Lcom/market2345/slidemenu/model/ClassifyItemData;
    invoke-static {v6}, Lcom/market2345/search/SearchDialogFragment;->access$2900(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyItemData;

    move-result-object v6

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyItemData;->tag:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$15;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v4, v2}, Lcom/market2345/search/SearchDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1169
    return-void
.end method
