.class final Lcom/market2345/download/DownloadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/market2345/download/DownloadProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->this$0:Lcom/market2345/download/DownloadProvider;

    .line 158
    const-string v0, "downloads1.db"

    const/4 v1, 0x0

    const/16 v2, 0x78

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 159
    return-void
.end method

.method private addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbTable"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnDefinition"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 224
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS downloads1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    const-string v1, "CREATE TABLE downloads1(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, entity TEXT, delete_file INTEGER, downPartial INTEGER, targetSize INTEGER, fileName TEXT, mimetype TEXT, mNumFailed INTEGER, signatureError INTEGER, isUpdate INTEGER, status INTEGER, allowed_network_types INTEGER, certMd5 TEXT, lastModified INTEGER, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, title TEXT, description TEXT, packageName TEXT, versionName TEXT, sid TEXT, iconUrl TEXT, speed INTEGER, patchUrl TEXT, patchSize INTEGER, lowMD5 TEXT, versionCode INTEGER, firstMD5 TEXT, firstMD5_length INTEGER, secondMD5 TEXT, serverMD5 TEXT, platform TEXT, sourcefrom INTEGER, minSDK INTEGER, startInstall INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    throw v0
.end method

.method private createHeadersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 280
    const-string v0, "DROP TABLE IF EXISTS request_headers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    const-string v0, "CREATE TABLE request_headers(id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL,header TEXT NOT NULL,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private fillNullValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "current_bytes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 191
    const-string v1, "total_bytes"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 193
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 195
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 197
    return-void
.end method

.method private fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, "column":Ljava/lang/String;
    const-string v1, "downloads1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 203
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 166
    const/4 v0, 0x0

    const/16 v1, 0x78

    invoke-virtual {p0, p1, v0, v1}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 167
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;->createHeadersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 180
    return-void
.end method
