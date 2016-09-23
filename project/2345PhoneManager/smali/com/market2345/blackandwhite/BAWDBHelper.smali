.class Lcom/market2345/blackandwhite/BAWDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BAWDBHelper.java"


# static fields
.field private static final CREATEUPDATEAPPSLIST:Ljava/lang/String; = "create table if not exists updateappslist(rowid integer primary key autoincrement, packagename nvarchar(100), versioncode nvarchar(15), versionname nvarchar(100), type int, time timestamp not null default (datetime(\'now\',\'localtime\')), deleted int, data1 nvarchar(50), data2 nvarchar(50), data3 nvarchar(50), data4 nvarchar(50), data5 nvarchar(50));"

.field private static final DBNAME:Ljava/lang/String; = "blackandwhite.db"

.field private static final DBVERSION:I = 0x1


# instance fields
.field private localDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "blackandwhite.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    invoke-direct {p0}, Lcom/market2345/blackandwhite/BAWDBHelper;->initDataBase()V

    .line 37
    return-void
.end method

.method private initDataBase()V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/market2345/blackandwhite/BAWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/market2345/blackandwhite/BAWDBHelper;->initTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 104
    const-string v0, "create table if not exists updateappslist(rowid integer primary key autoincrement, packagename nvarchar(100), versioncode nvarchar(15), versionname nvarchar(100), type int, time timestamp not null default (datetime(\'now\',\'localtime\')), deleted int, data1 nvarchar(50), data2 nvarchar(50), data3 nvarchar(50), data4 nvarchar(50), data5 nvarchar(50));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 50
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/market2345/blackandwhite/BAWDBHelper;->localDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
