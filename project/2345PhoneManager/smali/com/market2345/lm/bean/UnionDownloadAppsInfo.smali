.class public Lcom/market2345/lm/bean/UnionDownloadAppsInfo;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "UnionDownloadAppsInfo.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/lm/bean/UnionGroups;",
            ">;"
        }
    .end annotation
.end field

.field private softlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/lm/bean/UnionAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private spreader_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;

    .line 60
    .local v0, "datas":Lcom/market2345/lm/bean/UnionDownloadAppsInfo;
    if-eqz v0, :cond_0

    .line 61
    iget-object v2, v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->errorCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->errorCode:Ljava/lang/String;

    .line 62
    iget-object v2, v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->softlist:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->softlist:Ljava/util/ArrayList;

    .line 63
    iget-object v2, v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->spreader_name:Ljava/lang/String;

    iput-object v2, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->spreader_name:Ljava/lang/String;

    .line 64
    iget-object v2, v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->groups:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->groups:Ljava/util/ArrayList;

    .line 66
    :cond_0
    return-void
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/lm/bean/UnionGroups;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSoftlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/lm/bean/UnionAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->softlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpreader_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->spreader_name:Ljava/lang/String;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->errorCode:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setGroups(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/lm/bean/UnionGroups;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/lm/bean/UnionGroups;>;"
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->groups:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public setSoftlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/lm/bean/UnionAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "softlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->softlist:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public setSpreader_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "spreader_name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->spreader_name:Ljava/lang/String;

    .line 49
    return-void
.end method
