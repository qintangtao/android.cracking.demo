.class public Lcom/market2345/cacheclean/AppSDCacheInfo;
.super Ljava/lang/Object;
.source "AppSDCacheInfo.java"


# instance fields
.field private appname:Ljava/lang/String;

.field private cachePath:Ljava/lang/String;

.field private cacheSize:J

.field private icon:Landroid/graphics/drawable/Drawable;

.field private packname:Ljava/lang/String;

.field private select:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 96
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 97
    check-cast v0, Lcom/market2345/cacheclean/AppSDCacheInfo;

    .line 98
    .local v0, "other":Lcom/market2345/cacheclean/AppSDCacheInfo;
    iget-object v3, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 100
    iget-object v3, v0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 101
    goto :goto_0

    .line 103
    :cond_4
    iget-object v3, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    iget-object v4, v0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheSize()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->cacheSize:J

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 74
    .local v1, "result":I
    iget-object v2, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 75
    return v1

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->select:Z

    return v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->appname:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCachePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->cachePath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCacheSize(J)V
    .locals 1
    .param p1, "cacheSize"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->cacheSize:J

    .line 57
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method

.method public setPackname(Ljava/lang/String;)V
    .locals 0
    .param p1, "packname"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->select:Z

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppCacheInfo [pagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->packname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pagepath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/AppSDCacheInfo;->cachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
