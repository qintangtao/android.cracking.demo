.class Lcom/market2345/download/util/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
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

.field final synthetic this$0:Lcom/market2345/download/util/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/market2345/download/util/ArrayDeque;)V
    .locals 1

    .prologue
    .line 629
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque$DescendingIterator;, "Lcom/market2345/download/util/ArrayDeque<TE;>.DescendingIterator;"
    iput-object p1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/market2345/download/util/ArrayDeque;->access$300(Lcom/market2345/download/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 636
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/market2345/download/util/ArrayDeque;->access$200(Lcom/market2345/download/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->fence:I

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/download/util/ArrayDeque;
    .param p2, "x1"    # Lcom/market2345/download/util/ArrayDeque$1;

    .prologue
    .line 629
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque$DescendingIterator;, "Lcom/market2345/download/util/ArrayDeque<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;-><init>(Lcom/market2345/download/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 640
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque$DescendingIterator;, "Lcom/market2345/download/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->fence:I

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
    .line 644
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque$DescendingIterator;, "Lcom/market2345/download/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 645
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 646
    :cond_0
    iget v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/market2345/download/util/ArrayDeque;->access$400(Lcom/market2345/download/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 647
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/market2345/download/util/ArrayDeque;->access$400(Lcom/market2345/download/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 648
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->head:I
    invoke-static {v1}, Lcom/market2345/download/util/ArrayDeque;->access$200(Lcom/market2345/download/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 649
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 650
    :cond_2
    iget v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 651
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 655
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque$DescendingIterator;, "Lcom/market2345/download/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->lastRet:I

    # invokes: Lcom/market2345/download/util/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Lcom/market2345/download/util/ArrayDeque;->access$500(Lcom/market2345/download/util/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/market2345/download/util/ArrayDeque;->access$400(Lcom/market2345/download/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 659
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->this$0:Lcom/market2345/download/util/ArrayDeque;

    # getter for: Lcom/market2345/download/util/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/market2345/download/util/ArrayDeque;->access$200(Lcom/market2345/download/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->fence:I

    .line 661
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 662
    return-void
.end method
