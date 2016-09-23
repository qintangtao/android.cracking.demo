.class public Lcom/market2345/filebrowser/FileMusicActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

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

.field private dialogWaiting:Landroid/app/Dialog;

.field private ivTopDelete:Landroid/widget/ImageView;

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

.field private setRingAudio:Landroid/view/View$OnClickListener;

.field private tvTopTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/filebrowser/FileMusicActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity;->setAlarmAudio(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->noData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/market2345/filebrowser/FileMusicActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity;->changeEditMode(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogDelete:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/market2345/filebrowser/FileMusicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->asyncDelete()V

    return-void
.end method

.method static synthetic access$1700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/market2345/filebrowser/FileMusicActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogWaiting:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/FileMusicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->changeTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/FileMusicActivity;)Lcom/market2345/filebrowser/adapter/MusicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->ivTopDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->bottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->setRingAudio:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/market2345/filebrowser/FileMusicActivity;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;
    .param p1, "x1"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->setRingAudio:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/market2345/filebrowser/FileMusicActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity;->setRing(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/market2345/filebrowser/FileMusicActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileMusicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileMusicActivity;->setSMSAudio(I)V

    return-void
.end method

.method private asyncDelete()V
    .locals 2

    .prologue
    .line 419
    new-instance v0, Lcom/market2345/filebrowser/FileMusicActivity$8;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileMusicActivity$8;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    .line 460
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 461
    return-void
.end method

.method private changeEditMode(Z)V
    .locals 4
    .param p1, "editMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->setEditMode(Z)V

    .line 288
    :cond_1
    if-eqz p1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u97f3\u4e50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/market2345/filebrowser/FileMusicActivity;->ivTopDelete:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    const-string v2, "\u5168\u9009"

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 296
    goto :goto_1
.end method

.method private changeTitle()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->btnBottomDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 308
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u53d6\u6d88"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u97f3\u4e50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_2
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :cond_1
    const-string v0, "\u5168\u9009"

    goto :goto_1

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

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
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/market2345/filebrowser/FileMusicActivity$5;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileMusicActivity$5;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    .line 276
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    new-instance v1, Lcom/market2345/filebrowser/FileMusicActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileMusicActivity$1;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;)V

    .line 157
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/filebrowser/FileMusicActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileMusicActivity$2;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/filebrowser/FileMusicActivity$3;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileMusicActivity$3;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    new-instance v1, Lcom/market2345/filebrowser/FileMusicActivity$4;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileMusicActivity$4;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->setAudioListener(Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;)V

    .line 230
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u97f3\u4e50"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v1, 0x7f09026b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 118
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v2, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v1, 0x7f09026c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->ivTopDelete:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f09026d

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    .line 122
    const v1, 0x7f090268

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->bottom:Landroid/view/View;

    .line 123
    const v1, 0x7f090264

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->btnBottomDelete:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;

    .line 126
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->noData:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->noData:Landroid/view/View;

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "noMusic":Landroid/widget/TextView;
    const v1, 0x7f02012e

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 129
    const-string v1, "\u6ca1\u6709\u4efb\u4f55\u97f3\u4e50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->loading:Landroid/view/View;

    .line 132
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    .line 136
    new-instance v1, Lcom/market2345/filebrowser/adapter/MusicAdapter;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3}, Lcom/market2345/filebrowser/adapter/MusicAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    .line 137
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->lvList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method

.method private setAlarmAudio(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 377
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_alarm"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 379
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 381
    .local v0, "newUri":Landroid/net/Uri;
    invoke-static {p0, v8, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 382
    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 383
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    const-string v3, "\u8bbe\u7f6e\u95f9\u949f\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v3, "\u8bbe\u7f6e\u95f9\u949f\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setRing(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 405
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_ringtone"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 407
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 409
    .local v0, "newUri":Landroid/net/Uri;
    invoke-static {p0, v7, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 410
    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 411
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    const-string v3, "\u8bbe\u7f6e\u6765\u7535\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string v3, "\u8bbe\u7f6e\u6765\u7535\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setSMSAudio(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 391
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_notification"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 393
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 395
    .local v0, "newUri":Landroid/net/Uri;
    invoke-static {p0, v8, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 396
    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 397
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const-string v3, "\u8bbe\u7f6e\u901a\u77e5\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string v3, "\u8bbe\u7f6e\u901a\u77e5\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x1

    .line 356
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

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/filebrowser/FileMusicActivity$6;

    invoke-direct {v6, p0}, Lcom/market2345/filebrowser/FileMusicActivity$6;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    new-instance v7, Lcom/market2345/filebrowser/FileMusicActivity$7;

    invoke-direct {v7, p0}, Lcom/market2345/filebrowser/FileMusicActivity$7;-><init>(Lcom/market2345/filebrowser/FileMusicActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogDelete:Landroid/app/Dialog;

    .line 371
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 372
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 373
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 374
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileMusicActivity;->changeEditMode(Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 353
    :goto_0
    :pswitch_0
    return-void

    .line 321
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->getEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileMusicActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 327
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->finish()V

    goto :goto_0

    .line 330
    :pswitch_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileMusicActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 333
    :pswitch_4
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileMusicActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0

    .line 336
    :pswitch_5
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 338
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->notifyDataSetChanged()V

    .line 348
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->changeTitle()V

    goto :goto_0

    .line 319
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
    .line 82
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileMusicActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->initData()V

    .line 87
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileMusicActivity;->initListener()V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iput-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;

    .line 112
    :cond_1
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 113
    return-void
.end method
