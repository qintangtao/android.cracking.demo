.class Lcom/market2345/cacheclean/ScanResidual$1;
.super Ljava/lang/Thread;
.source "ScanResidual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ScanResidual;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ScanResidual;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ScanResidual;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/market2345/cacheclean/ScanResidual;->isRun:Z
    invoke-static/range {v17 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$002(Lcom/market2345/cacheclean/ScanResidual;Z)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$100(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    .line 158
    .local v11, "packinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/market2345/cacheclean/ScanResidual;->sacnAPPCache(Ljava/util/List;)V

    .line 160
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mounted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v19, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->mCacheDir:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/market2345/cacheclean/ScanResidual;->access$300(Lcom/market2345/cacheclean/ScanResidual;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # setter for: Lcom/market2345/cacheclean/ScanResidual;->folderFullPath:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$202(Lcom/market2345/cacheclean/ScanResidual;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->folderFullPath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$200(Lcom/market2345/cacheclean/ScanResidual;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->folderFullPath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$200(Lcom/market2345/cacheclean/ScanResidual;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapCache(Ljava/lang/String;)Lcom/market2345/cacheclean/BitmapCacheInfo;

    move-result-object v8

    .line 167
    .local v8, "mBitmap":Lcom/market2345/cacheclean/BitmapCacheInfo;
    if-eqz v8, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # invokes: Lcom/market2345/cacheclean/ScanResidual;->setChanged()V
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$400(Lcom/market2345/cacheclean/ScanResidual;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/market2345/cacheclean/ScanResidual;->notifyObservers(Ljava/lang/Object;)V

    .line 174
    .end local v8    # "mBitmap":Lcom/market2345/cacheclean/BitmapCacheInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$500(Lcom/market2345/cacheclean/ScanResidual;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$500(Lcom/market2345/cacheclean/ScanResidual;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    const-string v18, "select softChinesename,apkname,filepath from softdetail"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 177
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 178
    .local v16, "total":I
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->isRun:Z
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$000(Lcom/market2345/cacheclean/ScanResidual;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 182
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$500(Lcom/market2345/cacheclean/ScanResidual;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 245
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v16    # "total":I
    :goto_1
    return-void

    .line 186
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "total":I
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "chinesename":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "pagename":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v14}, Lcom/market2345/cacheclean/ScanResidual;->moblieAPP(Ljava/util/List;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 200
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v10, "myFile":Ljava/io/File;
    invoke-static {v10}, Lcom/market2345/cacheclean/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v12

    .line 203
    .local v12, "mySize":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_4

    .line 205
    const-wide/16 v12, 0x1

    .line 207
    :cond_4
    new-instance v9, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-direct {v9}, Lcom/market2345/cacheclean/AppSDCacheInfo;-><init>()V

    .line 208
    .local v9, "myApp":Lcom/market2345/cacheclean/AppSDCacheInfo;
    invoke-virtual {v9, v14}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setPackname(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v9, v2}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setAppname(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v9, v15}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setCachePath(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v9, v12, v13}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setCacheSize(J)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$600(Lcom/market2345/cacheclean/ScanResidual;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$600(Lcom/market2345/cacheclean/ScanResidual;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # operator++ for: Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$708(Lcom/market2345/cacheclean/ScanResidual;)I

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$800(Lcom/market2345/cacheclean/ScanResidual;)J

    move-result-wide v18

    add-long v18, v18, v12

    # setter for: Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J
    invoke-static/range {v17 .. v19}, Lcom/market2345/cacheclean/ScanResidual;->access$802(Lcom/market2345/cacheclean/ScanResidual;J)J

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # invokes: Lcom/market2345/cacheclean/ScanResidual;->setChanged()V
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$900(Lcom/market2345/cacheclean/ScanResidual;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/market2345/cacheclean/ScanResidual;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 222
    .end local v2    # "chinesename":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "myApp":Lcom/market2345/cacheclean/AppSDCacheInfo;
    .end local v10    # "myFile":Ljava/io/File;
    .end local v12    # "mySize":J
    .end local v14    # "pagename":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$500(Lcom/market2345/cacheclean/ScanResidual;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v16    # "total":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z
    invoke-static/range {v17 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1002(Lcom/market2345/cacheclean/ScanResidual;Z)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    # setter for: Lcom/market2345/cacheclean/ScanResidual;->endtime:J
    invoke-static/range {v17 .. v19}, Lcom/market2345/cacheclean/ScanResidual;->access$1102(Lcom/market2345/cacheclean/ScanResidual;J)J

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->endtime:J
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$1100(Lcom/market2345/cacheclean/ScanResidual;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->starttime:J
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$1200(Lcom/market2345/cacheclean/ScanResidual;)J

    move-result-wide v20

    sub-long v4, v18, v20

    .line 229
    .local v4, "des":J
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "during time"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    const-wide/16 v18, 0xfa0

    cmp-long v17, v4, v18

    if-gez v17, :cond_8

    .line 235
    const-wide/16 v18, 0xfa0

    sub-long v18, v18, v4

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    # invokes: Lcom/market2345/cacheclean/ScanResidual;->setChanged()V
    invoke-static/range {v17 .. v17}, Lcom/market2345/cacheclean/ScanResidual;->access$1300(Lcom/market2345/cacheclean/ScanResidual;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$1;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 237
    :catch_0
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
