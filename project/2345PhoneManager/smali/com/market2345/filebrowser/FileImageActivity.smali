.class public Lcom/market2345/filebrowser/FileImageActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUESTCODE_BIGIMAGE:I = 0x1


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

.field private bottom:Landroid/view/View;

.field private btnBottomDelete:Landroid/widget/TextView;

.field private cbTopSelectAll:Landroid/widget/CheckBox;

.field private curDirName:Ljava/lang/String;

.field private currentIndex:I

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

.field private dialog:Landroid/app/Dialog;

.field private dlgDeleteWaiting:Landroid/app/Dialog;

.field private gvImages:Landroid/widget/GridView;

.field private ivTopDelete:Landroid/widget/ImageView;

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
    .line 31
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/FileImageActivity;)Lcom/market2345/filebrowser/adapter/ImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/filebrowser/FileImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->asyncDelete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/market2345/filebrowser/FileImageActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/market2345/filebrowser/FileImageActivity;->dlgDeleteWaiting:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/market2345/filebrowser/FileImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->setResult()V

    return-void
.end method

.method static synthetic access$1300(Lcom/market2345/filebrowser/FileImageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileImageActivity;->changeEditMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/FileImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->changeTitle()V

    return-void
.end method

.method static synthetic access$500(Lcom/market2345/filebrowser/FileImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->currentIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->ivTopDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->bottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileImageActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private asyncDelete()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/market2345/filebrowser/FileImageActivity$5;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileImageActivity$5;-><init>(Lcom/market2345/filebrowser/FileImageActivity;)V

    .line 352
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    return-void
.end method

.method private changeEditMode(Z)V
    .locals 5
    .param p1, "editMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    invoke-virtual {v0, p1, v3, v4}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->setEditMode(ZII)V

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/market2345/filebrowser/FileImageActivity;->ivTopDelete:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    const-string v2, "\u5168\u9009"

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 223
    goto :goto_1
.end method

.method private changeTitle()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->btnBottomDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u53d6\u6d88"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_2
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_1
    const-string v0, "\u5168\u9009"

    goto :goto_1

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->tvTopTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

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
    .locals 3

    .prologue
    .line 192
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileControl;->getAllPicMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    .line 195
    new-instance v0, Lcom/market2345/filebrowser/adapter/ImageAdapter;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/market2345/filebrowser/adapter/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    .line 196
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileImageActivity;->noData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->changeEditMode(Z)V

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->btnBottomDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    new-instance v1, Lcom/market2345/filebrowser/FileImageActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileImageActivity$1;-><init>(Lcom/market2345/filebrowser/FileImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    new-instance v1, Lcom/market2345/filebrowser/FileImageActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FileImageActivity$2;-><init>(Lcom/market2345/filebrowser/FileImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 189
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    const v2, 0x7f09026b

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f09026c

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->ivTopDelete:Landroid/widget/ImageView;

    .line 111
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->ivTopDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    const v2, 0x7f09026d

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    .line 114
    const v2, 0x7f090268

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->bottom:Landroid/view/View;

    .line 115
    const v2, 0x7f090264

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->btnBottomDelete:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f090278

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    .line 118
    const v2, 0x7f09012b

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->noData:Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->noData:Landroid/view/View;

    const v3, 0x7f090265

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, "noImage":Landroid/widget/TextView;
    const v2, 0x7f02012d

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 121
    const-string v2, "\u6ca1\u6709\u4efb\u4f55\u56fe\u7247"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->currentIndex:I

    .line 124
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileControl;->getAllPicDirNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\u56fe\u7247"

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    .line 126
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->currentIndex:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 127
    iget v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v2, 0x7f09026f

    invoke-virtual {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isDelete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v1, "dirName"

    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->curDirName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/market2345/filebrowser/FileImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 360
    return-void
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x1

    .line 284
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

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/filebrowser/FileImageActivity$3;

    invoke-direct {v6, p0}, Lcom/market2345/filebrowser/FileImageActivity$3;-><init>(Lcom/market2345/filebrowser/FileImageActivity;)V

    new-instance v7, Lcom/market2345/filebrowser/FileImageActivity$4;

    invoke-direct {v7, p0}, Lcom/market2345/filebrowser/FileImageActivity$4;-><init>(Lcom/market2345/filebrowser/FileImageActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->dialog:Landroid/app/Dialog;

    .line 299
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 300
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 301
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 302
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    if-nez p3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "isDelete"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->setResult()V

    .line 102
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->changeEditMode(Z)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 254
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileImageActivity;->finish()V

    goto :goto_0

    .line 257
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/market2345/filebrowser/FileImageActivity;->changeEditMode(Z)V

    goto :goto_0

    .line 260
    :pswitch_4
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/market2345/filebrowser/FileImageActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0

    .line 263
    :pswitch_5
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 265
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    iget-object v3, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity;->gvImages:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->setEditMode(ZII)V

    .line 275
    iget-object v2, p0, Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-virtual {v2}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 276
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->changeTitle()V

    goto :goto_0

    .line 246
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
    .line 65
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileImageActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->initData()V

    .line 70
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileImageActivity;->initListener()V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 91
    return-void
.end method
