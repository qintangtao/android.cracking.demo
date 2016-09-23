.class Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownloadFragment.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/DownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_COUNT:I = 0x2

.field private static final TYPE_ITEM:I = 0x1

.field private static final TYPE_TITLE:I


# instance fields
.field private deleteAllDownloadedListener:Landroid/view/View$OnClickListener;

.field private deleteListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/content/Context;

.field mDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/market2345/slidemenu/DownloadFragment;


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/DownloadFragment;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 407
    new-instance v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->deleteListener:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->deleteAllDownloadedListener:Landroid/view/View$OnClickListener;

    .line 264
    iput-object p2, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mActivity:Landroid/content/Context;

    .line 265
    invoke-virtual {p1}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/slidemenu/DownloadFragment;->access$200(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/market2345/download/DownloadItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/slidemenu/DownloadFragment;->access$200(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/download/DownloadItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->getItem(I)Lcom/market2345/download/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 297
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->getItem(I)Lcom/market2345/download/DownloadItem;

    move-result-object v0

    instance-of v0, v0, Lcom/market2345/download/DownloadTitle;

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const v8, 0x7f09000b

    .line 305
    if-nez p2, :cond_1

    .line 306
    new-instance v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;)V

    .line 308
    .local v0, "holder":Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mActivity:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03004f

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 310
    const v4, 0x7f0900f7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_top_title:Landroid/widget/TextView;

    .line 311
    const v4, 0x7f09022d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_top_delete_all:Landroid/widget/TextView;

    .line 312
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_top_delete_all:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->deleteAllDownloadedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    :goto_1
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->getItem(I)Lcom/market2345/download/DownloadItem;

    move-result-object v2

    .line 338
    .local v2, "item":Lcom/market2345/download/DownloadItem;
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 340
    const/4 v3, 0x0

    .local v3, "title":Ljava/lang/String;
    move-object v4, v2

    .line 342
    check-cast v4, Lcom/market2345/download/DownloadTitle;

    iget v4, v4, Lcom/market2345/download/DownloadTitle;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 354
    :goto_2
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_top_title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    check-cast v2, Lcom/market2345/download/DownloadTitle;

    .end local v2    # "item":Lcom/market2345/download/DownloadItem;
    iget v4, v2, Lcom/market2345/download/DownloadTitle;->mType:I

    if-ne v4, v10, :cond_2

    .line 358
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_top_delete_all:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    .end local v3    # "title":Ljava/lang/String;
    :goto_3
    return-object p2

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mActivity:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03004e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 315
    const v4, 0x7f090222

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/download/DownloadStatusView2;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

    .line 316
    const v4, 0x7f090223

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_delete:Landroid/widget/ImageView;

    .line 317
    const v4, 0x7f090225

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 318
    const v4, 0x7f090226

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/download/RateView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    .line 319
    const v4, 0x7f090227

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/download/DownloadingLayout;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->ll_downloading:Lcom/market2345/customview/download/DownloadingLayout;

    .line 320
    const v4, 0x7f09009f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 321
    const v4, 0x7f090228

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/download/SizeView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    .line 322
    const v4, 0x7f090229

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/download/MyProgressImageView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    .line 323
    const v4, 0x7f09022a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/download/DownloadedLayout;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->ll_downloaded:Lcom/market2345/customview/download/DownloadedLayout;

    .line 324
    const v4, 0x7f09022b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->downloaded_app_name:Landroid/widget/TextView;

    .line 325
    const v4, 0x7f09022c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->downloaded_app_size:Landroid/widget/TextView;

    .line 327
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$100(Lcom/market2345/slidemenu/DownloadFragment;)Lcom/market2345/download/DownloadManager;

    move-result-object v4

    iget-object v5, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

    invoke-virtual {v4, v5}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 328
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

    const v5, 0x7f090012

    iget-object v6, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mActivity:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/market2345/customview/download/DownloadStatusView2;->setTag(ILjava/lang/Object;)V

    .line 329
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_delete:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->deleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 333
    .end local v0    # "holder":Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;
    goto/16 :goto_1

    .line 344
    .restart local v2    # "item":Lcom/market2345/download/DownloadItem;
    .restart local v3    # "title":Ljava/lang/String;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u4e2d("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getDownloadingSize()I
    invoke-static {v5}, Lcom/market2345/slidemenu/DownloadFragment;->access$300(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    goto/16 :goto_2

    .line 347
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b49\u5f85wifi\u4e0b\u8f7d("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getWaitWifiSize()I
    invoke-static {v5}, Lcom/market2345/slidemenu/DownloadFragment;->access$400(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    goto/16 :goto_2

    .line 350
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u5386\u53f2("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getCompletedCounts()I
    invoke-static {v5}, Lcom/market2345/slidemenu/DownloadFragment;->access$500(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 360
    .end local v2    # "item":Lcom/market2345/download/DownloadItem;
    :cond_2
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_top_delete_all:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .end local v3    # "title":Ljava/lang/String;
    .restart local v2    # "item":Lcom/market2345/download/DownloadItem;
    :cond_3
    move-object v1, v2

    .line 366
    check-cast v1, Lcom/market2345/download/DownloadInfo;

    .line 368
    .local v1, "info":Lcom/market2345/download/DownloadInfo;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mIconUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 370
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->downloaded_app_name:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->downloaded_app_size:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    invoke-static {v6, v7}, Lcom/market2345/common/util/Utils;->formatSizeToMB(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

    const v5, 0x7f090007

    invoke-virtual {v4, v5, v1}, Lcom/market2345/customview/download/DownloadStatusView2;->setTag(ILjava/lang/Object;)V

    .line 377
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/MyProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 378
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/DownloadStatusView2;->setTag(ILjava/lang/Object;)V

    .line 379
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 380
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->ll_downloading:Lcom/market2345/customview/download/DownloadingLayout;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/DownloadingLayout;->setTag(ILjava/lang/Object;)V

    .line 381
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/SizeView;->setTag(ILjava/lang/Object;)V

    .line 382
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/MyProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 383
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->ll_downloaded:Lcom/market2345/customview/download/DownloadedLayout;

    iget-object v5, v1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/market2345/customview/download/DownloadedLayout;->setTag(ILjava/lang/Object;)V

    .line 386
    const/4 v4, 0x7

    new-array v4, v4, [Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v5, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    aput-object v5, v4, v9

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

    aput-object v6, v4, v5

    iget-object v5, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    aput-object v5, v4, v10

    const/4 v5, 0x3

    iget-object v6, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->ll_downloading:Lcom/market2345/customview/download/DownloadingLayout;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->ll_downloaded:Lcom/market2345/customview/download/DownloadedLayout;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 395
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v4}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 397
    iget-object v4, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->tv_delete:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 400
    const v4, 0x7f090006

    invoke-virtual {p2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x2

    return v0
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 9
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 511
    instance-of v4, p2, Landroid/util/Pair;

    if-eqz v4, :cond_9

    move-object v3, p2

    .line 512
    check-cast v3, Landroid/util/Pair;

    .line 513
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "pref.show.del.dialog"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v7, v4, :cond_1

    .line 515
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v4}, Lcom/market2345/slidemenu/DownloadFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v5}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0c0012

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    .line 517
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f030039

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 518
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 519
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 600
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 522
    .restart local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    .line 523
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 524
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 528
    :cond_2
    const-string v4, "pref.download.status.change"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 530
    .local v1, "msg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 532
    .local v2, "operation":I
    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/slidemenu/DownloadFragment;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/market2345/base/log/L;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/market2345/download/DownloadInfo;

    .line 535
    .local v0, "info":Lcom/market2345/download/DownloadInfo;
    packed-switch v2, :pswitch_data_0

    .line 586
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$200(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 587
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    iget-object v5, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadItems:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/market2345/slidemenu/DownloadFragment;->access$200(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->initDownloadItems(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/DownloadFragment;->access$1000(Lcom/market2345/slidemenu/DownloadFragment;Ljava/util/ArrayList;)V

    .line 588
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 537
    :pswitch_0
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 538
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/market2345/download/DownloadTitle;

    invoke-direct {v5, v8}, Lcom/market2345/download/DownloadTitle;-><init>(I)V

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 540
    :cond_4
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 541
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getWaitWifiSize()I
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$400(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 543
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 548
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/market2345/download/DownloadTitle;

    invoke-direct {v5, v7}, Lcom/market2345/download/DownloadTitle;-><init>(I)V

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 550
    :cond_5
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 553
    :pswitch_2
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 554
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/market2345/download/DownloadTitle;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/market2345/download/DownloadTitle;-><init>(I)V

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 556
    :cond_6
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 557
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getDownloadingSize()I
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$300(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 559
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 563
    :pswitch_3
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 567
    :pswitch_4
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 568
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 571
    :pswitch_5
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 572
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getDownloadingSize()I
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$300(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 573
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadings:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$800(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 575
    :cond_7
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 576
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getWaitWifiSize()I
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$400(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 577
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mWaitWifiDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$900(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 579
    :cond_8
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getCompletedCounts()I
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$500(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 582
    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 591
    .end local v0    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "operation":I
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 592
    const-string v4, "pref.add.new.download"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 593
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 594
    :cond_a
    const-string v4, "pref.download.load.completed"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 595
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 596
    :cond_b
    const-string v4, "pref.installed.remove.file"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
