.class Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;
.super Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;
.source "WebViewTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/WebViewTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/WebViewTopicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {p0}, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 826
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 720
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 715
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 821
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 12
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 724
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "showStatus"

    invoke-static {v7, v8}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    const-string v3, ""

    .line 726
    .local v3, "text":Ljava/lang/String;
    const/4 v4, 0x1

    .line 727
    .local v4, "tvEnable":Z
    if-nez p1, :cond_1

    .line 816
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 731
    :cond_1
    iget v7, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v7, :sswitch_data_0

    .line 806
    :goto_1
    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 807
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/market2345/topic/WebViewTopicActivity;->access$700(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/market2345/topic/WebViewTopicActivity;->access$700(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 808
    iget-object v7, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/market2345/topic/WebViewTopicActivity;->access$700(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 809
    .local v0, "bid":Ljava/lang/String;
    new-instance v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;

    iget-object v7, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {v2, v7}, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    .line 810
    .local v2, "status":Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;
    iput-object v0, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->btnId:Ljava/lang/String;

    .line 811
    iget-object v7, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->STATUS2CODE:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/market2345/topic/WebViewTopicActivity;->access$1300(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intStatus:I

    .line 812
    if-eqz v4, :cond_9

    const/4 v7, 0x1

    :goto_2
    iput v7, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->isEnabled:I

    .line 813
    const/4 v7, -0x1

    iput v7, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intPercents:I

    .line 814
    iget-object v7, p0, Lcom/market2345/topic/WebViewTopicActivity$ProgressCallback;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    iget-object v8, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->btnId:Ljava/lang/String;

    iget v9, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intStatus:I

    iget v10, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->isEnabled:I

    iget v11, v2, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intPercents:I

    # invokes: Lcom/market2345/topic/WebViewTopicActivity;->callbackButtonInitStatus(Ljava/lang/String;III)V
    invoke-static {v7, v8, v9, v10, v11}, Lcom/market2345/topic/WebViewTopicActivity;->access$900(Lcom/market2345/topic/WebViewTopicActivity;Ljava/lang/String;III)V

    goto :goto_0

    .line 734
    .end local v0    # "bid":Ljava/lang/String;
    .end local v2    # "status":Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;
    .end local v6    # "url":Ljava/lang/String;
    :sswitch_1
    const-string v3, "\u7b49\u5f85\u4e2d"

    .line 735
    goto :goto_1

    .line 738
    :sswitch_2
    const-string v3, "\u6682\u505c"

    .line 739
    goto :goto_1

    .line 741
    :sswitch_3
    const-string v3, "\u76f4\u63a5\u4e0b\u8f7d"

    .line 742
    goto :goto_1

    .line 744
    :sswitch_4
    const-string v3, "\u7ee7\u7eed"

    .line 745
    goto :goto_1

    .line 747
    :sswitch_5
    const-string v3, "\u91cd\u8bd5"

    .line 748
    goto :goto_1

    .line 750
    :sswitch_6
    const-string v3, "\u68c0\u6d4b\u4e2d"

    .line 751
    const/4 v4, 0x0

    .line 752
    goto :goto_1

    .line 754
    :sswitch_7
    const-string v3, "\u5b89\u88c5\u4e2d"

    .line 755
    const/4 v4, 0x0

    .line 756
    goto :goto_1

    .line 758
    :sswitch_8
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v7

    iget-object v8, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateApp(Ljava/lang/String;)Lcom/market2345/model/App;

    move-result-object v5

    .line 760
    .local v5, "updateApp":Lcom/market2345/model/App;
    if-eqz v5, :cond_2

    iget v7, v5, Lcom/market2345/model/App;->versionCode:I

    iget v8, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    if-le v7, v8, :cond_2

    .line 761
    const-string v3, "\u5347\u7ea7"

    goto/16 :goto_1

    .line 763
    :cond_2
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v7

    iget-object v8, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v1

    .line 764
    .local v1, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v1, :cond_4

    .line 765
    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/io/File;

    iget-object v8, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 766
    const-string v3, "\u5b89\u88c5"

    goto/16 :goto_1

    .line 768
    :cond_3
    const-string v3, "\u4e0b\u8f7d"

    goto/16 :goto_1

    .line 773
    :cond_4
    iget v7, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iget v8, v1, Lcom/market2345/model/InstalledApp;->versionCode:I

    if-le v7, v8, :cond_6

    .line 774
    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/io/File;

    iget-object v8, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 775
    const-string v3, "\u5b89\u88c5"

    goto/16 :goto_1

    .line 778
    :cond_5
    const-string v3, "\u5347\u7ea7"

    goto/16 :goto_1

    .line 783
    :cond_6
    const-string v3, "\u6253\u5f00"

    goto/16 :goto_1

    .line 790
    .end local v1    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v5    # "updateApp":Lcom/market2345/model/App;
    :sswitch_9
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v7

    iget-object v8, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 791
    const-string v3, "\u5347\u7ea7"

    goto/16 :goto_1

    .line 793
    :cond_7
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v7

    iget-object v8, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v1

    .line 794
    .restart local v1    # "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v1, :cond_8

    .line 795
    const-string v3, "\u4e0b\u8f7d"

    goto/16 :goto_1

    .line 797
    :cond_8
    const-string v3, "\u6253\u5f00"

    goto/16 :goto_1

    .line 812
    .end local v1    # "installedApp":Lcom/market2345/model/InstalledApp;
    .restart local v0    # "bid":Ljava/lang/String;
    .restart local v2    # "status":Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_5
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_2
        0xc8 -> :sswitch_8
        0x1ea -> :sswitch_0
        0x258 -> :sswitch_6
        0x259 -> :sswitch_7
        0x25a -> :sswitch_9
    .end sparse-switch
.end method
