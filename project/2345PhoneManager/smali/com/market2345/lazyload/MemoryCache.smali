.class public Lcom/market2345/lazyload/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0xa

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    .line 16
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    .line 18
    const-wide/32 v2, 0x100000

    iput-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->limit:J

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    div-long v0, v2, v6

    .line 24
    .local v0, "d":J
    iget-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->limit:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-direct {p0, v2, v3}, Lcom/market2345/lazyload/MemoryCache;->setLimit(J)V

    .line 28
    :cond_0
    return-void
.end method

.method private checkSize()V
    .locals 6

    .prologue
    .line 87
    iget-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    iget-wide v4, p0, Lcom/market2345/lazyload/MemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-wide v4, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/market2345/lazyload/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 95
    iget-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    iget-wide v4, p0, Lcom/market2345/lazyload/MemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 99
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_1
    return-void
.end method

.method private setLimit(J)V
    .locals 1
    .param p1, "new_limit"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/market2345/lazyload/MemoryCache;->limit:J

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 47
    :goto_0
    return-object v1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v2

    .line 47
    goto :goto_0
.end method

.method getSizeInBytes(Landroid/graphics/Bitmap;)J
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-wide/16 v0, 0x0

    .line 119
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method hasMemoryCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/market2345/lazyload/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/market2345/lazyload/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    invoke-virtual {p0, p2}, Lcom/market2345/lazyload/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/market2345/lazyload/MemoryCache;->size:J

    .line 77
    invoke-direct {p0}, Lcom/market2345/lazyload/MemoryCache;->checkSize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
