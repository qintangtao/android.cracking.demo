.class Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;
.super Landroid/os/AsyncTask;
.source "MessagesManagerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/MessagesManagerTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/messages/MessagesManagerTestActivity;


# direct methods
.method constructor <init>(Lcom/market2345/messages/MessagesManagerTestActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;->this$0:Lcom/market2345/messages/MessagesManagerTestActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 31
    new-instance v3, Lcom/market2345/messages/MessagesContext;

    iget-object v5, p0, Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;->this$0:Lcom/market2345/messages/MessagesManagerTestActivity;

    # getter for: Lcom/market2345/messages/MessagesManagerTestActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/market2345/messages/MessagesManagerTestActivity;->access$000(Lcom/market2345/messages/MessagesManagerTestActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/market2345/messages/MessagesContext;-><init>(Landroid/content/Context;)V

    .line 32
    .local v3, "messagesContext":Lcom/market2345/messages/MessagesContext;
    invoke-virtual {v3}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v4

    .line 46
    .local v4, "messagesManager":Lcom/market2345/messages/MessagesManager;
    invoke-interface {v4}, Lcom/market2345/messages/MessagesManager;->getAllMessage()Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 48
    sget-object v5, Lcom/market2345/messages/MessagesManagerTestActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/messages/data/MessageItemTmp;

    .line 50
    .local v1, "message":Lcom/market2345/messages/data/MessageItemTmp;
    sget-object v5, Lcom/market2345/messages/MessagesManagerTestActivity;->TAG:Ljava/lang/String;

    iget-object v6, v1, Lcom/market2345/messages/data/MessageItemTmp;->body:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Lcom/market2345/messages/data/MessageItemTmp;
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
