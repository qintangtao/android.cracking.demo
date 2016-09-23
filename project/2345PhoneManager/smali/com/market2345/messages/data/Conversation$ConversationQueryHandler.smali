.class public Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationQueryHandler"
.end annotation


# instance fields
.field private mDeleteToken:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 806
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 807
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 818
    iget v0, p0, Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    if-ne p1, v0, :cond_0

    .line 826
    # getter for: Lcom/market2345/messages/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;
    invoke-static {}, Lcom/market2345/messages/data/Conversation;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 827
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/market2345/messages/data/Conversation;->sDeletingThreads:Z
    invoke-static {v0}, Lcom/market2345/messages/data/Conversation;->access$102(Z)Z

    .line 832
    # getter for: Lcom/market2345/messages/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;
    invoke-static {}, Lcom/market2345/messages/data/Conversation;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 833
    monitor-exit v1

    .line 835
    :cond_0
    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeleteToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 810
    iput p1, p0, Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    .line 811
    return-void
.end method
