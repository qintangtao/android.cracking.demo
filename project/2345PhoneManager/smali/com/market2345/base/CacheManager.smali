.class public Lcom/market2345/base/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static objectId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static objectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/market2345/base/CacheManager;->objectId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyObject(Ljava/lang/Object;)J
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const-wide/16 v0, 0x0

    .line 26
    :goto_0
    return-wide v0

    .line 24
    :cond_0
    sget-object v2, Lcom/market2345/base/CacheManager;->objectId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 25
    .local v0, "key":J
    sget-object v2, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static applyObjectWithKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    return-void
.end method

.method public static getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isObjectExist(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "objectId"    # Ljava/lang/Object;

    .prologue
    .line 44
    sget-object v0, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static retrieveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "objectKey"    # Ljava/lang/Object;

    .prologue
    .line 37
    sget-object v0, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "objectId"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/market2345/base/CacheManager;->isObjectExist(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/market2345/base/CacheManager;->objectMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method
