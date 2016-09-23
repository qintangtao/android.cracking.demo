.class final Lcom/market2345/messages/data/Contact$1;
.super Landroid/database/ContentObserver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 57
    const-string v0, "Messages:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "presence changed, invalidate cache"

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-static {}, Lcom/market2345/messages/data/Contact;->invalidateCache()V

    .line 61
    return-void
.end method
