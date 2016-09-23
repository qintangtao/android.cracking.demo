.class final Lcom/market2345/common/util/MarketProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MarketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/common/util/MarketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/common/util/MarketProvider;


# direct methods
.method public constructor <init>(Lcom/market2345/common/util/MarketProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/market2345/common/util/MarketProvider$DatabaseHelper;->this$0:Lcom/market2345/common/util/MarketProvider;

    .line 253
    const-string v0, "market.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 254
    return-void
.end method

.method private createSearchHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 284
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS search_history"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const-string v1, "CREATE TABLE search_history(_id INTEGER PRIMARY KEY AUTOINCREMENT, keyword TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "couldn\'t create search_history table in market database"

    invoke-static {v1}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 290
    throw v0
.end method

.method private createUpdateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 301
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS updates"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v1, "CREATE TABLE updates(_id INTEGER PRIMARY KEY AUTOINCREMENT, sid TEXT, category_id TEXT, category_title TEXT, title TEXT, version TEXT, packageName TEXT, versionCode TEXT, totalDowns TEXT, fileLength TEXT, publicDate TEXT, mark TEXT, summary TEXT, url TEXT, icon TEXT, oneword TEXT, ad INTEGER, charge INTEGER, safe INTEGER, tagName TEXT, certMd5 TEXT, sysIng TEXT, minSDK INTEGER, screenslot TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v1, "DROP TABLE IF EXISTS lm_update_reports"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v1, "CREATE TABLE lm_update_reports(_id INTEGER PRIMARY KEY AUTOINCREMENT, update_content TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const-string v1, "DROP TABLE IF EXISTS reports"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    const-string v1, "CREATE TABLE reports(_id INTEGER PRIMARY KEY AUTOINCREMENT, data1 TEXT, sourcefrom INTEGER, installed INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v1, "DROP TABLE IF EXISTS wifireceive"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v1, "CREATE TABLE wifireceive(_id INTEGER PRIMARY KEY AUTOINCREMENT, path TEXT, filename TEXT, minitype TEXT, size INTEGER, modify INTEGER, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "couldn\'t create updates table in market database"

    invoke-static {v1}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 349
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 259
    const-string v0, "create the new database..."

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/market2345/common/util/MarketProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 261
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 266
    const-string v0, "update the database..."

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 267
    if-ge p2, p3, :cond_0

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/common/util/MarketProvider$DatabaseHelper;->createSearchHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/market2345/common/util/MarketProvider$DatabaseHelper;->createUpdateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    return-void
.end method
