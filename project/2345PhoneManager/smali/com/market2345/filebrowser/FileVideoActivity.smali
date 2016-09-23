.class public Lcom/market2345/filebrowser/FileVideoActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

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

.field private tvTopTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileVideoActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/FileVideoActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/filebrowser/FileVideoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileVideoActivity;->changeEditMode(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dialogDelete:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/market2345/filebrowser/FileVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->asyncDelete()V

    return-void
.end method

.method static synthetic access$1300(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/market2345/filebrowser/FileVideoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/FileVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->changeTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/FileVideoActivity;)Lcom/market2345/filebrowser/adapter/VideoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->ivTopDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->bottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->noData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileVideoActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;

    return-object v0
.end method

.method private asyncDelete()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/market2345/filebrowser/FileVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileVideoActivity$6;-><init>(Lcom/market2345/filebrowser/FileVideoActivity;)V

    .line 349
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    return-void
.end method

.method private changeEditMode(Z)V
    .locals 4
    .param p1, "editMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->setEditMode(Z)V

    .line 217
    :cond_1
    if-eqz p1, :cond_2

    .line 218
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/market2345/filebrowser/FileVideoActivity;->ivTopDelete:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    const-string v2, "\u5168\u9009"

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 225
    goto :goto_1
.end method

.method private changeTitle()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->btnBottomDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 237
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u53d6\u6d88"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_2
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_1
    const-string v0, "\u5168\u9009"

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

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
    .line 161
    new-instance v0, Lcom/market2345/filebrowser/FileVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileVideoActivity$3;-><init>(Lcom/market2345/filebrowser/FileVideoActivity;)V

    .line 205
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    new-instance v1, Lcom/market2345/filebrowser/FileVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileVideoActivity$1;-><init>(Lcom/market2345/filebrowser/FileVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;)V

    .line 139
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/filebrowser/FileVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileVideoActivity$2;-><init>(Lcom/market2345/filebrowser/FileVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 158
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    const v1, 0x7f09026f

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u89c6\u9891"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f09026b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v2, "\u6587\u4ef6\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v1, 0x7f09026c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->ivTopDelete:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f09026d

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    .line 104
    const v1, 0x7f090268

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->bottom:Landroid/view/View;

    .line 105
    const v1, 0x7f090264

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->btnBottomDelete:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;

    .line 108
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->noData:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->noData:Landroid/view/View;

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, "noVideo":Landroid/widget/TextView;
    const v1, 0x7f020130

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 111
    const-string v1, "\u6ca1\u6709\u4efb\u4f55\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->loading:Landroid/view/View;

    .line 114
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    .line 118
    new-instance v1, Lcom/market2345/filebrowser/adapter/VideoAdapter;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3}, Lcom/market2345/filebrowser/adapter/VideoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    .line 119
    iget-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->lvList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    return-void
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x1

    .line 285
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

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/filebrowser/FileVideoActivity$4;

    invoke-direct {v6, p0}, Lcom/market2345/filebrowser/FileVideoActivity$4;-><init>(Lcom/market2345/filebrowser/FileVideoActivity;)V

    new-instance v7, Lcom/market2345/filebrowser/FileVideoActivity$5;

    invoke-direct {v7, p0}, Lcom/market2345/filebrowser/FileVideoActivity$5;-><init>(Lcom/market2345/filebrowser/FileVideoActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dialogDelete:Landroid/app/Dialog;

    .line 299
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 300
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 301
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->dialogDelete:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 302
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileVideoActivity;->changeEditMode(Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return-void

    .line 250
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->getEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileVideoActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 256
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->finish()V

    goto :goto_0

    .line 259
    :pswitch_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileVideoActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileVideoActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 267
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->notifyDataSetChanged()V

    .line 277
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->changeTitle()V

    goto :goto_0

    .line 248
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
    .line 60
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileVideoActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->initView()V

    .line 64
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->initData()V

    .line 65
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileVideoActivity;->initListener()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->deleteMap:Ljava/util/Map;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->mInfos:Ljava/util/ArrayList;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    if-eqz v0, :cond_2

    .line 91
    iput-object v1, p0, Lcom/market2345/filebrowser/FileVideoActivity;->adapter:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    .line 94
    :cond_2
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 95
    return-void
.end method
