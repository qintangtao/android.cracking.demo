.class public Lcom/market2345/common/util/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# static fields
.field private static RetryQueryUpdate:Z

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "DBUtils"

    sput-object v0, Lcom/market2345/common/util/DBUtils;->tag:Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/market2345/common/util/DBUtils;->RetryQueryUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSearchItem(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/market2345/common/util/MarketProvider;->SEARCH_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addUpdateProduct(Landroid/content/Context;Ljava/util/List;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    const/4 v6, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "deleteCount":I
    sget-object v4, Lcom/market2345/common/util/DBUtils;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 141
    .local v3, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 143
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/model/App;

    invoke-virtual {v4}, Lcom/market2345/model/App;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 147
    .local v2, "result":I
    sget-object v4, Lcom/market2345/common/util/DBUtils;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bulkInsert:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v2
.end method

.method public static addUpdateProduct(Landroid/content/Context;Lcom/market2345/model/App;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/market2345/model/App;

    .prologue
    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sid"

    iget v2, p1, Lcom/market2345/model/App;->sid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "category_id"

    iget-object v2, p1, Lcom/market2345/model/App;->category_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "category_title"

    iget-object v2, p1, Lcom/market2345/model/App;->category_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "title"

    iget-object v2, p1, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "version"

    iget-object v2, p1, Lcom/market2345/model/App;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "packageName"

    iget-object v2, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "versionCode"

    iget v2, p1, Lcom/market2345/model/App;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v1, "totalDowns"

    iget-object v2, p1, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "fileLength"

    iget-object v2, p1, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "publicDate"

    iget-object v2, p1, Lcom/market2345/model/App;->publicDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "mark"

    iget-object v2, p1, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "summary"

    iget-object v2, p1, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "url"

    iget-object v2, p1, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "icon"

    iget-object v2, p1, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "screenslot"

    iget-object v2, p1, Lcom/market2345/model/App;->smallimgInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static clearSearchHistory(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->SEARCH_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static clearUpdateProduct(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static querySearchHistory(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->SEARCH_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 80
    const-string v0, "keyword"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, "fieldIndex":I
    const/4 v8, 0x0

    .line 82
    .local v8, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0x13

    if-le v8, v0, :cond_2

    .line 91
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    .end local v7    # "fieldIndex":I
    .end local v8    # "index":I
    :cond_1
    return-object v9

    .line 88
    .restart local v7    # "fieldIndex":I
    .restart local v8    # "index":I
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static queryUpdateProduct(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v8, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 213
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v7, Lcom/market2345/model/App;

    invoke-direct {v7}, Lcom/market2345/model/App;-><init>()V

    .line 216
    .local v7, "info":Lcom/market2345/model/App;
    const-string v0, "sid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/market2345/model/App;->sid:I

    .line 217
    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 218
    const-string v0, "version"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->version:Ljava/lang/String;

    .line 219
    const-string v0, "versionCode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/market2345/model/App;->versionCode:I

    .line 220
    const-string v0, "mark"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    .line 221
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 222
    const-string v0, "fileLength"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    .line 223
    const-string v0, "icon"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    .line 224
    const-string v0, "url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 226
    iget-object v0, v7, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    .end local v7    # "info":Lcom/market2345/model/App;
    :cond_0
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 246
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    return-object v8

    .line 235
    :cond_2
    sget-boolean v0, Lcom/market2345/common/util/DBUtils;->RetryQueryUpdate:Z

    if-nez v0, :cond_3

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/market2345/common/util/DBUtils;->RetryQueryUpdate:Z

    .line 238
    invoke-static {p0}, Lcom/market2345/common/util/DBUtils;->queryUpdateProduct(Landroid/content/Context;)Ljava/util/HashMap;

    goto :goto_1

    .line 242
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/market2345/common/util/DBUtils;->RetryQueryUpdate:Z

    goto :goto_1
.end method

.method public static removeUpgradable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "packageName = ? "

    .line 168
    .local v2, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 169
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v4, Lcom/market2345/common/util/MarketProvider;->UPDATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "deleteCount":I
    invoke-static {p0}, Lcom/market2345/common/util/DBUtils;->queryUpdateProduct(Landroid/content/Context;)Ljava/util/HashMap;

    .line 183
    return-void
.end method
