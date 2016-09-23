.class Lcom/market2345/cacheclean/ScanSD$1;
.super Ljava/lang/Thread;
.source "ScanSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ScanSD;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ScanSD;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ScanSD;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # getter for: Lcom/market2345/cacheclean/ScanSD;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$000(Lcom/market2345/cacheclean/ScanSD;)Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 50
    .local v9, "packinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v12, 0x0

    .line 51
    .local v12, "total":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 53
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 54
    .local v10, "packname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # getter for: Lcom/market2345/cacheclean/ScanSD;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$100(Lcom/market2345/cacheclean/ScanSD;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "select filepath from softdetail where apkname=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 55
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 57
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-direct {v4, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v4, "file":Ljava/io/File;
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # getter for: Lcom/market2345/cacheclean/ScanSD;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$000(Lcom/market2345/cacheclean/ScanSD;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 61
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # getter for: Lcom/market2345/cacheclean/ScanSD;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$000(Lcom/market2345/cacheclean/ScanSD;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "appname":Ljava/lang/String;
    new-instance v8, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-direct {v8}, Lcom/market2345/cacheclean/AppSDCacheInfo;-><init>()V

    .line 64
    .local v8, "myApp":Lcom/market2345/cacheclean/AppSDCacheInfo;
    invoke-virtual {v8, v10}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setPackname(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8, v6}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {v8, v2}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setAppname(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8, v11}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setCachePath(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # invokes: Lcom/market2345/cacheclean/ScanSD;->setChanged()V
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$200(Lcom/market2345/cacheclean/ScanSD;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    invoke-virtual {v13, v8}, Lcom/market2345/cacheclean/ScanSD;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 72
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "appname":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "myApp":Lcom/market2345/cacheclean/AppSDCacheInfo;
    .end local v11    # "path":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 78
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "packname":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # invokes: Lcom/market2345/cacheclean/ScanSD;->setChanged()V
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$300(Lcom/market2345/cacheclean/ScanSD;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/market2345/cacheclean/ScanSD;->notifyObservers(Ljava/lang/Object;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/cacheclean/ScanSD$1;->this$0:Lcom/market2345/cacheclean/ScanSD;

    # getter for: Lcom/market2345/cacheclean/ScanSD;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v13}, Lcom/market2345/cacheclean/ScanSD;->access$100(Lcom/market2345/cacheclean/ScanSD;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    return-void
.end method
