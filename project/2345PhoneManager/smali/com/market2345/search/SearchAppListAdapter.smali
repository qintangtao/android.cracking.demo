.class public Lcom/market2345/search/SearchAppListAdapter;
.super Lcom/market2345/applist/AppListAdapter;
.source "SearchAppListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/applist/AppListAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    .line 39
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
