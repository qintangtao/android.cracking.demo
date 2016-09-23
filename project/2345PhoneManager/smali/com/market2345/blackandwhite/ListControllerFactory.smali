.class public Lcom/market2345/blackandwhite/ListControllerFactory;
.super Ljava/lang/Object;
.source "ListControllerFactory.java"


# static fields
.field public static final UPDATEAPPSLIST:Ljava/lang/String; = "updateappslist"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListController(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/blackandwhite/BlackAndWhiteList;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "updateappslist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/market2345/blackandwhite/UpdateAppsListController;

    invoke-direct {v0, p1}, Lcom/market2345/blackandwhite/UpdateAppsListController;-><init>(Landroid/content/Context;)V

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
