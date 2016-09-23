.class public Lcom/market2345/search/SearchHistory;
.super Ljava/lang/Object;
.source "SearchHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/market2345/search/SearchHistory;",
        ">;"
    }
.end annotation


# instance fields
.field public timestamp:J

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchHistory;->word:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    iput-wide p2, p0, Lcom/market2345/search/SearchHistory;->timestamp:J

    .line 25
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/market2345/search/SearchHistory;)I
    .locals 4
    .param p1, "another"    # Lcom/market2345/search/SearchHistory;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/market2345/search/SearchHistory;->timestamp:J

    iget-wide v2, p1, Lcom/market2345/search/SearchHistory;->timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/market2345/search/SearchHistory;->timestamp:J

    iget-wide v2, p1, Lcom/market2345/search/SearchHistory;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Lcom/market2345/search/SearchHistory;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/search/SearchHistory;->compareTo(Lcom/market2345/search/SearchHistory;)I

    move-result v0

    return v0
.end method
