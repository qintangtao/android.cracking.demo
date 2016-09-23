.class public Lcom/market2345/filebrowser/FileCategoryActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileCategoryActivity$1;,
        Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;,
        Lcom/market2345/filebrowser/FileCategoryActivity$MyHandler;
    }
.end annotation


# instance fields
.field private CartegoryApk:Landroid/widget/LinearLayout;

.field private CartegoryDoc:Landroid/widget/LinearLayout;

.field private CartegoryMusic:Landroid/widget/LinearLayout;

.field private CartegoryPic:Landroid/widget/LinearLayout;

.field private CartegoryVideo:Landroid/widget/LinearLayout;

.field private CartegoryZip:Landroid/widget/LinearLayout;

.field private back:Landroid/widget/ImageView;

.field private categoryIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private categoryPage:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private hasPopShowed:Z

.field private mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

.field private mControl:Lcom/market2345/filebrowser/FileControl;

.field private mScannerReceiver:Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;

.field private noPage:Landroid/widget/LinearLayout;

.field private refresh:Z

.field private sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    .line 63
    iput-boolean v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->refresh:Z

    .line 65
    iput-boolean v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->hasPopShowed:Z

    .line 67
    new-instance v0, Lcom/market2345/filebrowser/FileCategoryActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileCategoryActivity$MyHandler;-><init>(Lcom/market2345/filebrowser/FileCategoryActivity;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->handler:Landroid/os/Handler;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileCategoryActivity;)Lcom/market2345/filebrowser/CategoryBar;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileCategoryActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/filebrowser/FileCategoryActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileCategoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->refresh:Z

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileCategoryActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->updateUI()V

    return-void
.end method

.method private static getCategoryCountId(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)I
    .locals 2
    .param p0, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 370
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryActivity$1;->$SwitchMap$com$market2345$filebrowser$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 386
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 373
    :pswitch_0
    const v0, 0x7f090145

    goto :goto_0

    .line 375
    :pswitch_1
    const v0, 0x7f090147

    goto :goto_0

    .line 377
    :pswitch_2
    const v0, 0x7f090149

    goto :goto_0

    .line 379
    :pswitch_3
    const v0, 0x7f09014b

    goto :goto_0

    .line 381
    :pswitch_4
    const v0, 0x7f09014d

    goto :goto_0

    .line 383
    :pswitch_5
    const v0, 0x7f09014f

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private registerScannerReceiver()V
    .locals 3

    .prologue
    .line 406
    new-instance v1, Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;-><init>(Lcom/market2345/filebrowser/FileCategoryActivity;Lcom/market2345/filebrowser/FileCategoryActivity$1;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mScannerReceiver:Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;

    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mScannerReceiver:Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    return-void
.end method

.method private setCategoryBarValue(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V
    .locals 2
    .param p1, "f"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "size"    # J

    .prologue
    .line 319
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    if-nez v0, :cond_0

    .line 321
    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/CategoryBar;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/market2345/filebrowser/CategoryBar;->setCategoryValue(IJ)Z

    .line 324
    return-void
.end method

.method private setCategoryCount(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V
    .locals 4
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "count"    # J

    .prologue
    .line 304
    invoke-static {p1}, Lcom/market2345/filebrowser/FileCategoryActivity;->getCategoryCountId(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)I

    move-result v0

    .line 305
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/market2345/filebrowser/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setCategorySize(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V
    .locals 4
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "size"    # J

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "txtId":I
    const/4 v0, 0x0

    .line 330
    .local v0, "resId":I
    sget-object v2, Lcom/market2345/filebrowser/FileCategoryActivity$1;->$SwitchMap$com$market2345$filebrowser$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 362
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_1
    return-void

    .line 333
    :pswitch_0
    const v1, 0x7f090154

    .line 334
    const v0, 0x7f0b001d

    .line 335
    goto :goto_0

    .line 337
    :pswitch_1
    const v1, 0x7f090155

    .line 338
    const v0, 0x7f0b0022

    .line 339
    goto :goto_0

    .line 341
    :pswitch_2
    const v1, 0x7f090153

    .line 342
    const v0, 0x7f0b0020

    .line 343
    goto :goto_0

    .line 345
    :pswitch_3
    const v1, 0x7f090156

    .line 346
    const v0, 0x7f0b001c

    .line 347
    goto :goto_0

    .line 349
    :pswitch_4
    const v1, 0x7f090158

    .line 350
    const v0, 0x7f0b0023

    .line 351
    goto :goto_0

    .line 353
    :pswitch_5
    const v1, 0x7f090157

    .line 354
    const v0, 0x7f0b001b

    .line 355
    goto :goto_0

    .line 357
    :pswitch_6
    const v1, 0x7f090159

    .line 358
    const v0, 0x7f0b001e

    goto :goto_0

    .line 365
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/market2345/filebrowser/FileBrowserUtil;->convertStorage(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    goto :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setTextView(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "t"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method private setupCategoryInfo()V
    .locals 5

    .prologue
    .line 227
    const v2, 0x7f090150

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/market2345/filebrowser/CategoryBar;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    .line 228
    const/4 v2, 0x7

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 231
    .local v1, "imgs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/market2345/filebrowser/CategoryBar;->addCategory(I)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/market2345/filebrowser/FileControl;->sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    sget-object v3, Lcom/market2345/filebrowser/FileControl;->sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mControl:Lcom/market2345/filebrowser/FileControl;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileControl;->scan()V

    .line 241
    return-void

    .line 228
    nop

    :array_0
    .array-data 4
        0x7f020070
        0x7f02006e
        0x7f020071
        0x7f02006c
        0x7f02006a
        0x7f020072
        0x7f02006f
    .end array-data
.end method

.method private updateUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 211
    invoke-static {}, Lcom/market2345/filebrowser/FileBrowserUtil;->isSDCardReady()Z

    move-result v0

    .line 212
    .local v0, "sdCardReady":Z
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->categoryPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->noPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->setupCategoryInfo()V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->categoryPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->noPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 155
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->finish()V

    goto :goto_0

    .line 158
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/filebrowser/FilePicDirActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/filebrowser/FileVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/filebrowser/FileApkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/filebrowser/FilePackageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x7f090144 -> :sswitch_1
        0x7f090146 -> :sswitch_2
        0x7f090148 -> :sswitch_3
        0x7f09014a -> :sswitch_4
        0x7f09014c -> :sswitch_5
        0x7f09014e -> :sswitch_6
        0x7f09026a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mControl:Lcom/market2345/filebrowser/FileControl;

    .line 102
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mControl:Lcom/market2345/filebrowser/FileControl;

    invoke-virtual {v0, p0}, Lcom/market2345/filebrowser/FileControl;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 104
    const v0, 0x7f09026b

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->title:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->back:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f090286

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->noPage:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->categoryPage:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryPic:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f090146

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryMusic:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryVideo:Landroid/widget/LinearLayout;

    .line 112
    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryDoc:Landroid/widget/LinearLayout;

    .line 113
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryApk:Landroid/widget/LinearLayout;

    .line 114
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryZip:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryPic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryMusic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryVideo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryDoc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryApk:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->CartegoryZip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->updateUI()V

    .line 125
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->registerScannerReceiver()V

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mScannerReceiver:Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->mControl:Lcom/market2345/filebrowser/FileControl;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileControl;->close()V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->refresh:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileCategoryActivity;->refreshCategoryInfo(I)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->refresh:Z

    .line 136
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onResume()V

    .line 137
    return-void
.end method

.method public refreshCategoryInfo(I)V
    .locals 30
    .param p1, "flag"    # I

    .prologue
    .line 245
    invoke-static {}, Lcom/market2345/filebrowser/FileBrowserUtil;->getSDCardInfo()Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lcom/market2345/filebrowser/CategoryBar;->setFullValue(J)V

    .line 249
    const v23, 0x7f090152

    const v24, 0x7f0b0133

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    .line 250
    const v23, 0x7f090151

    const v24, 0x7f0b0132

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->free:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    .line 254
    :cond_0
    const-wide/16 v18, 0x0

    .line 255
    .local v18, "size":J
    sget-object v4, Lcom/market2345/filebrowser/FileControl;->sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .local v4, "arr$":[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v10, v4, v12

    .line 257
    .local v10, "fc":Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->mControl:Lcom/market2345/filebrowser/FileControl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/filebrowser/FileControl;->getCategoryInfos()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .line 258
    .local v5, "categoryInfo":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    iget-wide v0, v5, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->count:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v10, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->setCategoryCount(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V

    .line 260
    sget-object v23, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    move-object/from16 v0, v23

    if-ne v10, v0, :cond_1

    .line 255
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iget-wide v0, v5, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v10, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->setCategorySize(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V

    .line 265
    iget-wide v0, v5, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v10, v1, v2}, Lcom/market2345/filebrowser/FileCategoryActivity;->setCategoryBarValue(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V

    .line 266
    iget-wide v0, v5, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    move-wide/from16 v24, v0

    add-long v18, v18, v24

    goto :goto_1

    .line 269
    .end local v5    # "categoryInfo":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    .end local v10    # "fc":Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->free:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    sub-long v14, v24, v18

    .line 272
    .local v14, "otherSize":J
    sget-object v23, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v14, v15}, Lcom/market2345/filebrowser/FileCategoryActivity;->setCategorySize(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V

    .line 273
    sget-object v23, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v14, v15}, Lcom/market2345/filebrowser/FileCategoryActivity;->setCategoryBarValue(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;J)V

    .line 275
    const/16 v23, 0x2

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->hasPopShowed:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->free:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->sdCardInfo:Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    div-float v7, v23, v24

    .line 277
    .local v7, "f":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/market2345/cacheclean/Util;->getLaseCleanDate(Landroid/content/Context;J)J

    move-result-wide v8

    .line 278
    .local v8, "dur":J
    const-wide/32 v24, 0x15180

    div-long v24, v8, v24

    move-wide/from16 v0, v24

    long-to-int v6, v0

    .line 279
    .local v6, "day":I
    float-to-double v0, v7

    move-wide/from16 v24, v0

    const-wide v26, 0x3fc999999999999aL    # 0.2

    cmpg-double v23, v24, v26

    if-gez v23, :cond_3

    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v6, v0, :cond_3

    .line 280
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/market2345/filebrowser/FileCategoryActivity;->hasPopShowed:Z

    .line 283
    const v23, 0x7f030068

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 284
    .local v17, "v":Landroid/view/View;
    new-instance v16, Landroid/widget/PopupWindow;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 285
    .local v16, "pop":Landroid/widget/PopupWindow;
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 286
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/filebrowser/FileCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020222

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 290
    .local v20, "w":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 291
    .local v11, "h":I
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->measure(II)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/filebrowser/CategoryBar;->getWidth()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v21, v23, v24

    .line 294
    .local v21, "xoff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/filebrowser/CategoryBar;->getHeight()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v22, v23, v24

    .line 296
    .local v22, "yoff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/filebrowser/FileCategoryActivity;->mCategoryBar:Lcom/market2345/filebrowser/CategoryBar;

    move-object/from16 v23, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 300
    .end local v6    # "day":I
    .end local v7    # "f":F
    .end local v8    # "dur":J
    .end local v11    # "h":I
    .end local v14    # "otherSize":J
    .end local v16    # "pop":Landroid/widget/PopupWindow;
    .end local v17    # "v":Landroid/view/View;
    .end local v20    # "w":I
    .end local v21    # "xoff":I
    .end local v22    # "yoff":I
    :cond_3
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 186
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 188
    iput v3, v0, Landroid/os/Message;->what:I

    .line 189
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    .end local p2    # "data":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    move-object v1, p2

    .line 191
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 193
    iput v4, v0, Landroid/os/Message;->what:I

    .line 194
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 196
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 198
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 199
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 201
    :cond_3
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 203
    iput v2, v0, Landroid/os/Message;->what:I

    .line 204
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
