.class public interface abstract Lcom/market2345/messages/MessagesManager;
.super Ljava/lang/Object;
.source "MessagesManager.java"


# virtual methods
.method public abstract changeConversationToRead([J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract changeSmsToRead([J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteConversation([J)I
.end method

.method public abstract deleteMessage([J)I
.end method

.method public abstract getAllConversation()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/Conversation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMessage()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessagesCount()I
.end method

.method public abstract getMessagesInConversation(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessagesInConversation(Lcom/market2345/messages/data/Conversation;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/messages/data/Conversation;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertMessages(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract searchMessageByIds([J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchMessagesByThreadIds([J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation
.end method
