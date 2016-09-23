.class public Lcom/market2345/datacenter/UpdateDataCursor;
.super Ljava/lang/Object;
.source "UpdateDataCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private apps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 198
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [B

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 167
    const-string v0, ""

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "apps"

    iget-object v2, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 313
    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 191
    const-string v0, ""

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget v1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget v1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    iget-object v2, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 137
    :cond_0
    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget v1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    add-int v0, v1, p1

    .line 61
    .local v0, "posiBuf":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iput v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    .line 63
    const/4 v1, 0x1

    .line 66
    .end local v0    # "posiBuf":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToNext()Z
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    iget v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 74
    iput p1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/market2345/datacenter/UpdateDataCursor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/market2345/datacenter/UpdateDataCursor;->mPosition:I

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 271
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 283
    return-void
.end method

.method public requery()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDatas(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "datas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    iput-object p1, p0, Lcom/market2345/datacenter/UpdateDataCursor;->apps:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 295
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 277
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 289
    return-void
.end method
