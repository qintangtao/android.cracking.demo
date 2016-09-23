.class public Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;,
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "result":Lcom/lidroid/xutils/db/table/DbModel;
    if-eqz p0, :cond_0

    .line 73
    new-instance v2, Lcom/lidroid/xutils/db/table/DbModel;

    .end local v2    # "result":Lcom/lidroid/xutils/db/table/DbModel;
    invoke-direct {v2}, Lcom/lidroid/xutils/db/table/DbModel;-><init>()V

    .line 74
    .restart local v2    # "result":Lcom/lidroid/xutils/db/table/DbModel;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 75
    .local v0, "columnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 79
    .end local v0    # "columnCount":I
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 76
    .restart local v0    # "columnCount":I
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lidroid/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 17
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "findCacheSequence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v6, 0x0

    .line 67
    :cond_1
    :goto_0
    return-object v6

    .line 31
    :cond_2
    invoke-static/range {p3 .. p4}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->setSeq(J)V

    .line 33
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v13

    .line 34
    .local v13, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v9, v13, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 35
    .local v9, "id":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v9}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v10

    .line 36
    .local v10, "idColumnName":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/lidroid/xutils/db/table/Id;->getIndex()I

    move-result v11

    .line 37
    .local v11, "idIndex":I
    if-gez v11, :cond_3

    .line 38
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 40
    :cond_3
    invoke-virtual {v9}, Lcom/lidroid/xutils/db/table/Id;->getColumnConverter()Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v11}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v12

    .line 41
    .local v12, "idValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "entity":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_1

    .line 43
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 44
    move-object/from16 v0, p1

    invoke-virtual {v9, v6, v0, v11}, Lcom/lidroid/xutils/db/table/Id;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 45
    move-object/from16 v0, p2

    invoke-static {v0, v12, v6}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 50
    .local v3, "columnCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v3, :cond_4

    .line 59
    iget-object v14, v13, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lidroid/xutils/db/table/Finder;

    .line 60
    .local v7, "finder":Lcom/lidroid/xutils/db/table/Finder;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v6, v15, v0}, Lcom/lidroid/xutils/db/table/Finder;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 63
    .end local v3    # "columnCount":I
    .end local v6    # "entity":Ljava/lang/Object;, "TT;"
    .end local v7    # "finder":Lcom/lidroid/xutils/db/table/Finder;
    .end local v8    # "i":I
    .end local v9    # "id":Lcom/lidroid/xutils/db/table/Id;
    .end local v10    # "idColumnName":Ljava/lang/String;
    .end local v11    # "idIndex":I
    .end local v12    # "idValue":Ljava/lang/Object;
    .end local v13    # "table":Lcom/lidroid/xutils/db/table/Table;
    :catch_0
    move-exception v5

    .line 64
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    const/4 v6, 0x0

    goto :goto_0

    .line 51
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v3    # "columnCount":I
    .restart local v6    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v8    # "i":I
    .restart local v9    # "id":Lcom/lidroid/xutils/db/table/Id;
    .restart local v10    # "idColumnName":Ljava/lang/String;
    .restart local v11    # "idIndex":I
    .restart local v12    # "idValue":Ljava/lang/Object;
    .restart local v13    # "table":Lcom/lidroid/xutils/db/table/Table;
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "columnName":Ljava/lang/String;
    iget-object v14, v13, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/table/Column;

    .line 53
    .local v2, "column":Lcom/lidroid/xutils/db/table/Column;
    if-eqz v2, :cond_5

    .line 54
    move-object/from16 v0, p1

    invoke-virtual {v2, v6, v0, v8}, Lcom/lidroid/xutils/db/table/Column;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
