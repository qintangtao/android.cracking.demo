.class public Lcom/market2345/filebrowser/FileDocumentsActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileDocumentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileDocumentsActivity$MyHandler;
    }
.end annotation


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

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
    .line 41
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/market2345/filebrowser/FileDocumentsActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$MyHandler;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->handler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileDocumentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/market2345/filebrowser/FileDocumentsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/market2345/filebrowser/FileDocumentsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeEditMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/filebrowser/FileDocumentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/filebrowser/FileDocumentsActivity;)Lcom/market2345/filebrowser/adapter/DocumentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->bottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dialogDelete:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/filebrowser/FileDocumentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileDocumentsActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->asyncDelete()V

    return-void
.end method

.method private asyncDelete()V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Lcom/market2345/filebrowser/FileDocumentsActivity$6;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$6;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    .line 415
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 416
    return-void
.end method

.method private changeEditMode(Z)V
    .locals 4
    .param p1, "editMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->setEditMode(Z)V

    .line 276
    :cond_1
    if-eqz p1, :cond_2

    .line 277
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u6587\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_2
    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    const-string v2, "\u5168\u9009"

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 284
    goto :goto_1
.end method

.method private changeTitle()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->btnBottomDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u53d6\u6d88"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u6587\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_2
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_1
    const-string v0, "\u5168\u9009"

    goto :goto_1

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

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

    .line 216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v1

    .line 221
    .local v1, "fc":Lcom/market2345/filebrowser/FileControl;
    sget-object v6, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v1, v6}, Lcom/market2345/filebrowser/FileControl;->getAllDoc(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;

    move-result-object v3

    .line 222
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 223
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    new-instance v2, Lcom/market2345/filebrowser/FileSortHelper;

    invoke-direct {v2}, Lcom/market2345/filebrowser/FileSortHelper;-><init>()V

    .line 227
    .local v2, "helper":Lcom/market2345/filebrowser/FileSortHelper;
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    sget-object v7, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-virtual {v2, v7}, Lcom/market2345/filebrowser/FileSortHelper;->getComParator(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    .end local v2    # "helper":Lcom/market2345/filebrowser/FileSortHelper;
    :cond_2
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 232
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 234
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->noData:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 236
    invoke-virtual {v1}, Lcom/market2345/filebrowser/FileControl;->isRunning()Z

    move-result v6

    if-nez v6, :cond_4

    .line 237
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->clearAnimation()V

    .line 238
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v6}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 240
    :cond_4
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 242
    .local v0, "anim":Landroid/view/animation/Animation;
    if-nez v0, :cond_3

    .line 243
    const/high16 v6, 0x7f040000

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 244
    .local v5, "rotateAnim":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 245
    .local v4, "li":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 253
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v4    # "li":Landroid/view/animation/LinearInterpolator;
    .end local v5    # "rotateAnim":Landroid/view/animation/Animation;
    :cond_5
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v1}, Lcom/market2345/filebrowser/FileControl;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 254
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->noData:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 257
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 259
    :cond_6
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->noData:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 261
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->loading:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v6, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-direct {p0, v9}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeEditMode(Z)V

    goto/16 :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    new-instance v1, Lcom/market2345/filebrowser/FileDocumentsActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$1;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;)V

    .line 183
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/filebrowser/FileDocumentsActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$2;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/filebrowser/FileDocumentsActivity$3;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$3;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 213
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u6587\u6863"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v1, 0x7f09026b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 141
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v2, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v1, 0x7f09026c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;

    .line 143
    const v1, 0x7f090270

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopLoading:Landroid/widget/ImageView;

    .line 145
    const v1, 0x7f09026d

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    .line 146
    const v1, 0x7f090268

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->bottom:Landroid/view/View;

    .line 147
    const v1, 0x7f090264

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->btnBottomDelete:Landroid/widget/TextView;

    .line 149
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    .line 150
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->noData:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->noData:Landroid/view/View;

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, "noDocument":Landroid/widget/TextView;
    const v1, 0x7f02012c

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 153
    const-string v1, "\u6ca1\u6709\u4efb\u4f55\u6587\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->loading:Landroid/view/View;

    .line 156
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    .line 160
    new-instance v1, Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    .line 161
    iget-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->lvList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/market2345/filebrowser/FileControl;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 164
    return-void
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x1

    .line 344
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

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/filebrowser/FileDocumentsActivity$4;

    invoke-direct {v6, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$4;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    new-instance v7, Lcom/market2345/filebrowser/FileDocumentsActivity$5;

    invoke-direct {v7, p0}, Lcom/market2345/filebrowser/FileDocumentsActivity$5;-><init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dialogDelete:Landroid/app/Dialog;

    .line 359
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 360
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 361
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 362
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeEditMode(Z)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 341
    :goto_0
    :pswitch_0
    return-void

    .line 309
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 315
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->finish()V

    goto :goto_0

    .line 318
    :pswitch_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 321
    :pswitch_4
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileDocumentsActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0

    .line 324
    :pswitch_5
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 326
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->notifyDataSetChanged()V

    .line 336
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->changeTitle()V

    goto :goto_0

    .line 307
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
    .line 96
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->initData()V

    .line 101
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->initListener()V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/filebrowser/FileControl;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->clear()V

    .line 132
    iput-object v1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    .line 135
    :cond_3
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 136
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 420
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 421
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    .end local p2    # "data":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 423
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
