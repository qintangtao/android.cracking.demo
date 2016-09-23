.class public Lcom/market2345/model/AppListDatasNew$SortComparator;
.super Ljava/lang/Object;
.source "AppListDatasNew.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/model/AppListDatasNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/market2345/model/AppNew;",
        ">;"
    }
.end annotation


# instance fields
.field random:Ljava/util/Random;

.field final synthetic this$0:Lcom/market2345/model/AppListDatasNew;


# direct methods
.method public constructor <init>(Lcom/market2345/model/AppListDatasNew;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/market2345/model/AppListDatasNew$SortComparator;->this$0:Lcom/market2345/model/AppListDatasNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/market2345/model/AppListDatasNew$SortComparator;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public compare(Lcom/market2345/model/AppNew;Lcom/market2345/model/AppNew;)I
    .locals 2
    .param p1, "lhs"    # Lcom/market2345/model/AppNew;
    .param p2, "rhs"    # Lcom/market2345/model/AppNew;

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/market2345/model/AppListDatasNew$SortComparator;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p1, Lcom/market2345/model/AppNew;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/market2345/model/AppNew;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/market2345/model/AppListDatasNew$SortComparator;->compare(Lcom/market2345/model/AppNew;Lcom/market2345/model/AppNew;)I

    move-result v0

    return v0
.end method
