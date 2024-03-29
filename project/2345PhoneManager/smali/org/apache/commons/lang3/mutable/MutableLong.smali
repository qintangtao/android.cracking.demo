.class public Lorg/apache/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableLong;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 77
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "operand"    # J

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 136
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 147
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I
    .locals 4
    .param p1, "other"    # Lorg/apache/commons/lang3/mutable/MutableLong;

    .prologue
    .line 257
    iget-wide v0, p1, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 258
    .local v0, "anotherVal":J
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 125
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 233
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    if-eqz v1, :cond_0

    .line 234
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 236
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 116
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .locals 3
    .param p1, "operand"    # J

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 157
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 167
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 168
    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
