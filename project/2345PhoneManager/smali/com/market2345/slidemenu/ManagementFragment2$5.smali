.class Lcom/market2345/slidemenu/ManagementFragment2$5;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->updateShowCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/market2345/model/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$5;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/market2345/model/App;Lcom/market2345/model/App;)I
    .locals 5
    .param p1, "lhs"    # Lcom/market2345/model/App;
    .param p2, "rhs"    # Lcom/market2345/model/App;

    .prologue
    const/4 v3, 0x0

    .line 367
    :try_start_0
    iget-object v4, p1, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 368
    .local v1, "lhsNumber":I
    iget-object v4, p2, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 369
    .local v2, "rhsNumber":I
    if-le v1, v2, :cond_1

    .line 370
    const/4 v3, -0x1

    .line 377
    .end local v1    # "lhsNumber":I
    .end local v2    # "rhsNumber":I
    :cond_0
    :goto_0
    return v3

    .line 371
    .restart local v1    # "lhsNumber":I
    .restart local v2    # "rhsNumber":I
    :cond_1
    if-eq v1, v2, :cond_0

    .line 374
    const/4 v3, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "lhsNumber":I
    .end local v2    # "rhsNumber":I
    :catch_0
    move-exception v0

    .line 377
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, Lcom/market2345/model/App;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/market2345/model/App;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/market2345/slidemenu/ManagementFragment2$5;->compare(Lcom/market2345/model/App;Lcom/market2345/model/App;)I

    move-result v0

    return v0
.end method
