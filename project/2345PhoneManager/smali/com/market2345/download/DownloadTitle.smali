.class public Lcom/market2345/download/DownloadTitle;
.super Lcom/market2345/download/DownloadItem;
.source "DownloadTitle.java"


# static fields
.field public static final DOWN_DOWNLOADING:I = 0x0

.field public static final DOWN_HISTORY:I = 0x2

.field public static final DOWN_WAIT_WIFI:I = 0x1


# instance fields
.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/market2345/download/DownloadItem;-><init>()V

    .line 26
    iput p1, p0, Lcom/market2345/download/DownloadTitle;->mType:I

    .line 27
    return-void
.end method
