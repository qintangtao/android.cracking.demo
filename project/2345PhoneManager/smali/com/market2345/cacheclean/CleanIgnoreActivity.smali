.class public Lcom/market2345/cacheclean/CleanIgnoreActivity;
.super Landroid/app/Activity;
.source "CleanIgnoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;


# instance fields
.field private bigFileList:Landroid/widget/ListView;

.field private cancleBt:Landroid/widget/Button;

.field private dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ivBack:Landroid/widget/ImageView;

.field private mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

.field private mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

.field private res:Landroid/content/res/Resources;

.field private selectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public delBigFile(Lcom/market2345/cacheclean/BigFileInfo;)V
    .locals 8
    .param p1, "bigfile"    # Lcom/market2345/cacheclean/BigFileInfo;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-virtual {v2, v1}, Lcom/market2345/cacheclean/ClearDatabaseManager;->delete(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->getBigList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileNum(I)V

    .line 137
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileTotalSize(J)V

    .line 140
    :cond_0
    return-void
.end method

.method public delect()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->delBigFile(Lcom/market2345/cacheclean/BigFileInfo;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->notifyDataSetChanged()V

    .line 123
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 120
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->finish()V

    goto :goto_1
.end method

.method public initAppList()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ClearDatabaseManager;->query()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    new-instance v0, Lcom/market2345/cacheclean/CleanBigFileAdapter;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    .line 66
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->setSelectListener(Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;)V

    .line 67
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->bigFileList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->bigFileList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public initUI()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f0902a4

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0902a3

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->bigFileList:Landroid/widget/ListView;

    .line 56
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->ivBack:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onCancel(I)V
    .locals 2
    .param p1, "selectPosition"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 93
    .local v0, "id":I
    const v1, 0x7f09019a

    if-ne v0, v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->finish()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const v1, 0x7f0902a4

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->delect()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->res:Landroid/content/res/Resources;

    .line 44
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    .line 45
    new-instance v0, Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/ClearDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    .line 46
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->initUI()V

    .line 47
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanIgnoreActivity;->initAppList()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    .line 86
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSelect(I)V
    .locals 2
    .param p1, "selectPosition"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanIgnoreActivity;->cancleBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
