.class public Lcom/market2345/blackandwhite/UpdateAppsListController;
.super Ljava/lang/Object;
.source "UpdateAppsListController.java"

# interfaces
.implements Lcom/market2345/blackandwhite/BlackAndWhiteList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/market2345/blackandwhite/BlackAndWhiteList",
        "<",
        "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
        ">;"
    }
.end annotation


# instance fields
.field private appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/market2345/blackandwhite/UpdateAppsList;

    iget-object v1, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/blackandwhite/UpdateAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    .line 107
    return-void
.end method


# virtual methods
.method public addToBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->addToBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addToBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->addToBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public addToWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->addToWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addToWhiteList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->addToWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public clearBlackList()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0}, Lcom/market2345/blackandwhite/UpdateAppsList;->clearBlackList()Z

    move-result v0

    return v0
.end method

.method public clearWhiteList()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0}, Lcom/market2345/blackandwhite/UpdateAppsList;->clearWhiteList()Z

    move-result v0

    return v0
.end method

.method public getBlackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0}, Lcom/market2345/blackandwhite/UpdateAppsList;->getBlackList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/blackandwhite/model/AppBAWLocal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0}, Lcom/market2345/blackandwhite/UpdateAppsList;->getWhiteList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public initList()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public isInBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->isInBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->isInBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->isInWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInWhiteList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->isInWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeFromBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public removeFromWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z
    .locals 1
    .param p1, "t"    # Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateAppsListController;->appsList:Lcom/market2345/blackandwhite/UpdateAppsList;

    invoke-virtual {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsList;->removeFromWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeFromWhiteList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;->removeFromWhiteList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    return v0
.end method
