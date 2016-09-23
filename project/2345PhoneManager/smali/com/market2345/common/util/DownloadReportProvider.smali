.class public Lcom/market2345/common/util/DownloadReportProvider;
.super Landroid/content/ContentProvider;
.source "DownloadReportProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/common/util/DownloadReportProvider$1;,
        Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;,
        Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field public static final COLUMN_ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final COLUMN_CHANNEL:Ljava/lang/String; = "channel"

.field public static final COLUMN_DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final COLUMN_DOWNLOAD_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_IMEI:Ljava/lang/String; = "imei"

.field public static final COLUMN_IS_UPDATE:Ljava/lang/String; = "is_update"

.field public static final COLUMN_MAC:Ljava/lang/String; = "mac"

.field public static final COLUMN_PLATFORM:Ljava/lang/String; = "platform"

.field public static final COLUMN_REPORTED:Ljava/lang/String; = "reported"

.field public static final COLUMN_SOFTNAME:Ljava/lang/String; = "softName"

.field public static final COLUMN_SOFT_ID:Ljava/lang/String; = "soft_id"

.field public static final COLUMN_SOURCEFROM:Ljava/lang/String; = "sourceFrom"

.field public static final COLUMN_VERCODE:Ljava/lang/String; = "vercode"

.field public static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final DB_NAME:Ljava/lang/String; = "download_report.db"

.field private static final DB_VERSION:I = 0x5

.field private static final DOWNLOAD_REPORTS:I = 0x0

.field private static final DOWNLOAD_REPORT_ID:I = 0x1

.field public static final DOWNLOAD_REPORT_URL:Landroid/net/Uri;

.field private static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field private static final LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field public static final MAPI:Ljava/lang/String; = "mapi"

.field public static final MAPI_WIFI:Ljava/lang/String; = "mapi_wifi"

.field public static final REPORTED:I = 0x1

.field public static final SOURCEFROM_LM:I = 0x2

.field public static final SOURCEFROM_NORMAL:I = 0x1

.field public static final SOURCEFROM_NORMAL_TO_LM:I = 0x3

.field public static final TABLE_DOWNLOAD_REPORT:Ljava/lang/String; = "download_report"

.field public static final UNIQUE_INDEX_DOWNLOAD_REPORT:Ljava/lang/String; = "download_report_unique"

.field public static final UNREPORTED:I

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 110
    const-string v0, "com.market2345.2345market_download_report"

    sput-object v0, Lcom/market2345/common/util/DownloadReportProvider;->AUTHORITY:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/DownloadReportProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download_report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/DownloadReportProvider;->DOWNLOAD_REPORT_URL:Landroid/net/Uri;

    .line 218
    sget-object v0, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/market2345/common/util/DownloadReportProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "download_report/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/market2345/common/util/DownloadReportProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "download_report"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/common/util/DownloadReportProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 261
    return-void
.end method

.method private static getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 468
    new-instance v0, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;-><init>(Lcom/market2345/common/util/DownloadReportProvider$1;)V

    .line 469
    .local v0, "selection":Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;
    invoke-virtual {v0, p1, p2}, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    return-object v0
.end method

.method private static logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "starting query, database is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    if-eqz p4, :cond_0

    .line 480
    const-string v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_0
    const-string v2, "null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    if-nez p0, :cond_3

    .line 484
    const-string v2, "projection is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    :goto_0
    const-string v2, "selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    if-nez p2, :cond_5

    .line 500
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_2
    :goto_1
    const-string v2, "sort is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 516
    return-void

    .line 485
    :cond_3
    array-length v2, p0

    if-nez v2, :cond_4

    .line 486
    const-string v2, "projection is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 488
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 489
    const-string v2, "projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 501
    .end local v0    # "i":I
    :cond_5
    array-length v2, p2

    if-nez v2, :cond_6

    .line 502
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 504
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 505
    const-string v2, "selectionArgs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uriMatch"    # I

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/market2345/common/util/DownloadReportProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 446
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 377
    sget-object v5, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 378
    .local v2, "match":I
    iget-object v5, p0, Lcom/market2345/common/util/DownloadReportProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 379
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/market2345/common/util/DownloadReportProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "table":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/market2345/common/util/DownloadReportProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;

    move-result-object v3

    .line 381
    .local v3, "selection":Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;
    invoke-virtual {v3}, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 383
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t delete URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 389
    :goto_0
    return v0

    .line 388
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/market2345/common/util/DownloadReportProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 334
    sget-object v1, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 335
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 343
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 337
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/download_report"

    goto :goto_0

    .line 339
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/download_report"

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 354
    sget-object v6, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 356
    .local v2, "match":I
    iget-object v6, p0, Lcom/market2345/common/util/DownloadReportProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 357
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/market2345/common/util/DownloadReportProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "table":Ljava/lang/String;
    invoke-virtual {v0, v3, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 359
    .local v4, "rowID":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t insert into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " database"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 366
    :goto_0
    return-object v1

    .line 364
    :cond_0
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 365
    .local v1, "inserResult":Landroid/net/Uri;
    invoke-direct {p0, p1, v2}, Lcom/market2345/common/util/DownloadReportProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/market2345/common/util/DownloadReportProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/common/util/DownloadReportProvider$DatabaseHelper;-><init>(Lcom/market2345/common/util/DownloadReportProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/common/util/DownloadReportProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v6, p0, Lcom/market2345/common/util/DownloadReportProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 422
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 423
    .local v13, "match":I
    const/4 v6, -0x1

    if-ne v13, v6, :cond_0

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "querying unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 425
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 428
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/market2345/common/util/DownloadReportProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;

    move-result-object v12

    .line 430
    .local v12, "fullSelection":Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/market2345/common/util/DownloadReportProvider;->logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    invoke-static/range {p1 .. p1}, Lcom/market2345/common/util/DownloadReportProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "table":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/market2345/common/util/DownloadReportProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 435
    .local v14, "ret":Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 436
    const-string v6, "query failed in market database"

    invoke-static {v6}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 438
    :cond_1
    return-object v14
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 400
    iget-object v3, p0, Lcom/market2345/common/util/DownloadReportProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/market2345/common/util/DownloadReportProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 403
    .local v1, "match":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 405
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    :cond_0
    invoke-static {p1}, Lcom/market2345/common/util/DownloadReportProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "table":Ljava/lang/String;
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
