.class public Lcom/market2345/download/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/market2345/download/util/Deque;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/util/ArrayDeque$1;,
        Lcom/market2345/download/util/ArrayDeque$DescendingIterator;,
        Lcom/market2345/download/util/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/market2345/download/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 160
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 169
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 170
    invoke-direct {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->allocateElements(I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/market2345/download/util/ArrayDeque;->allocateElements(I)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 186
    return-void
.end method

.method static synthetic access$200(Lcom/market2345/download/util/ArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/util/ArrayDeque;

    .prologue
    .line 57
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    return v0
.end method

.method static synthetic access$300(Lcom/market2345/download/util/ArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/util/ArrayDeque;

    .prologue
    .line 57
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    return v0
.end method

.method static synthetic access$400(Lcom/market2345/download/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/util/ArrayDeque;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/download/util/ArrayDeque;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/util/ArrayDeque;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .line 102
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_0

    .line 103
    move v0, p1

    .line 104
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 105
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 106
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 107
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 108
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 111
    if-gez v0, :cond_0

    .line 112
    ushr-int/lit8 v0, v0, 0x1

    .line 114
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 115
    return-void
.end method

.method private checkInvariants()V
    .locals 0

    .prologue
    .line 496
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 145
    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    if-ge v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_0
    :goto_0
    return-object p1

    .line 147
    :cond_1
    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    if-le v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    sub-int v0, v1, v2

    .line 149
    .local v0, "headPortionLen":I
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 510
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 511
    .local v1, "elements":[Ljava/lang/Object;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 512
    .local v4, "mask":I
    iget v3, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 513
    .local v3, "h":I
    iget v5, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    .line 514
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 515
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 518
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_0

    .line 519
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 522
    :cond_0
    if-ge v2, v0, :cond_2

    .line 523
    if-gt v3, p1, :cond_1

    .line 524
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    :goto_0
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 531
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 543
    :goto_1
    return v6

    .line 526
    :cond_1
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 528
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 534
    :cond_2
    if-ge p1, v5, :cond_3

    .line 535
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    :goto_2
    move v6, v7

    .line 543
    goto :goto_1

    .line 538
    :cond_3
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 540
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v6, 0x0

    .line 123
    iget v3, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 124
    .local v3, "p":I
    iget-object v5, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 125
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 126
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 127
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    .line 128
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 130
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object v5, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iput-object v0, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 133
    iput v6, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 134
    iput v1, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    .line 135
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 839
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 840
    .local v1, "size":I
    invoke-direct {p0, v1}, Lcom/market2345/download/util/ArrayDeque;->allocateElements(I)V

    .line 841
    const/4 v2, 0x0

    iput v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 842
    iput v1, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 846
    iget-object v2, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 823
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 826
    iget-object v2, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 827
    .local v1, "mask":I
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 827
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0

    .line 829
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 202
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/market2345/download/util/ArrayDeque;->doubleCapacity()V

    .line 204
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 218
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/market2345/download/util/ArrayDeque;->doubleCapacity()V

    .line 220
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 709
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 710
    .local v0, "h":I
    iget v3, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    .line 711
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 712
    const/4 v4, 0x0

    iput v4, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    iput v4, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 713
    move v1, v0

    .line 714
    .local v1, "i":I
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 716
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 717
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 718
    if-ne v1, v3, :cond_0

    .line 720
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public clone()Lcom/market2345/download/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/market2345/download/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/download/util/ArrayDeque;

    .line 798
    .local v1, "result":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget-object v2, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    return-object v1

    .line 801
    .end local v1    # "result":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->clone()Lcom/market2345/download/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 674
    if-nez p1, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v3

    .line 676
    :cond_1
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 677
    .local v1, "mask":I
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 679
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 680
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 681
    const/4 v3, 0x1

    goto :goto_0

    .line 682
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    new-instance v0, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/download/util/ArrayDeque$DescendingIterator;-><init>(Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 292
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 293
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 294
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 303
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 304
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 305
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 564
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    new-instance v0, Lcom/market2345/download/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/download/util/ArrayDeque$DeqIterator;-><init>(Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 311
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 317
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 267
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 268
    .local v0, "h":I
    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 270
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    move-object v1, v2

    .line 274
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .line 272
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 273
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 278
    iget v3, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 279
    .local v1, "t":I
    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 280
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v2

    .line 284
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 282
    .restart local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 283
    iput v1, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 701
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 252
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 253
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 333
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 335
    :cond_1
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 336
    .local v1, "mask":I
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    .line 338
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    invoke-direct {p0, v0}, Lcom/market2345/download/util/ArrayDeque;->delete(I)Z

    .line 341
    const/4 v3, 0x1

    goto :goto_0

    .line 343
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 263
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 361
    if-nez p1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v3

    .line 363
    :cond_1
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 364
    .local v1, "mask":I
    iget v4, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    add-int/lit8 v4, v4, -0x1

    and-int v0, v4, v1

    .line 366
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    invoke-direct {p0, v0}, Lcom/market2345/download/util/ArrayDeque;->delete(I)Z

    .line 369
    const/4 v3, 0x1

    goto :goto_0

    .line 371
    :cond_2
    add-int/lit8 v4, v0, -0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 555
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/market2345/download/util/ArrayDeque;->tail:I

    iget v1, p0, Lcom/market2345/download/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/market2345/download/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 736
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/market2345/download/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, "this":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v0

    .line 778
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 781
    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/download/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 782
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 783
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 784
    :cond_1
    return-object p1
.end method
