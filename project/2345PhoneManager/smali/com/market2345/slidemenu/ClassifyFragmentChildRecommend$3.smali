.class Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;
.super Ljava/lang/Object;
.source "ClassifyFragmentChildRecommend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->setLocalClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/market2345/slidemenu/model/ClassifyItemData;

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyItemData;

    .line 285
    .local v0, "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    invoke-virtual {v0}, Lcom/market2345/slidemenu/model/ClassifyItemData;->isHot()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    const v3, 0x7f090017

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 287
    .local v2, "position":I
    packed-switch v2, :pswitch_data_0

    .line 304
    :goto_0
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v5}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    iget-object v6, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    iget-object v6, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->startActivity(Landroid/content/Intent;)V

    .line 323
    .end local v2    # "position":I
    :goto_1
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    iget-object v3, v3, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

    if-nez v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    new-instance v4, Lcom/market2345/slidemenu/model/ClassifyConstant;

    iget-object v5, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v5}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyConstant;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    iget-object v3, v3, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->classConstant:Lcom/market2345/slidemenu/model/ClassifyConstant;

    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v4}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/market2345/slidemenu/model/ClassifyConstant;->sendStatisticEvent(Landroid/content/Context;Lcom/market2345/slidemenu/model/ClassifyItemData;)V

    .line 328
    .end local v0    # "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    :cond_1
    return-void

    .line 289
    .restart local v0    # "data":Lcom/market2345/slidemenu/model/ClassifyItemData;
    .restart local v2    # "position":I
    :pswitch_0
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Main_Fenlei_biaoqian1"

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Main_Fenlei_biaoqian2"

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Main_Fenlei_biaoqian3"

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Main_Fenlei_biaoqian4"

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v2    # "position":I
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/applist/activity/ClassifyListActivityNew;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "categoryid"

    iget-object v4, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->sid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v3, "classtype"

    invoke-virtual {v0}, Lcom/market2345/slidemenu/model/ClassifyItemData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v3, "categoryname"

    iget-object v4, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v4, "tags"

    iget-object v3, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->tag:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/market2345/slidemenu/model/ClassifyItemData;->tag:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$3;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-virtual {v3, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
