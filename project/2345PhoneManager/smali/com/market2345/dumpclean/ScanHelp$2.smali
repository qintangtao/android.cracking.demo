.class Lcom/market2345/dumpclean/ScanHelp$2;
.super Ljava/lang/Object;
.source "ScanHelp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ScanHelp;->initDataFromScan()V
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
        "Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ScanHelp;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ScanHelp;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp$2;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;)I
    .locals 4
    .param p1, "lhs"    # Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .param p2, "rhs"    # Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .prologue
    .line 258
    iget-wide v0, p1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    iget-wide v2, p2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 259
    const/4 v0, -0x1

    .line 264
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-wide v0, p1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    iget-wide v2, p2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 261
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 254
    check-cast p1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/market2345/dumpclean/ScanHelp$2;->compare(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;)I

    move-result v0

    return v0
.end method
