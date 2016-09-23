.class public Lcom/market2345/dumpclean/mode/JunkChildCache;
.super Lcom/market2345/dumpclean/mode/JunkChild;
.source "JunkChildCache.java"


# static fields
.field public static final adSdk:Ljava/lang/String; = "adsdk"

.field public static final systemCachePackName:Ljava/lang/String; = "com.android.system.cache"


# instance fields
.field public childCacheOfChild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;",
            ">;"
        }
    .end annotation
.end field

.field public isExpanded:Z

.field public packageName:Ljava/lang/String;

.field public tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/market2345/dumpclean/mode/JunkChild;-><init>()V

    return-void
.end method
