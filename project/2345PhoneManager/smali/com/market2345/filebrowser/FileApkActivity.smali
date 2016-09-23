.class public Lcom/market2345/filebrowser/FileApkActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileApkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileApkActivity$MyHandler;
    }
.end annotation


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

.field private bottom:Landroid/view/View;

.field private btnBottomDelete:Landroid/widget/TextView;

.field private cbTopSelectAll:Landroid/widget/CheckBox;

.field private deleteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dialogDelete:Landroid/app/Dialog;

.field private dlgDeleteWaiting:Landroid/app/Dialog;

.field private handler:Landroid/os/Handler;

.field private ivTopDelete:Landroid/widget/ImageView;

.field private ivTopLoading:Landroid/widget/ImageView;

.field private loading:Landroid/view/View;

.field private lvList:Landroid/widget/ListView;

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

.field private noData:Landroid/view/View;

.field private tvTopTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/market2345/filebrowser/FileApkActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileApkActivity$MyHandler;-><init>(Lcom/market2345/filebrowser/FileApkActivity;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->handler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileApkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/market2345/filebrowser/FileApkActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/market2345/filebrowser/FileApkActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/market2345/filebrowser/FileApkActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileApkActivity;->changeEditMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileApkActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/FileApkActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/filebrowser/FileApkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->changeTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/filebrowser/FileApkActivity;)Lcom/market2345/filebrowser/adapter/ApkAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->bottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->dialogDelete:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/filebrowser/FileApkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileApkActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->asyncDelete()V

    return-void
.end method

.method private asyncDelete()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/market2345/filebrowser/FileApkActivity$5;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileApkActivity$5;-><init>(Lcom/market2345/filebrowser/FileApkActivity;)V

    .line 399
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void
.end method

.method private changeEditMode(Z)V
    .locals 4
    .param p1, "editMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->setEditMode(Z)V

    .line 262
    :cond_1
    if-eqz p1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u5b89\u88c5\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    const-string v2, "\u5168\u9009"

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 270
    goto :goto_1
.end method

.method private changeTitle()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->btnBottomDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u53d6\u6d88"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u5b89\u88c5\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_2
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    const-string v0, "\u5168\u9009"

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9879"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private initData()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 203
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileApkActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v1

    .line 208
    .local v1, "fc":Lcom/market2345/filebrowser/FileControl;
    sget-object v6, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v1, v6}, Lcom/market2345/filebrowser/FileControl;->getAllApk(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;

    move-result-object v3

    .line 209
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 210
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    new-instance v2, Lcom/market2345/filebrowser/FileSortHelper;

    invoke-direct {v2}, Lcom/market2345/filebrowser/FileSortHelper;-><init>()V

    .line 214
    .local v2, "helper":Lcom/market2345/filebrowser/FileSortHelper;
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    sget-object v7, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v2, v7}, Lcom/market2345/filebrowser/FileSortHelper;->getComParator(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 217
    .end local v2    # "helper":Lcom/market2345/filebrowser/FileSortHelper;
    :cond_2
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 218
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->lvList:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->noData:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {v1}, Lcom/market2345/filebrowser/FileControl;->isRunning()Z

    move-result v6

    if-nez v6, :cond_4

    .line 223
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->clearAnimation()V

    .line 224
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    if-eqz v6, :cond_0

    .line 237
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    invoke-virtual {v6}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 226
    :cond_4
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 228
    .local v0, "anim":Landroid/view/animation/Animation;
    if-nez v0, :cond_3

    .line 229
    const/high16 v6, 0x7f040000

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 230
    .local v5, "rotateAnim":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 231
    .local v4, "li":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 239
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v4    # "li":Landroid/view/animation/LinearInterpolator;
    .end local v5    # "rotateAnim":Landroid/view/animation/Animation;
    :cond_5
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v1}, Lcom/market2345/filebrowser/FileControl;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 240
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->noData:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->lvList:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 245
    :cond_6
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->noData:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->lvList:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 247
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v6, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    invoke-direct {p0, v9}, Lcom/market2345/filebrowser/FileApkActivity;->changeEditMode(Z)V

    goto/16 :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 165
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    new-instance v1, Lcom/market2345/filebrowser/FileApkActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileApkActivity$1;-><init>(Lcom/market2345/filebrowser/FileApkActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;)V

    .line 181
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->lvList:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/filebrowser/FileApkActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileApkActivity$2;-><init>(Lcom/market2345/filebrowser/FileApkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 200
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u5305"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v1, 0x7f09026b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v2, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v1, 0x7f09026c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;

    .line 141
    const v1, 0x7f090270

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->ivTopLoading:Landroid/widget/ImageView;

    .line 143
    const v1, 0x7f09026d

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    .line 144
    const v1, 0x7f090268

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->bottom:Landroid/view/View;

    .line 145
    const v1, 0x7f090264

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->btnBottomDelete:Landroid/widget/TextView;

    .line 147
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->lvList:Landroid/widget/ListView;

    .line 148
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->noData:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->noData:Landroid/view/View;

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "noApk":Landroid/widget/TextView;
    const v1, 0x7f02012b

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 151
    const-string v1, "\u6ca1\u6709\u5b89\u88c5\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->loading:Landroid/view/View;

    .line 154
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    .line 158
    new-instance v1, Lcom/market2345/filebrowser/adapter/ApkAdapter;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3}, Lcom/market2345/filebrowser/adapter/ApkAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    .line 159
    iget-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->lvList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/market2345/filebrowser/FileControl;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 162
    return-void
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x1

    .line 330
    const v1, 0x7f030044

    const-string v2, "\u63d0\u793a"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u786e\u8ba4\u8981\u5220\u9664\u9009\u4e2d\u7684"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u9879?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/filebrowser/FileApkActivity$3;

    invoke-direct {v6, p0}, Lcom/market2345/filebrowser/FileApkActivity$3;-><init>(Lcom/market2345/filebrowser/FileApkActivity;)V

    new-instance v7, Lcom/market2345/filebrowser/FileApkActivity$4;

    invoke-direct {v7, p0}, Lcom/market2345/filebrowser/FileApkActivity$4;-><init>(Lcom/market2345/filebrowser/FileApkActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->dialogDelete:Landroid/app/Dialog;

    .line 345
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 346
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 347
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 348
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileApkActivity;->changeEditMode(Z)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-void

    .line 295
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->getEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileApkActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 301
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileApkActivity;->finish()V

    goto :goto_0

    .line 304
    :pswitch_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileApkActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 307
    :pswitch_4
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileApkActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0

    .line 310
    :pswitch_5
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 312
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->notifyDataSetChanged()V

    .line 322
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->changeTitle()V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x7f090264
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileApkActivity;->setContentView(I)V

    .line 98
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->initData()V

    .line 100
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileApkActivity;->initListener()V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/filebrowser/FileControl;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    if-eqz v0, :cond_3

    .line 130
    iput-object v1, p0, Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;

    .line 133
    :cond_3
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 134
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 404
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 405
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 406
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 411
    .end local p2    # "data":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 407
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
