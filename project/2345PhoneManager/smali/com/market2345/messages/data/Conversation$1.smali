.class final Lcom/market2345/messages/data/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/messages/data/Conversation;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/market2345/messages/data/Conversation$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/market2345/messages/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/market2345/messages/data/Conversation;->access$300(Landroid/content/Context;)V

    .line 1085
    return-void
.end method
