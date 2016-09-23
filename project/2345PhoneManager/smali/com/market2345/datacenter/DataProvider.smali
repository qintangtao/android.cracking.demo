.class public Lcom/market2345/datacenter/DataProvider;
.super Landroid/content/ContentProvider;
.source "DataProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.market2345.2345dataprovider"

.field public static final PATH:Ljava/lang/String; = "needupdatedata"

.field private static final URImather:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/market2345/datacenter/DataProvider;->URImather:Landroid/content/UriMatcher;

    .line 24
    sget-object v0, Lcom/market2345/datacenter/DataProvider;->URImather:Landroid/content/UriMatcher;

    const-string v1, "com.market2345.2345dataprovider"

    const-string v2, "needupdatedata"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    const-string v0, "1"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 56
    const-string v0, "content://com.market2345.2345dataprovider/needupdatedata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/market2345/datacenter/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    .line 37
    .local v1, "data":Lcom/market2345/datacenter/DataCenterObserver;
    new-instance v0, Lcom/market2345/datacenter/UpdateDataCursor;

    invoke-direct {v0}, Lcom/market2345/datacenter/UpdateDataCursor;-><init>()V

    .line 38
    .local v0, "cursor":Lcom/market2345/datacenter/UpdateDataCursor;
    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/market2345/datacenter/UpdateDataCursor;->setDatas(Ljava/util/HashMap;)V

    .line 42
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
