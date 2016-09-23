.class public Lcom/market2345/cacheclean/AppRamCacheInfo;
.super Ljava/lang/Object;
.source "AppRamCacheInfo.java"


# instance fields
.field private iv_icon:Landroid/graphics/drawable/Drawable;

.field private packname:Ljava/lang/String;

.field private tv_name:Ljava/lang/String;

.field private tv_size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIv_icon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->iv_icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->packname:Ljava/lang/String;

    return-object v0
.end method

.method public getTv_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->tv_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTv_size()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->tv_size:J

    return-wide v0
.end method

.method public setIv_icon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "iv_icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->iv_icon:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method public setPackname(Ljava/lang/String;)V
    .locals 0
    .param p1, "packname"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->packname:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setTv_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "tv_name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->tv_name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTv_size(J)V
    .locals 1
    .param p1, "tv_size"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->tv_size:J

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheClean [tv_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->tv_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tv_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/market2345/cacheclean/AppRamCacheInfo;->tv_size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
