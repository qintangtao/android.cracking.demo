.class Lcom/market2345/cacheclean/CleanVestigitalActivity$1;
.super Landroid/os/Handler;
.source "CleanVestigitalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanVestigitalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanVestigitalActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 84
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->updateAppList()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    .line 88
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->updateAppList()V

    goto :goto_0

    .line 90
    :cond_2
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 92
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->updateSystem()V

    goto :goto_0

    .line 95
    :cond_3
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_5

    .line 97
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->systemHeader:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$100(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadNum()I

    move-result v7

    if-nez v7, :cond_4

    .line 103
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$400(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "tip":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmptyTx:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$500(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$600(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    .end local v3    # "tip":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v8}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getTotalNum()I

    move-result v8

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v9}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v10

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v9}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->setTitleBarTx(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_5
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    .line 115
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xe

    if-ne v7, v8, :cond_0

    .line 117
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 119
    const-wide/16 v4, 0x0

    .line 120
    .local v4, "size":J
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 121
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 123
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getCacheSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_6
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->format:Ljava/lang/String;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$900(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "toast":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    const/16 v8, 0x5dc

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 132
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppSDCacheInfo;>;"
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_7

    if-eqz v1, :cond_7

    .line 136
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_7
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 141
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/CleanSDAppAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->notifyDataSetChanged()V

    .line 155
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v8}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getTotalNum()I

    move-result v8

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v9}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v10

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v9}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->setTitleBarTx(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_9
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->appHeader:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1100(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->listView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/ListView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$100(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_8

    .line 149
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$400(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "tip":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmptyTx:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$500(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$600(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
