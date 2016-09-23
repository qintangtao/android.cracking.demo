.class public Lcom/market2345/lm/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 16
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 18
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    .line 20
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 16
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_0

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_0

    .line 24
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 26
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
