.class final Lcom/market2345/messages/data/RecipientIdCache$1;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/messages/data/RecipientIdCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/market2345/messages/data/RecipientIdCache;->fill()V

    .line 48
    return-void
.end method
