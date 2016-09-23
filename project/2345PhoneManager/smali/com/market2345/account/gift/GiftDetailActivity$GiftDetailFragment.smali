.class public Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;
.super Lcom/market2345/account/gift/GiftGetFragment;
.source "GiftDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/gift/GiftDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftDetailFragment"
.end annotation


# instance fields
.field private mApp:Lcom/market2345/model/App;

.field private mCodeContainer:Landroid/widget/LinearLayout;

.field private mCodeCopy:Landroid/widget/TextView;

.field private mContent:Landroid/view/View;

.field private mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mGiftCodeView:Landroid/widget/TextView;

.field private mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

.field private mGiftGet:Landroid/widget/TextView;

.field private mGiftId:Ljava/lang/String;

.field private mGiftStatus:Landroid/widget/ImageView;

.field private mSoftId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftGetFragment;-><init>()V

    return-void
.end method

.method private convert2App(Lcom/market2345/account/model/GiftDetailInfo;)Lcom/market2345/model/App;
    .locals 2
    .param p1, "giftDetail"    # Lcom/market2345/account/model/GiftDetailInfo;

    .prologue
    .line 244
    new-instance v0, Lcom/market2345/model/App;

    invoke-direct {v0}, Lcom/market2345/model/App;-><init>()V

    .line 245
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mSoftId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market2345/model/App;->sid:I

    .line 246
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->sName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 247
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 248
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    .line 249
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->softlogo:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    .line 250
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 251
    iget v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->versionCode:I

    iput v1, v0, Lcom/market2345/model/App;->versionCode:I

    .line 252
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->certMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    .line 253
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->fileLentgh:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    .line 254
    iget v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->minSDK:I

    iput v1, v0, Lcom/market2345/model/App;->minSDK:I

    .line 255
    return-object v0
.end method

.method private convert2GameGift(Lcom/market2345/account/model/GiftDetailInfo;)Lcom/market2345/account/model/GameGift;
    .locals 2
    .param p1, "giftDetailInfo"    # Lcom/market2345/account/model/GiftDetailInfo;

    .prologue
    .line 233
    new-instance v0, Lcom/market2345/account/model/GameGift;

    invoke-direct {v0}, Lcom/market2345/account/model/GameGift;-><init>()V

    .line 234
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->endDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->endDate:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftId:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mSoftId:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->softId:Ljava/lang/String;

    .line 237
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->content:Ljava/lang/String;

    .line 238
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->softlogo:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->softLogo:Ljava/lang/String;

    .line 239
    iget-object v1, p1, Lcom/market2345/account/model/GiftDetailInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->name:Ljava/lang/String;

    .line 240
    return-object v0
.end method

.method private initAppstate(Lcom/market2345/model/App;)V
    .locals 7
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    const v3, 0x7f07005a

    const v4, 0x7f020186

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 283
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v2, p1, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v6

    .line 284
    .local v6, "info":Lcom/market2345/download/DownloadInfo;
    if-eqz v6, :cond_0

    .line 285
    new-array v0, v1, [Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    aput-object v1, v0, v5

    invoke-virtual {v6, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 286
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 298
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v2, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    const-string v2, "\u5347\u7ea7"

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v2, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    const-string v2, "\u6253\u5f00"

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    const v3, 0x7f07001e

    const v4, 0x7f0200e0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0
.end method

.method private showGift(Lcom/market2345/account/model/GiftDetailInfo;)V
    .locals 10
    .param p1, "giftDetail"    # Lcom/market2345/account/model/GiftDetailInfo;

    .prologue
    const/4 v9, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->hideLoadView()V

    .line 153
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    if-nez v6, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09005e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    .line 155
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f090218

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftCodeView:Landroid/widget/TextView;

    .line 156
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f09028e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mCodeContainer:Landroid/widget/LinearLayout;

    .line 157
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f090290

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mCodeCopy:Landroid/widget/TextView;

    .line 158
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f09028b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftStatus:Landroid/widget/ImageView;

    .line 159
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f09028a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftGet:Landroid/widget/TextView;

    .line 160
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f09010e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/market2345/customview/GiftDetailDownloadProgressView;

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    .line 162
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f090292

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    .local v1, "description":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f090291

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 164
    .local v5, "usage":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f0901d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 165
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f09028c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 166
    .local v2, "giftName":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mContent:Landroid/view/View;

    const v7, 0x7f09028d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 168
    .local v3, "giftOverTime":Landroid/widget/TextView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v7, v7, Lcom/market2345/account/model/GiftDetailInfo;->softlogo:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 169
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v6, v6, Lcom/market2345/account/model/GiftDetailInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v6, v6, Lcom/market2345/account/model/GiftDetailInfo;->tip:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v6, v6, Lcom/market2345/account/model/GiftDetailInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8fc7\u671f\u65f6\u95f4\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v7, v7, Lcom/market2345/account/model/GiftDetailInfo;->endDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->convert2App(Lcom/market2345/account/model/GiftDetailInfo;)Lcom/market2345/model/App;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    .line 177
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    const v7, 0x7f090007

    iget-object v8, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    invoke-virtual {v6, v7, v8}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 178
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    const v7, 0x7f090012

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 179
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    const v7, 0x7f09000b

    iget-object v8, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    iget-object v8, v8, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/market2345/customview/GiftDetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 180
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v7, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownButton:Lcom/market2345/customview/GiftDetailDownloadProgressView;

    invoke-virtual {v6, v7}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 181
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    invoke-direct {p0, v6}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->initAppstate(Lcom/market2345/model/App;)V

    .line 185
    .end local v1    # "description":Landroid/widget/TextView;
    .end local v2    # "giftName":Landroid/widget/TextView;
    .end local v3    # "giftOverTime":Landroid/widget/TextView;
    .end local v4    # "icon":Landroid/widget/ImageView;
    .end local v5    # "usage":Landroid/widget/TextView;
    :cond_0
    iget-object v0, p1, Lcom/market2345/account/model/GiftDetailInfo;->userGiftCode:Ljava/lang/String;

    .line 187
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/account/gift/GiftDelegate;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 189
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mCodeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftCodeView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v7, v7, Lcom/market2345/account/model/GiftDetailInfo;->userGiftCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mCodeCopy:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftStatus:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftGet:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftStatus:Landroid/widget/ImageView;

    const v7, 0x7f020141

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftStatus:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftGet:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    invoke-direct {p0, v6, v7, v8}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->showGiftStatus(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/market2345/account/model/GiftDetailInfo;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v6, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftStatus:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftGet:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    invoke-direct {p0, v6, v7, v8}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->showGiftStatus(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/market2345/account/model/GiftDetailInfo;)V

    goto :goto_0
.end method

.method private showGiftStatus(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/market2345/account/model/GiftDetailInfo;)V
    .locals 4
    .param p1, "giftStatus"    # Landroid/widget/ImageView;
    .param p2, "giftGet"    # Landroid/widget/TextView;
    .param p3, "giftDetailInfo"    # Lcom/market2345/account/model/GiftDetailInfo;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 204
    const/4 v0, 0x2

    iget v1, p3, Lcom/market2345/account/model/GiftDetailInfo;->status:I

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    const v0, 0x7f020140

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected loadData(Z)V
    .locals 3
    .param p1, "reload"    # Z

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mSoftId:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/account/gift/GiftDelegate;->getGiftDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/market2345/account/gift/GiftGetFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 220
    :sswitch_0
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftCodeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/common/util/ApplicationUtils;->copy(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b005a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/account/model/GiftDetailInfo;

    .line 225
    .local v1, "giftDetailInfo":Lcom/market2345/account/model/GiftDetailInfo;
    invoke-direct {p0, v1}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->convert2GameGift(Lcom/market2345/account/model/GiftDetailInfo;)Lcom/market2345/account/model/GameGift;

    move-result-object v0

    .line 226
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/market2345/account/gift/GiftDelegate;->getGameGiftCode(Lcom/market2345/account/model/GameGift;)V

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09028a -> :sswitch_1
        0x7f090290 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 90
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key.gift.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftId:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key.soft.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mSoftId:Ljava/lang/String;

    .line 92
    const v0, 0x7f03006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/market2345/account/gift/GiftGetFragment;->onDestroyView()V

    .line 104
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 105
    return-void
.end method

.method protected onLegacyEvent(Lcom/market2345/account/gift/event/HttpFailureEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpFailureEvent;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p1, Lcom/market2345/account/gift/event/HttpFailureEvent;->mUrl:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 121
    :pswitch_0
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->showRetry()V

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x1c5efd56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLegacyEvent(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpSuccessEvent;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mUrl:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 116
    :cond_1
    :goto_1
    return-void

    .line 110
    :pswitch_0
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/market2345/account/model/GiftDetailInfo;

    iput-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->showGift(Lcom/market2345/account/model/GiftDetailInfo;)V

    goto :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x1c5efd56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected setUpGiftStatus(Lcom/market2345/account/model/GameGift;Lcom/market2345/account/model/GiftCode;)V
    .locals 2
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;
    .param p2, "giftCode"    # Lcom/market2345/account/model/GiftCode;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftId:Ljava/lang/String;

    iget-object v1, p1, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v0, p2, Lcom/market2345/account/model/GiftCode;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->showGift(Lcom/market2345/account/model/GiftDetailInfo;)V

    .line 144
    :cond_0
    return-void

    .line 135
    :sswitch_0
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    iget-object v1, p2, Lcom/market2345/account/model/GiftCode;->gift:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GiftDetailInfo;->userGiftCode:Ljava/lang/String;

    goto :goto_0

    .line 138
    :sswitch_1
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mGiftDetail:Lcom/market2345/account/model/GiftDetailInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/market2345/account/model/GiftDetailInfo;->status:I

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 263
    check-cast v0, Landroid/util/Pair;

    .line 264
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.app.install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    invoke-direct {p0, v1}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->initAppstate(Lcom/market2345/model/App;)V

    .line 275
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    invoke-direct {p0, v1}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->initAppstate(Lcom/market2345/model/App;)V

    goto :goto_0

    .line 269
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->mApp:Lcom/market2345/model/App;

    invoke-direct {p0, v1}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->initAppstate(Lcom/market2345/model/App;)V

    goto :goto_0
.end method
