.class public Lcom/market2345/messages/data/phonenumbers/RegexCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;
    }
.end annotation


# instance fields
.field private cache:Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;

    invoke-direct {v0, p1}, Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/RegexCache;->cache:Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;

    .line 17
    return-void
.end method


# virtual methods
.method containsRegex(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/RegexCache;->cache:Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;

    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/RegexCache;->cache:Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;

    invoke-virtual {v1, p1}, Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 21
    .local v0, "pattern":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    .line 22
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/RegexCache;->cache:Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;

    invoke-virtual {v1, p1, v0}, Lcom/market2345/messages/data/phonenumbers/RegexCache$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-object v0
.end method
