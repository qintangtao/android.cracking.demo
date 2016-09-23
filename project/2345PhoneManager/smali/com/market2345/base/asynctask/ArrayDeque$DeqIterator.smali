.class Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/asynctask/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lcom/market2345/base/asynctask/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/market2345/base/asynctask/ArrayDeque;)V
    .locals 1

    .prologue
    .line 584
    .local p0, "this":Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;, "Lcom/market2345/base/asynctask/ArrayDeque<TE;>.DeqIterator;"
    iput-object p1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iget-object v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/market2345/base/asynctask/ArrayDeque;->access$200(Lcom/market2345/base/asynctask/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    .line 594
    iget-object v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/market2345/base/asynctask/ArrayDeque;->access$300(Lcom/market2345/base/asynctask/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->fence:I

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/base/asynctask/ArrayDeque;Lcom/market2345/base/asynctask/ArrayDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/base/asynctask/ArrayDeque;
    .param p2, "x1"    # Lcom/market2345/base/asynctask/ArrayDeque$1;

    .prologue
    .line 584
    .local p0, "this":Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;, "Lcom/market2345/base/asynctask/ArrayDeque<TE;>.DeqIterator;"
    invoke-direct {p0, p1}, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;-><init>(Lcom/market2345/base/asynctask/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 603
    .local p0, "this":Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;, "Lcom/market2345/base/asynctask/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;, "Lcom/market2345/base/asynctask/ArrayDeque<TE;>.DeqIterator;"
    iget v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    iget v2, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 608
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/market2345/base/asynctask/ArrayDeque;->access$400(Lcom/market2345/base/asynctask/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    aget-object v0, v1, v2

    .line 612
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->tail:I
    invoke-static {v1}, Lcom/market2345/base/asynctask/ArrayDeque;->access$300(Lcom/market2345/base/asynctask/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 613
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 614
    :cond_2
    iget v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    iput v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->lastRet:I

    .line 615
    iget v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/market2345/base/asynctask/ArrayDeque;->access$400(Lcom/market2345/base/asynctask/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    .line 616
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 620
    .local p0, "this":Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;, "Lcom/market2345/base/asynctask/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    iget v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->lastRet:I

    # invokes: Lcom/market2345/base/asynctask/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Lcom/market2345/base/asynctask/ArrayDeque;->access$500(Lcom/market2345/base/asynctask/ArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/market2345/base/asynctask/ArrayDeque;->access$400(Lcom/market2345/base/asynctask/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->cursor:I

    .line 624
    iget-object v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->this$0:Lcom/market2345/base/asynctask/ArrayDeque;

    # getter for: Lcom/market2345/base/asynctask/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/market2345/base/asynctask/ArrayDeque;->access$300(Lcom/market2345/base/asynctask/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->fence:I

    .line 626
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/base/asynctask/ArrayDeque$DeqIterator;->lastRet:I

    .line 627
    return-void
.end method
