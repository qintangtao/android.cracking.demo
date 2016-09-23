.class public Lcom/market2345/filebrowser/FileBigImageActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileBigImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

.field private currentPosition:I

.field private dlgConfirmDelete:Landroid/app/Dialog;

.field private dlgDeleteWaiting:Landroid/app/Dialog;

.field private foot:Landroid/view/View;

.field private head:Landroid/view/View;

.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private screenHeight:I

.field private screenWidth:I

.field private showFootAndHead:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

.field private tvPagePosition:Landroid/widget/TextView;

.field private tvPicDesc:Landroid/widget/TextView;

.field private tvPicName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 60
    iput v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenWidth:I

    .line 62
    iput v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->head:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->foot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/market2345/filebrowser/FileBigImageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$210(Lcom/market2345/filebrowser/FileBigImageActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/FileBigImageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity;->setNameAndPage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/filebrowser/FileBigImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->asyncDelete()V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/filebrowser/FileBigImageActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/market2345/filebrowser/FileBigImageActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/filebrowser/FileBigImageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/market2345/filebrowser/FileBigImageActivity;)Lcom/market2345/filebrowser/adapter/BigImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileBigImageActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    return-object v0
.end method

.method private asyncDelete()V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/market2345/filebrowser/FileBigImageActivity$6;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileBigImageActivity$6;-><init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V

    .line 310
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 311
    return-void
.end method

.method private getPagePosition(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPicDesc(I)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, -0x1

    .line 178
    iget-object v4, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v2, v4, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 179
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    :try_start_0
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 189
    iget-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v6, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v6, :cond_1

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    .line 191
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v4, "\u00d7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v4

    goto :goto_0

    .line 201
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method private getPicName(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v1, v2, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 169
    .local v1, "path":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 171
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private getScreenWH()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 360
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 361
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 362
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenWidth:I

    .line 363
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenHeight:I

    .line 364
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, "currentIndex":I
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/filebrowser/FileControl;->getAllPicDirNames()Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 141
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "curDirName":Ljava/lang/String;
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/filebrowser/FileControl;->getAllPicMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    .line 146
    .end local v0    # "curDirName":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    iget-object v4, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    .line 147
    iget-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    iget-object v4, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->showFootAndHead:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    invoke-virtual {v3, v4}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->setChangeListerer(Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;)V

    .line 148
    iget-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 149
    iget-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 151
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "position"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    .line 152
    iget-object v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 154
    iget v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/FileBigImageActivity;->setNameAndPage(I)V

    .line 155
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/market2345/filebrowser/FileBigImageActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileBigImageActivity$2;-><init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/market2345/filebrowser/FileBigImageActivity$3;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileBigImageActivity$3;-><init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 135
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f090271

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 76
    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->head:Landroid/view/View;

    .line 77
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->foot:Landroid/view/View;

    .line 79
    const v0, 0x7f090272

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->tvPagePosition:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->tvPicName:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f090274

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->tvPicDesc:Landroid/widget/TextView;

    .line 83
    new-instance v0, Lcom/market2345/filebrowser/FileBigImageActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileBigImageActivity$1;-><init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->showFootAndHead:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    .line 96
    return-void
.end method

.method private openFile(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v1, v0, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/market2345/filebrowser/FileBrowserUtil;->openFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private setNameAndPage(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->tvPagePosition:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity;->getPagePosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->tvPicName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity;->getPicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->tvPicDesc:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity;->getPicDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method private setWallPaper(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 339
    iget v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenWidth:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenHeight:I

    if-ne v2, v3, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->getScreenWH()V

    .line 343
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 344
    .local v1, "bfo":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 346
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 348
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 350
    iget v2, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenWidth:I

    iget v3, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->screenHeight:I

    invoke-static {v1, v2, v3}, Lcom/market2345/common/util/Utils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 351
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 353
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v5}, Lcom/market2345/filebrowser/FileBrowserUtil;->setWallPaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)I

    move-result v2

    return v2
.end method

.method private setWallPaper(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    .line 314
    iget-object v4, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v2, v4, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 315
    .local v2, "path":Ljava/lang/String;
    const/4 v3, -0x1

    .line 317
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Lcom/market2345/common/util/Utils;->getMiUiName()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "V6"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->setWallPaper(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 331
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne v3, v7, :cond_2

    .line 332
    const-string v4, "\u8bbe\u7f6e\u58c1\u7eb8\u6210\u529f"

    invoke-direct {p0, v4}, Lcom/market2345/filebrowser/FileBigImageActivity;->showToast(Ljava/lang/String;)V

    .line 336
    :goto_1
    return-void

    .line 321
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/market2345/filebrowser/FileBrowserUtil;->setWallPaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)I

    move-result v3

    .line 323
    if-eq v3, v7, :cond_0

    .line 324
    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileBigImageActivity;->setWallPaper(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 327
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v4, "\u8bbe\u7f6e\u58c1\u7eb8\u5931\u8d25"

    invoke-direct {p0, v4}, Lcom/market2345/filebrowser/FileBigImageActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x1

    .line 226
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0c0012

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;

    .line 227
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u8ba4\u8981\u5220\u9664\u9009\u4e2d\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9879?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/market2345/filebrowser/FileBigImageActivity$4;

    invoke-direct {v2, p0}, Lcom/market2345/filebrowser/FileBigImageActivity$4;-><init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 240
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/market2345/filebrowser/FileBigImageActivity$5;

    invoke-direct {v2, p0}, Lcom/market2345/filebrowser/FileBigImageActivity$5;-><init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 249
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 250
    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 251
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 209
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->finish()V

    goto :goto_0

    .line 212
    :sswitch_1
    iget v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->openFile(I)V

    goto :goto_0

    .line 215
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0

    .line 218
    :sswitch_3
    iget v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->setWallPaper(I)V

    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09026a -> :sswitch_0
        0x7f090275 -> :sswitch_1
        0x7f090276 -> :sswitch_2
        0x7f090277 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->initListener()V

    .line 71
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileBigImageActivity;->initData()V

    .line 72
    return-void
.end method
