.class final Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadReportProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/common/util/DownloadReportProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/common/util/DownloadReportProvider;


# direct methods
.method public constructor <init>(Lcom/market2345/common/util/DownloadReportProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;->this$0:Lcom/market2345/common/util/DownloadReportProvider;

    .line 263
    const-string v0, "download_report.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 264
    return-void
.end method

.method private createDownLoadReportTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 285
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS download_report"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v1, "CREATE TABLE download_report(_id INTEGER PRIMARY KEY AUTOINCREMENT, download_id TEXT, soft_id TEXT, mac TEXT, imei TEXT, android_id TEXT, platform TEXT, version TEXT, vercode INTEGER, channel TEXT, softName TEXT, sourceFrom INTEGER, is_update INTEGER, type INTEGER, reported INTEGER  );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v1, "CREATE UNIQUE INDEX download_report_unique ON download_report(download_id,type);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "couldn\'t create download_report table in market database"

    invoke-static {v1}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 308
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 268
    const-string v0, "create the new database..."

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 270
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 274
    const-string v0, "update the database..."

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;->createDownLoadReportTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 277
    return-void
.end method
