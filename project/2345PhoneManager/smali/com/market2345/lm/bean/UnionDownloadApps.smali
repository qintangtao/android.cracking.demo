.class public Lcom/market2345/lm/bean/UnionDownloadApps;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "UnionDownloadApps.java"


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public dataString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadApps;->appList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadApps;->appList:Ljava/util/List;

    .line 36
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/market2345/lm/util/ParaserUtils;->parser2List(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadApps;->appList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionDownloadApps;->dataString:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
