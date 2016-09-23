.class Lcom/market2345/download/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 782
    const v9, 0x7f090007

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 783
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_15

    .line 784
    const-string v8, "\u4e0b\u8f7d"

    .line 785
    .local v8, "status":Ljava/lang/String;
    const v9, 0x7f090012

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 786
    .local v0, "activity":Landroid/app/Activity;
    instance-of v9, p1, Landroid/widget/TextView;

    if-eqz v9, :cond_e

    move-object v9, p1

    .line 787
    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 788
    const-string v9, "\u4e0b\u8f7d"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 789
    const v9, 0x7f090008

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 790
    iget-object v10, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    const v9, 0x7f090008

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    # setter for: Lcom/market2345/download/DownloadManager;->position:I
    invoke-static {v10, v9}, Lcom/market2345/download/DownloadManager;->access$502(Lcom/market2345/download/DownloadManager;I)I

    .line 792
    :cond_0
    const v9, 0x7f090026

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    const v9, 0x7f090025

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 793
    const/4 v1, 0x0

    .line 794
    .local v1, "appListDownLoadPosition":I
    const/high16 v9, 0x7f090000

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 795
    const/high16 v9, 0x7f090000

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    :cond_1
    const/16 v9, 0x32

    if-ge v1, v9, :cond_2

    .line 798
    add-int/lit8 v3, v1, 0x1

    .line 799
    .local v3, "clickPosition":I
    const-string v9, "soft"

    const v10, 0x7f090026

    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 800
    const v9, 0x7f090025

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 839
    .end local v1    # "appListDownLoadPosition":I
    .end local v3    # "clickPosition":I
    :cond_2
    :goto_0
    const v9, 0x7f09000a

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    const v9, 0x7f09000a

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 840
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->position:I
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$500(Lcom/market2345/download/DownloadManager;)I

    move-result v9

    add-int/lit8 v4, v9, 0x1

    .line 841
    .local v4, "clickPostion":I
    const/16 v9, 0x4b

    if-gt v4, v9, :cond_3

    .line 843
    const-string v9, "type_recommend"

    iget-object v10, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->typeTag:Ljava/lang/String;
    invoke-static {v10}, Lcom/market2345/download/DownloadManager;->access$600(Lcom/market2345/download/DownloadManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 845
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Main_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    .end local v4    # "clickPostion":I
    :cond_3
    :goto_1
    const v9, 0x7f090009

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 855
    .local v2, "clickListener":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 856
    instance-of v9, v2, Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;

    if-eqz v9, :cond_c

    .line 857
    const/4 v7, 0x0

    .line 858
    .local v7, "packageName":Ljava/lang/String;
    instance-of v9, v6, Lcom/market2345/model/App;

    if-eqz v9, :cond_b

    move-object v9, v6

    .line 859
    check-cast v9, Lcom/market2345/model/App;

    iget-object v7, v9, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 864
    :cond_4
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v9, v9, Lcom/market2345/download/DownloadManager;->clickList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 865
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v9, v9, Lcom/market2345/download/DownloadManager;->clickList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    check-cast v2, Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;

    .end local v2    # "clickListener":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;->resultClick()V

    .line 874
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_3
    const-string v10, "searchDialog"

    const v9, 0x7f090020

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 875
    const v9, 0x7f090001

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 877
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Search_Out_DownLoad"

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 931
    :cond_6
    :goto_4
    instance-of v9, v6, Lcom/market2345/model/App;

    if-eqz v9, :cond_14

    .line 932
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v9}, Lcom/market2345/download/DownloadManager;->getDownloadInfos()Ljava/util/Map;

    move-result-object v10

    move-object v9, v6

    check-cast v9, Lcom/market2345/model/App;

    iget-object v9, v9, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/download/DownloadInfo;

    .line 933
    .local v5, "info":Lcom/market2345/download/DownloadInfo;
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    check-cast v6, Lcom/market2345/model/App;

    .end local v6    # "obj":Ljava/lang/Object;
    # invokes: Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V
    invoke-static {v9, v5, v6, v8, v0}, Lcom/market2345/download/DownloadManager;->access$700(Lcom/market2345/download/DownloadManager;Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V

    .line 940
    .end local v5    # "info":Lcom/market2345/download/DownloadInfo;
    :cond_7
    :goto_5
    return-void

    .line 803
    .restart local v1    # "appListDownLoadPosition":I
    .restart local v3    # "clickPosition":I
    .restart local v6    # "obj":Ljava/lang/Object;
    :pswitch_0
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Soft_Biaoshengbang_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :pswitch_1
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Soft_Xiazaibang_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    :pswitch_2
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Soft_Pingfenbang_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :cond_8
    const-string v9, "game"

    const v10, 0x7f090026

    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 817
    const v9, 0x7f090025

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    .line 824
    :pswitch_3
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Game_Xiazaibang_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :pswitch_4
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Game_Biaoshengbang_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    :pswitch_5
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Game_Pingfenbang_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    .end local v1    # "appListDownLoadPosition":I
    .end local v3    # "clickPosition":I
    .restart local v4    # "clickPostion":I
    :cond_9
    const-string v9, "type_soft"

    iget-object v10, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->typeTag:Ljava/lang/String;
    invoke-static {v10}, Lcom/market2345/download/DownloadManager;->access$600(Lcom/market2345/download/DownloadManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 847
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Soft_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 848
    :cond_a
    const-string v9, "type_game"

    iget-object v10, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->typeTag:Ljava/lang/String;
    invoke-static {v10}, Lcom/market2345/download/DownloadManager;->access$600(Lcom/market2345/download/DownloadManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 849
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location_Game_Download_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 860
    .end local v4    # "clickPostion":I
    .restart local v2    # "clickListener":Ljava/lang/Object;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_b
    instance-of v9, v6, Lcom/market2345/download/DownloadInfo;

    if-eqz v9, :cond_4

    move-object v9, v6

    .line 861
    check-cast v9, Lcom/market2345/download/DownloadInfo;

    iget-object v7, v9, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 868
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_c
    instance-of v9, v2, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    if-eqz v9, :cond_5

    .line 869
    check-cast v2, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    .end local v2    # "clickListener":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;->clickCallBack()V

    goto/16 :goto_3

    .line 880
    :cond_d
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Search_In_DownLoad"

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 885
    :cond_e
    instance-of v9, p1, Lcom/market2345/customview/DetailDownloadProgressView;

    if-eqz v9, :cond_11

    move-object v9, p1

    .line 886
    check-cast v9, Lcom/market2345/customview/DetailDownloadProgressView;

    invoke-virtual {v9}, Lcom/market2345/customview/DetailDownloadProgressView;->getText()Ljava/lang/String;

    move-result-object v8

    .line 888
    const-string v9, "\u4e0b\u8f7d"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 889
    const v9, 0x7f090009

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 890
    .restart local v2    # "clickListener":Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 891
    instance-of v9, v2, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    if-eqz v9, :cond_f

    .line 892
    check-cast v2, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    .end local v2    # "clickListener":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;->clickCallBack()V

    .line 897
    :cond_f
    const-string v10, "searchDialog"

    const v9, 0x7f090020

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 898
    const v9, 0x7f090001

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 900
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Search_Out_DownLoad"

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 903
    :cond_10
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Search_In_DownLoad"

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 907
    :cond_11
    instance-of v9, p1, Lcom/market2345/customview/TopicDownloadProgressView;

    if-eqz v9, :cond_6

    move-object v9, p1

    .line 908
    check-cast v9, Lcom/market2345/customview/TopicDownloadProgressView;

    invoke-virtual {v9}, Lcom/market2345/customview/TopicDownloadProgressView;->getText()Ljava/lang/String;

    move-result-object v8

    .line 910
    const-string v9, "\u4e0b\u8f7d"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 911
    const v9, 0x7f090009

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 912
    .restart local v2    # "clickListener":Ljava/lang/Object;
    if-eqz v2, :cond_12

    .line 913
    instance-of v9, v2, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    if-eqz v9, :cond_12

    .line 914
    check-cast v2, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    .end local v2    # "clickListener":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;->clickCallBack()V

    .line 919
    :cond_12
    const-string v10, "searchDialog"

    const v9, 0x7f090020

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 920
    const v9, 0x7f090001

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 922
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Search_Out_DownLoad"

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 925
    :cond_13
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Search_In_DownLoad"

    invoke-static {v9, v10}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 934
    :cond_14
    instance-of v9, v6, Lcom/market2345/download/DownloadInfo;

    if-eqz v9, :cond_7

    .line 935
    iget-object v9, p0, Lcom/market2345/download/DownloadManager$2;->this$0:Lcom/market2345/download/DownloadManager;

    check-cast v6, Lcom/market2345/download/DownloadInfo;

    .end local v6    # "obj":Ljava/lang/Object;
    const/4 v10, 0x0

    # invokes: Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V
    invoke-static {v9, v6, v10, v8, v0}, Lcom/market2345/download/DownloadManager;->access$700(Lcom/market2345/download/DownloadManager;Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 938
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v8    # "status":Ljava/lang/String;
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_15
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "the view must setTag and use R.id.download_app as the key"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 817
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
