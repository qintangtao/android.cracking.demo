.class public Lcom/market2345/messages/data/RecipientIdCache$Entry;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/RecipientIdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public id:J

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/market2345/messages/data/RecipientIdCache$Entry;->id:J

    .line 39
    iput-object p3, p0, Lcom/market2345/messages/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    .line 40
    return-void
.end method
