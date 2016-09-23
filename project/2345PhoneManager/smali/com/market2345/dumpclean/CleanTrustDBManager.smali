.class public Lcom/market2345/dumpclean/CleanTrustDBManager;
.super Ljava/lang/Object;
.source "CleanTrustDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/CleanTrustDBManager$1;
    }
.end annotation


# instance fields
.field private helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/market2345/dumpclean/CleanTrustDBHelper;

    invoke-direct {v0, p1}, Lcom/market2345/dumpclean/CleanTrustDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanTrustDBManager;->helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v3, p0, Lcom/market2345/dumpclean/CleanTrustDBManager;->helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/CleanTrustDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "file_path=?"

    .line 83
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 85
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v3, "clean_filter"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    return-void
.end method

.method public insert(Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x1

    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/market2345/dumpclean/CleanTrustDBManager;->helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;

    invoke-virtual {v4}, Lcom/market2345/dumpclean/CleanTrustDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "clean_filter"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 31
    .local v2, "result":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 37
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":J
    :goto_0
    return v1

    .line 32
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "result":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 33
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isContains(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    .local v8, "contains":Z
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanTrustDBManager;->helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/CleanTrustDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "file_path"

    aput-object v1, v2, v6

    .line 66
    .local v2, "columns":[Ljava/lang/String;
    const-string v3, "file_path=?"

    .line 68
    .local v3, "whereClause":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 69
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "clean_filter"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 70
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    const/4 v8, 0x1

    .line 73
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 75
    return v8
.end method

.method public query(Lcom/market2345/dumpclean/ITEMTYPE;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "it"    # Lcom/market2345/dumpclean/ITEMTYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/dumpclean/ITEMTYPE;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/dumpclean/TrustMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/dumpclean/TrustMode;>;"
    sget-object v3, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 98
    const/4 v11, 0x0

    .line 122
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/dumpclean/TrustMode;>;"
    :goto_0
    return-object v11

    .line 100
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/dumpclean/TrustMode;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/dumpclean/ITEMTYPE;->ordinal()I

    move-result v15

    .line 102
    .local v15, "t":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/dumpclean/CleanTrustDBManager;->helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/CleanTrustDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 103
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

    .line 104
    .local v4, "columns":[Ljava/lang/String;
    const-string v3, "clean_filter"

    const-string v5, "file_type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 106
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 107
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "name":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, "path":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 112
    .local v16, "size":J
    new-instance v12, Lcom/market2345/dumpclean/TrustMode;

    invoke-direct {v12}, Lcom/market2345/dumpclean/TrustMode;-><init>()V

    .line 113
    .local v12, "mode":Lcom/market2345/dumpclean/TrustMode;
    iput-object v13, v12, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    .line 114
    iput-object v14, v12, Lcom/market2345/dumpclean/TrustMode;->path:Ljava/lang/String;

    .line 115
    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/market2345/dumpclean/TrustMode;->size:J

    .line 116
    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    .line 117
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v12    # "mode":Lcom/market2345/dumpclean/TrustMode;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "size":J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public queryAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/TrustMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/TrustMode;>;"
    invoke-static {}, Lcom/market2345/dumpclean/ITEMTYPE;->values()[Lcom/market2345/dumpclean/ITEMTYPE;

    move-result-object v5

    .line 133
    .local v5, "types":[Lcom/market2345/dumpclean/ITEMTYPE;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 134
    aget-object v2, v5, v1

    .line 135
    .local v2, "itemtype":Lcom/market2345/dumpclean/ITEMTYPE;
    sget-object v6, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    if-ne v2, v6, :cond_1

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    aget-object v6, v5, v1

    invoke-virtual {p0, v6}, Lcom/market2345/dumpclean/CleanTrustDBManager;->query(Lcom/market2345/dumpclean/ITEMTYPE;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/TrustMode;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 138
    new-instance v3, Lcom/market2345/dumpclean/TrustMode;

    invoke-direct {v3}, Lcom/market2345/dumpclean/TrustMode;-><init>()V

    .line 139
    .local v3, "mode":Lcom/market2345/dumpclean/TrustMode;
    sget-object v6, Lcom/market2345/dumpclean/CleanTrustDBManager$1;->$SwitchMap$com$market2345$dumpclean$ITEMTYPE:[I

    invoke-virtual {v2}, Lcom/market2345/dumpclean/ITEMTYPE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 150
    :goto_2
    sget-object v6, Lcom/market2345/dumpclean/ITEMTYPE;->TITLE:Lcom/market2345/dumpclean/ITEMTYPE;

    iput-object v6, v3, Lcom/market2345/dumpclean/TrustMode;->type:Lcom/market2345/dumpclean/ITEMTYPE;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v3, Lcom/market2345/dumpclean/TrustMode;->count:I

    .line 152
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 141
    :pswitch_0
    const-string v6, "\u7f13\u5b58"

    iput-object v6, v3, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    goto :goto_2

    .line 144
    :pswitch_1
    const-string v6, "\u6b8b\u7559\u6587\u4ef6"

    iput-object v6, v3, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    goto :goto_2

    .line 147
    :pswitch_2
    const-string v6, "\u5b89\u88c5\u5305"

    iput-object v6, v3, Lcom/market2345/dumpclean/TrustMode;->name:Ljava/lang/String;

    goto :goto_2

    .line 156
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/TrustMode;>;"
    .end local v2    # "itemtype":Lcom/market2345/dumpclean/ITEMTYPE;
    .end local v3    # "mode":Lcom/market2345/dumpclean/TrustMode;
    :cond_2
    return-object v4

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public queryCount()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    .local v8, "count":I
    iget-object v1, p0, Lcom/market2345/dumpclean/CleanTrustDBManager;->helper:Lcom/market2345/dumpclean/CleanTrustDBHelper;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/CleanTrustDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "file_path"

    aput-object v4, v2, v1

    .line 48
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "clean_filter"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 49
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 50
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    return v8
.end method
