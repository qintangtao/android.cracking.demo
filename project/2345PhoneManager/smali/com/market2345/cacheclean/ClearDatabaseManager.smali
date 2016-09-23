.class public Lcom/market2345/cacheclean/ClearDatabaseManager;
.super Ljava/lang/Object;
.source "ClearDatabaseManager.java"


# static fields
.field private static final TABLE_NAME:Ljava/lang/String; = "bigfile"


# instance fields
.field private dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/market2345/cacheclean/ClearFileDBHelper;

    invoke-direct {v0, p1}, Lcom/market2345/cacheclean/ClearFileDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/ClearDatabaseManager;->dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v3, p0, Lcom/market2345/cacheclean/ClearDatabaseManager;->dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ClearFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "file_path=?"

    .line 81
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 83
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v3, "bigfile"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    return-void
.end method

.method public insert(Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/market2345/cacheclean/ClearDatabaseManager;->dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ClearFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 28
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "bigfile"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 29
    .local v2, "result":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 30
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContains(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    .local v8, "contains":Z
    iget-object v1, p0, Lcom/market2345/cacheclean/ClearDatabaseManager;->dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ClearFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "file_path"

    aput-object v1, v2, v6

    .line 62
    .local v2, "columns":[Ljava/lang/String;
    const-string v3, "file_path=?"

    .line 64
    .local v3, "whereClause":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 65
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "bigfile"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 66
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    const/4 v8, 0x1

    .line 70
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 72
    return v8
.end method

.method public query()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/BigFileInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/cacheclean/ClearDatabaseManager;->dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ClearFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 91
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "file_name"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "file_path"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "file_size"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "file_type"

    aput-object v5, v4, v3

    .line 92
    .local v4, "columns":[Ljava/lang/String;
    const-string v3, "bigfile"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 94
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 96
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 99
    .local v14, "name":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 104
    .local v16, "size":J
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 105
    .local v18, "type":I
    new-instance v10, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-direct {v10}, Lcom/market2345/cacheclean/BigFileInfo;-><init>()V

    .line 106
    .local v10, "big":Lcom/market2345/cacheclean/BigFileInfo;
    invoke-virtual {v10, v14}, Lcom/market2345/cacheclean/BigFileInfo;->setName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v10, v15}, Lcom/market2345/cacheclean/BigFileInfo;->setPath(Ljava/lang/String;)V

    .line 108
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lcom/market2345/cacheclean/BigFileInfo;->setSize(J)V

    .line 109
    if-nez v18, :cond_1

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/market2345/cacheclean/BigFileInfo;->setApkFile(Z)V

    .line 117
    :goto_1
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/market2345/cacheclean/BigFileInfo;->setApkFile(Z)V

    goto :goto_1

    .line 121
    .end local v10    # "big":Lcom/market2345/cacheclean/BigFileInfo;
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "size":J
    .end local v18    # "type":I
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    return-object v13
.end method

.method public queryCount()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    .local v8, "count":I
    iget-object v1, p0, Lcom/market2345/cacheclean/ClearDatabaseManager;->dbHelper:Lcom/market2345/cacheclean/ClearFileDBHelper;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ClearFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 37
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "file_path"

    aput-object v1, v2, v12

    .line 38
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "bigfile"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 39
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 44
    .local v11, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 51
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    return v8
.end method
