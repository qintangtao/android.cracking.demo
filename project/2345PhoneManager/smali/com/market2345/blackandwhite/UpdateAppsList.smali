.class Lcom/market2345/blackandwhite/UpdateAppsList;
.super Ljava/lang/Object;
.source "UpdateAppsList.java"

# interfaces
.implements Lcom/market2345/blackandwhite/BlackAndWhiteList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/market2345/blackandwhite/BlackAndWhiteList",
        "<",
        "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
        ">;"
    }
.end annotation


# instance fields
.field private blackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->sdf:Ljava/text/SimpleDateFormat;

    .line 34
    invoke-direct {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private addApp(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 218
    const-string v3, "deleted"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 219
    .local v1, "deleted":I
    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 220
    .local v2, "listType":I
    if-nez v1, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->getApp(Landroid/database/Cursor;)Lcom/market2345/blackandwhite/model/AppBAWLocal;

    move-result-object v0

    .line 223
    .local v0, "appL":Lcom/market2345/blackandwhite/model/AppBAWLocal;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v0    # "appL":Lcom/market2345/blackandwhite/model/AppBAWLocal;
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v0    # "appL":Lcom/market2345/blackandwhite/model/AppBAWLocal;
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 229
    iget-object v3, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->lastUpdateTime:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/market2345/blackandwhite/UpdateAppsList;->daysToNow(Ljava/util/Date;)I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_2

    .line 231
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0, v0}, Lcom/market2345/blackandwhite/UpdateAppsList;->removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    goto :goto_0
.end method

.method private daysToNow(Ljava/util/Date;)I
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x6

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 251
    .local v0, "aCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 252
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 253
    .local v2, "day1":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    .local v1, "bCalendar":Ljava/util/Calendar;
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 255
    .local v3, "day2":I
    sub-int v4, v3, v2

    return v4
.end method

.method private getApp(Landroid/database/Cursor;)Lcom/market2345/blackandwhite/model/AppBAWLocal;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 196
    new-instance v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    invoke-direct {v0}, Lcom/market2345/blackandwhite/model/AppBAWLocal;-><init>()V

    .line 197
    .local v0, "app":Lcom/market2345/blackandwhite/model/AppBAWLocal;
    const-string v2, "packagename"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    .line 198
    const-string v2, "versionname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->version:Ljava/lang/String;

    .line 199
    const-string v2, "versioncode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->versionCode:I

    .line 200
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->sdf:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->sdf:Ljava/text/SimpleDateFormat;

    .line 206
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->sdf:Ljava/text/SimpleDateFormat;

    const-string v3, "time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->lastUpdateTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mContext:Landroid/content/Context;

    .line 244
    new-instance v0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    iget-object v1, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    .line 245
    invoke-virtual {p0}, Lcom/market2345/blackandwhite/UpdateAppsList;->initList()V

    .line 246
    return-void
.end method


# virtual methods
.method public declared-synchronized addToBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 5
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    const/4 v1, 0x0

    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "packagename"

    iget-object v3, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "versioncode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "versionname"

    iget-object v3, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->version:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v2, "deleted"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    invoke-virtual {v2, v0}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->insert(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const/4 v1, 0x1

    .line 107
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    monitor-exit p0

    return v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic addToBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->addToBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized addToWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 6
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "packagename"

    iget-object v4, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "versioncode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "versionname"

    iget-object v4, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->version:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v3, "deleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    invoke-virtual {v3, v0}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->insert(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic addToWhiteList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->addToWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized clearBlackList()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    const-string v0, "type=? "

    .line 160
    .local v0, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 159
    .end local v0    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearWhiteList()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    monitor-enter p0

    :try_start_0
    const-string v0, "type=? "

    .line 147
    .local v0, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 146
    .end local v0    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBlackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhiteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initList()V
    .locals 8

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "packagename"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "versioncode"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "versionname"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "type"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "deleted"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "time"

    aput-object v2, v1, v0

    .line 176
    .local v1, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 178
    .local v7, "dataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 180
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, v7}, Lcom/market2345/blackandwhite/UpdateAppsList;->addApp(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 188
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v7    # "dataCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v7, :cond_2

    .line 188
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isInBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic isInBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->isInBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isInWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic isInWhiteList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->isInWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 7
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const-string v0, "packagename= ? and type=? "

    .line 117
    .local v0, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->blackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0    # "whereClause":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic removeFromBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeFromWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 7
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string v0, "packagename= ? and type=? "

    .line 79
    .local v0, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->mHelper:Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v2, p0, Lcom/market2345/blackandwhite/UpdateAppsList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v0    # "whereClause":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic removeFromWhiteList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->removeFromWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method
