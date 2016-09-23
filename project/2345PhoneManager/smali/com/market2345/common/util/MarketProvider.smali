.class public Lcom/market2345/common/util/MarketProvider;
.super Landroid/content/ContentProvider;
.source "MarketProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/common/util/MarketProvider$1;,
        Lcom/market2345/common/util/MarketProvider$DatabaseHelper;,
        Lcom/market2345/common/util/MarketProvider$SqlSelection;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.market2345.2345market"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_INSTALLED:Ljava/lang/String; = "installed"

.field public static final COLUMN_SEARCH_KEY_WORD:Ljava/lang/String; = "keyword"

.field public static final COLUMN_UPDATE_CONTENT:Ljava/lang/String; = "update_content"

.field public static final COLUMN_ad:Ljava/lang/String; = "ad"

.field public static final COLUMN_category_id:Ljava/lang/String; = "category_id"

.field public static final COLUMN_category_title:Ljava/lang/String; = "category_title"

.field public static final COLUMN_certMd5:Ljava/lang/String; = "certMd5"

.field public static final COLUMN_charge:Ljava/lang/String; = "charge"

.field public static final COLUMN_fileLength:Ljava/lang/String; = "fileLength"

.field public static final COLUMN_icon:Ljava/lang/String; = "icon"

.field public static final COLUMN_mark:Ljava/lang/String; = "mark"

.field public static final COLUMN_minSDK:Ljava/lang/String; = "minSDK"

.field public static final COLUMN_oneword:Ljava/lang/String; = "oneword"

.field public static final COLUMN_packageName:Ljava/lang/String; = "packageName"

.field public static final COLUMN_publicDate:Ljava/lang/String; = "publicDate"

.field public static final COLUMN_safe:Ljava/lang/String; = "safe"

.field public static final COLUMN_screenslot:Ljava/lang/String; = "screenslot"

.field public static final COLUMN_sid:Ljava/lang/String; = "sid"

.field public static final COLUMN_slabel:Ljava/lang/String; = "slabel"

.field public static final COLUMN_summary:Ljava/lang/String; = "summary"

.field public static final COLUMN_sysIng:Ljava/lang/String; = "sysIng"

.field public static final COLUMN_tagName:Ljava/lang/String; = "tagName"

.field public static final COLUMN_title:Ljava/lang/String; = "title"

.field public static final COLUMN_totalDowns:Ljava/lang/String; = "totalDowns"

.field public static final COLUMN_url:Ljava/lang/String; = "url"

.field public static final COLUMN_version:Ljava/lang/String; = "version"

.field public static final COLUMN_versionCode:Ljava/lang/String; = "versionCode"

.field private static final DB_NAME:Ljava/lang/String; = "market.db"

.field private static final DB_VERSION:I = 0xa

.field public static final INSTALLED_FALSE:I = 0x2

.field public static final INSTALLED_SUCCESS:I = 0x1

.field private static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field private static final LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final LM_UPDATE_REPORTS:I = 0x9

.field private static final LM_UPDATE_REPORTS_ID:I = 0xa

.field public static final RECEIVER_URL:Landroid/net/Uri;

.field private static final REPORTS:I = 0x5

.field private static final REPORTS_ID:I = 0x6

.field public static final REPORT_LM_UPDATE_URL:Landroid/net/Uri;

.field public static final REPORT_URL:Landroid/net/Uri;

.field public static final SEARCH_CONTENT_URI:Landroid/net/Uri;

.field private static final SEARCH_HISTORY:I = 0x1

.field private static final SEARCH_HISTORY_ID:I = 0x2

.field public static final TABLE_LM_UPDATE_REPORTS:Ljava/lang/String; = "lm_update_reports"

.field public static final TABLE_REPORTS:Ljava/lang/String; = "reports"

.field public static final TABLE_SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field public static final TABLE_UPDATES:Ljava/lang/String; = "updates"

.field public static final TABLE_WIFI_RECEIVE:Ljava/lang/String; = "wifireceive"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_CONTENT_URI:Landroid/net/Uri;

.field private static final UPDATE_PRODUCT:I = 0x4

.field private static final WIFI_RECEIVE:I = 0x7

.field private static final WIFI_RECEIVE_ID:I = 0x8

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const-class v0, Lcom/market2345/common/util/MarketProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 101
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "search_history"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "search_history/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "updates"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "reports"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "reports/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "lm_update_reports"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "lm_update_reports/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "wifireceive"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345market"

    const-string v2, "wifireceive/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    const-string v0, "content://com.market2345.2345market/search_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->SEARCH_CONTENT_URI:Landroid/net/Uri;

    .line 120
    const-string v0, "content://com.market2345.2345market/updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    .line 122
    const-string v0, "content://com.market2345.2345market/reports"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    .line 124
    const-string v0, "content://com.market2345.2345market/lm_update_reports"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->REPORT_LM_UPDATE_URL:Landroid/net/Uri;

    .line 126
    const-string v0, "content://com.market2345.2345market/wifireceive"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/MarketProvider;->RECEIVER_URL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/common/util/MarketProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 249
    return-void
.end method

.method private static getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/market2345/common/util/MarketProvider$SqlSelection;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Lcom/market2345/common/util/MarketProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/market2345/common/util/MarketProvider$SqlSelection;-><init>(Lcom/market2345/common/util/MarketProvider$1;)V

    .line 539
    .local v0, "selection":Lcom/market2345/common/util/MarketProvider$SqlSelection;
    invoke-virtual {v0, p1, p2}, Lcom/market2345/common/util/MarketProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
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
    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "starting query, database is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    if-eqz p4, :cond_0

    .line 552
    const-string v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_0
    const-string v2, "null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    if-nez p0, :cond_3

    .line 557
    const-string v2, "projection is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_1
    :goto_0
    const-string v2, "selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    if-nez p2, :cond_5

    .line 579
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_2
    :goto_1
    const-string v2, "sort is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 600
    return-void

    .line 559
    :cond_3
    array-length v2, p0

    if-nez v2, :cond_4

    .line 561
    const-string v2, "projection is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 565
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 567
    const-string v2, "projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 581
    .end local v0    # "i":I
    :cond_5
    array-length v2, p2

    if-nez v2, :cond_6

    .line 583
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 587
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 589
    const-string v2, "selectionArgs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uriMatch"    # I

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/market2345/common/util/MarketProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 511
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 439
    sget-object v5, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 440
    .local v2, "match":I
    iget-object v5, p0, Lcom/market2345/common/util/MarketProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 441
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/market2345/common/util/MarketProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "table":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/market2345/common/util/MarketProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/market2345/common/util/MarketProvider$SqlSelection;

    move-result-object v3

    .line 443
    .local v3, "selection":Lcom/market2345/common/util/MarketProvider$SqlSelection;
    invoke-virtual {v3}, Lcom/market2345/common/util/MarketProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/market2345/common/util/MarketProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 445
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 447
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

    .line 452
    :goto_0
    return v0

    .line 451
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/market2345/common/util/MarketProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 372
    sget-object v1, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 373
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 407
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 376
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/search_history"

    goto :goto_0

    .line 379
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/search_history"

    goto :goto_0

    .line 382
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/updates"

    goto :goto_0

    .line 385
    :pswitch_4
    const-string v1, "vnd.android.cursor.dir/reports"

    goto :goto_0

    .line 388
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/reports"

    goto :goto_0

    .line 392
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/wifireceive"

    goto :goto_0

    .line 396
    :pswitch_7
    const-string v1, "vnd.android.cursor.dir/wifireceive"

    goto :goto_0

    .line 399
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/lm_update_reports"

    goto :goto_0

    .line 402
    :pswitch_9
    const-string v1, "vnd.android.cursor.item/lm_update_reports"

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 417
    sget-object v6, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 419
    .local v2, "match":I
    iget-object v6, p0, Lcom/market2345/common/util/MarketProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 420
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/market2345/common/util/MarketProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "table":Ljava/lang/String;
    invoke-virtual {v0, v3, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 422
    .local v4, "rowID":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 424
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

    .line 430
    :goto_0
    return-object v1

    .line 428
    :cond_0
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 429
    .local v1, "inserResult":Landroid/net/Uri;
    invoke-direct {p0, p1, v2}, Lcom/market2345/common/util/MarketProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lcom/market2345/common/util/MarketProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/market2345/common/util/MarketProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/common/util/MarketProvider$DatabaseHelper;-><init>(Lcom/market2345/common/util/MarketProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/common/util/MarketProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 362
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
    .line 482
    iget-object v6, p0, Lcom/market2345/common/util/MarketProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 484
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 485
    .local v13, "match":I
    const/4 v6, -0x1

    if-ne v13, v6, :cond_0

    .line 487
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

    .line 488
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

    .line 491
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/market2345/common/util/MarketProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/market2345/common/util/MarketProvider$SqlSelection;

    move-result-object v12

    .line 493
    .local v12, "fullSelection":Lcom/market2345/common/util/MarketProvider$SqlSelection;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/market2345/common/util/MarketProvider;->logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 495
    invoke-static/range {p1 .. p1}, Lcom/market2345/common/util/MarketProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "table":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/market2345/common/util/MarketProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/market2345/common/util/MarketProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 498
    .local v14, "ret":Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 500
    const-string v6, "query failed in market database"

    invoke-static {v6}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;)V

    .line 502
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
    .line 462
    iget-object v3, p0, Lcom/market2345/common/util/MarketProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 464
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/market2345/common/util/MarketProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 465
    .local v1, "match":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 467
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

    .line 468
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

    .line 471
    :cond_0
    invoke-static {p1}, Lcom/market2345/common/util/MarketProvider;->getTableFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "table":Ljava/lang/String;
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
