.class public Lcom/market2345/log/DownloadErrorResponse;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "DownloadErrorResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/market2345/log/DownloadErrorResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/log/DownloadErrorResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/market2345/log/DownloadErrorResponse;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
