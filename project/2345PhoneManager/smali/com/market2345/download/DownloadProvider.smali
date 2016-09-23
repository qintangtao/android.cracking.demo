.class public final Lcom/market2345/download/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/DownloadProvider$1;,
        Lcom/market2345/download/DownloadProvider$DatabaseHelper;,
        Lcom/market2345/download/DownloadProvider$SqlSelection;
    }
.end annotation


# static fields
.field public static final AUTHORITIES:Ljava/lang/String; = "com.market2345.vallnyDownloads"

.field public static final CANCEL_DOWNLOADS:I = 0x4

.field public static final CANCEL_DOWNLOADS_ID:I = 0x5

.field public static final CANCEL_DOWNLOADS_URI_PATH:Ljava/lang/String; = "cancel_all_downloads"

.field private static final DB_NAME:Ljava/lang/String; = "downloads1.db"

.field private static final DB_TABLE:Ljava/lang/String; = "downloads1"

.field public static final DB_VERSION:I = 0x78

.field public static final DOWNLOADS:I = 0x1

.field public static final DOWNLOADS_ID:I = 0x2

.field private static final DOWNLOAD_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/download"

.field private static final DOWNLOAD_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/download"

.field private static final INDEX_URI:Ljava/lang/String; = "index_uri"

.field public static final INIT_ALL_DOWNLOADS:I = 0x3

.field public static final INIT_DOWNLOADS_URI_PATH:Ljava/lang/String; = "init_all_downloads"

.field public static final REQUEST_HEADERS_URI:I = 0x7

.field public static final RESUME_ALL_DOWNLOADS:I = 0x6

.field public static final RESUME_DOWNLOADS_URI_PATH:Ljava/lang/String; = "resume_all_downloads"

.field private static final TAG:Ljava/lang/String;

.field public static final URI_PATH:Ljava/lang/String; = "all_downloads"

.field public static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-class v0, Lcom/market2345/download/DownloadProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/DownloadProvider;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 97
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/all_downloads"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/all_downloads/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/init_all_downloads"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/cancel_all_downloads"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/cancel_all_downloads/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/resume_all_downloads"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.vallnyDownloads"

    const-string v2, "#/all_downloads/#/headers"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 156
    return-void
.end method

.method private static copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 734
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 735
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 738
    :cond_0
    return-void
.end method

.method private static copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 727
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 728
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    :cond_0
    return-void
.end method

.method private static copyLong(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 719
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 720
    .local v0, "i":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 723
    :cond_0
    return-void
.end method

.method private static copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 741
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_0
    return-void
.end method

.method private static copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p0, p1, p2}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 750
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_0
    return-void
.end method

.method private deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 598
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 599
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "downloads1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 601
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 603
    .local v10, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 604
    .local v12, "idWhere":Ljava/lang/String;
    const-string v0, "request_headers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    .end local v10    # "id":J
    .end local v12    # "idWhere":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 609
    return-void
.end method

.method private getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getMarketHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/market2345/download/DownloadProvider;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadProvider;->mHandler:Landroid/os/Handler;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/DownloadProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPidFromUri(Landroid/net/Uri;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 453
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 456
    goto :goto_0
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/market2345/download/DownloadProvider$SqlSelection;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "uriMatch"    # I

    .prologue
    .line 678
    new-instance v0, Lcom/market2345/download/DownloadProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/market2345/download/DownloadProvider$SqlSelection;-><init>(Lcom/market2345/download/DownloadProvider$1;)V

    .line 679
    .local v0, "selection":Lcom/market2345/download/DownloadProvider$SqlSelection;
    invoke-virtual {v0, p2, p3}, Lcom/market2345/download/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/4 v1, 0x5

    if-ne p4, v1, :cond_1

    .line 681
    :cond_0
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/market2345/download/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :cond_1
    return-object v0
.end method

.method private insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "downloadId"    # J
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 565
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v5, "rowValues":Landroid/content/ContentValues;
    const-string v6, "download_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 567
    invoke-virtual {p4}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 568
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    .local v3, "key":Ljava/lang/String;
    const-string v6, "http_header_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "headerLine":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 572
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid HTTP header line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 574
    :cond_1
    const-string v6, ":"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "parts":[Ljava/lang/String;
    const-string v6, "header"

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v6, "value"

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v6, "request_headers"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 580
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "headerLine":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sort"    # Ljava/lang/String;
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "starting query, database is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    if-eqz p5, :cond_0

    .line 522
    const-string v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_0
    const-string v2, "null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    if-nez p1, :cond_3

    .line 526
    const-string v2, "projection is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_1
    :goto_0
    const-string v2, "selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    if-nez p3, :cond_5

    .line 542
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_2
    :goto_1
    const-string v2, "sort is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v2, "DownloadManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void

    .line 527
    :cond_3
    array-length v2, p1

    if-nez v2, :cond_4

    .line 528
    const-string v2, "projection is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 530
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 531
    const-string v2, "projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 543
    .end local v0    # "i":I
    :cond_5
    array-length v2, p3

    if-nez v2, :cond_6

    .line 544
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 546
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 547
    const-string v2, "selectionArgs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/market2345/download/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "header"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 590
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "request_headers"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 696
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 698
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 699
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 711
    :pswitch_0
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting unknown/invalid URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 704
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/market2345/download/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/market2345/download/DownloadProvider$SqlSelection;

    move-result-object v3

    .line 705
    .local v3, "selection":Lcom/market2345/download/DownloadProvider$SqlSelection;
    invoke-virtual {v3}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/market2345/download/DownloadProvider;->deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 707
    const-string v4, "downloads1"

    invoke-virtual {v3}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 714
    .local v0, "count":I
    return v0

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 316
    sget-object v1, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 317
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 328
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling getType on an unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/download"

    .line 326
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/download"

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 344
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 345
    .local v17, "match":I
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_0

    .line 346
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling insert on an unknown/invalid URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown/Invalid URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 352
    :cond_0
    const-string v4, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, "downloadUri":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 354
    const-string v7, "uri = ?"

    .line 355
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v14, v8, v4

    .line 356
    .local v8, "selectionArgs":[Ljava/lang/String;
    sget-object v5, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v4

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/market2345/download/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 358
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 359
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [J

    const/4 v9, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/market2345/download/DownloadManager;->deleteDownload(Z[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 370
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_3
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v15, "filteredValues":Landroid/content/ContentValues;
    const-string v4, "uri"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 372
    const-string v4, "entity"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 373
    const-string v4, "mimetype"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 377
    const-string v4, "useragent"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 378
    const-string v4, "referer"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 379
    const-string v4, "packageName"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 380
    const-string v4, "versionName"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 381
    const-string v4, "sid"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 382
    const-string v4, "iconUrl"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 383
    const-string v4, "description"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 385
    const-string v4, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 386
    .local v18, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/market2345/datacenter/DataCenterObserver;->isInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    .line 389
    .local v13, "downType":I
    :goto_1
    const-string v4, "isUpdate"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v4, "versionCode"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 393
    const-string v4, "current_bytes"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v4, "targetSize"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyLong(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 395
    const-string v4, "total_bytes"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyLong(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 397
    const-string v4, "firstMD5"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 398
    const-string v4, "firstMD5_length"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v4, "mNumFailed"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v4, "signatureError"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v4, "lastModified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v4, "certMd5"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 403
    const-string v4, "secondMD5"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 404
    const-string v4, "serverMD5"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 405
    const-string v4, "platform"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 406
    const-string v4, "patchUrl"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 407
    const-string v4, "patchSize"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 408
    const-string v4, "lowMD5"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 411
    const-string v4, "sourcefrom"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 412
    const-string v4, "startInstall"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 413
    const-string v4, "minSDK"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 417
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15, v5}, Lcom/market2345/download/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 420
    const-string v4, "allowed_network_types"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 421
    const-string v4, "status"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 422
    const-string v4, "downPartial"

    move-object/from16 v0, p2

    invoke-static {v4, v0, v15}, Lcom/market2345/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 424
    const-string v4, "downloads1"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 425
    .local v20, "rowID":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_5

    .line 426
    const-string v4, "DownloadManager"

    const-string v5, "couldn\'t insert into downloads database"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v4, 0x0

    .line 441
    :goto_2
    return-object v4

    .line 386
    .end local v13    # "downType":I
    .end local v20    # "rowID":J
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 431
    .restart local v13    # "downType":I
    .restart local v20    # "rowID":J
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/market2345/download/DownloadProvider;->insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 437
    .local v10, "context":Landroid/content/Context;
    new-instance v16, Landroid/content/Intent;

    const-class v4, Lcom/market2345/download/DownloadService;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v16, "intent":Landroid/content/Intent;
    const-string v4, "download.uri.key"

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 439
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 441
    sget-object v4, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/market2345/download/DownloadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/download/DownloadProvider$DatabaseHelper;-><init>(Lcom/market2345/download/DownloadProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v3, p0, Lcom/market2345/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 477
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 479
    .local v11, "match":I
    packed-switch v11, :pswitch_data_0

    .line 497
    :cond_0
    :pswitch_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v0, v1, v11}, Lcom/market2345/download/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/market2345/download/DownloadProvider$SqlSelection;

    move-result-object v10

    .line 499
    .local v10, "fullSelection":Lcom/market2345/download/DownloadProvider$SqlSelection;
    const-string v3, "downloads1"

    invoke-virtual {v10}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 502
    .local v13, "ret":Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 503
    invoke-virtual {p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v13, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 504
    sget-boolean v3, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v3, :cond_1

    .line 505
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created cursor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on behalf of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v10    # "fullSelection":Lcom/market2345/download/DownloadProvider$SqlSelection;
    .end local v13    # "ret":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v13

    .line 482
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadProvider;->getPidFromUri(Landroid/net/Uri;)I

    move-result v12

    .line 483
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v3, v12, :cond_0

    .line 484
    const/4 v13, 0x0

    goto :goto_0

    .line 488
    .end local v12    # "pid":I
    :pswitch_2
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p5, :cond_3

    .line 489
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Request header queries do not support projections, selections or sorting"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/market2345/download/DownloadProvider;->queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    .line 494
    :pswitch_3
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

    .line 509
    .restart local v10    # "fullSelection":Lcom/market2345/download/DownloadProvider$SqlSelection;
    .restart local v13    # "ret":Landroid/database/Cursor;
    :cond_4
    sget-boolean v3, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v3, :cond_1

    .line 510
    const-string v3, "DownloadManager"

    const-string v4, "query failed in downloads database"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 623
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, -0x1

    .line 625
    .local v13, "type":I
    const/4 v11, 0x0

    .line 627
    .local v11, "startService":Z
    const-string v14, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 628
    .local v12, "status":Ljava/lang/Integer;
    if-eqz v12, :cond_0

    .line 629
    const/4 v11, 0x1

    .line 630
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 642
    :cond_0
    :goto_0
    sget-object v14, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 643
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    .line 653
    :pswitch_0
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updating unknown/invalid URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot update URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 632
    .end local v8    # "match":I
    :sswitch_0
    const/4 v13, 0x2

    .line 633
    const-string v14, "lastModified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 636
    :sswitch_1
    const/4 v13, 0x4

    .line 637
    const-string v14, "lastModified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 648
    .restart local v8    # "match":I
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/market2345/download/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/market2345/download/DownloadProvider$SqlSelection;

    move-result-object v10

    .line 649
    .local v10, "selection":Lcom/market2345/download/DownloadProvider$SqlSelection;
    const-string v14, "downloads1"

    invoke-virtual {v10}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Lcom/market2345/download/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v6, v14, v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 658
    .local v5, "count":I
    if-nez v11, :cond_1

    invoke-static {}, Lcom/market2345/download/DownloadService;->getNotifyUriHandler()Landroid/os/Handler;

    move-result-object v14

    if-nez v14, :cond_3

    .line 659
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 660
    .local v4, "context":Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/market2345/download/DownloadService;

    invoke-direct {v7, v4, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .local v7, "intent":Landroid/content/Intent;
    const-string v14, "download.uri.key"

    move-object/from16 v0, p1

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 662
    invoke-virtual {v4, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 669
    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    if-lez v13, :cond_2

    .line 670
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/market2345/log/DownloadLog;->downloadEvent(IJ)V

    .line 672
    :cond_2
    return v5

    .line 664
    :cond_3
    invoke-static {}, Lcom/market2345/download/DownloadService;->getNotifyUriHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 665
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 630
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x25a -> :sswitch_1
    .end sparse-switch

    .line 643
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
