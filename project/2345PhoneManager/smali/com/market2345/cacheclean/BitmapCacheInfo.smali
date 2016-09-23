.class public Lcom/market2345/cacheclean/BitmapCacheInfo;
.super Ljava/lang/Object;
.source "BitmapCacheInfo.java"


# instance fields
.field private bitmapNum:I

.field private bitmapSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getBitmapNum()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/market2345/cacheclean/BitmapCacheInfo;->bitmapNum:I

    return v0
.end method

.method public getBitmapSize()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/market2345/cacheclean/BitmapCacheInfo;->bitmapSize:J

    return-wide v0
.end method

.method public setBitmapNum(I)V
    .locals 0
    .param p1, "bitmapNum"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/market2345/cacheclean/BitmapCacheInfo;->bitmapNum:I

    .line 22
    return-void
.end method

.method public setBitmapSize(J)V
    .locals 1
    .param p1, "bitmapSize"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/market2345/cacheclean/BitmapCacheInfo;->bitmapSize:J

    .line 32
    return-void
.end method
