.class Lcom/market2345/messages/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/market2345/messages/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/market2345/messages/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 928
    new-instance v0, Lcom/market2345/messages/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/market2345/messages/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    .line 933
    return-void
.end method

.method static dumpCache()V
    .locals 5

    .prologue
    .line 1047
    sget-object v3, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v3

    .line 1048
    :try_start_0
    const-string v2, "Conversation dumpCache: "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Conversation;

    .line 1050
    .local v0, "c":Lcom/market2345/messages/data/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   conv: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hash: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1052
    .end local v0    # "c":Lcom/market2345/messages/data/Conversation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    return-void
.end method

.method static get(J)Lcom/market2345/messages/data/Conversation;
    .locals 6
    .param p0, "threadId"    # J

    .prologue
    .line 940
    sget-object v3, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v3

    .line 941
    :try_start_0
    const-string v2, "Messages:threadcache"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversation get with threadId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    :cond_0
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Conversation;

    .line 949
    .local v0, "c":Lcom/market2345/messages/data/Conversation;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v2, v4, p0

    if-nez v2, :cond_1

    .line 950
    monitor-exit v3

    .line 954
    .end local v0    # "c":Lcom/market2345/messages/data/Conversation;
    :goto_0
    return-object v0

    .line 953
    :cond_2
    monitor-exit v3

    .line 954
    const/4 v0, 0x0

    goto :goto_0

    .line 953
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static get(Lcom/market2345/messages/data/ContactList;)Lcom/market2345/messages/data/Conversation;
    .locals 5
    .param p0, "list"    # Lcom/market2345/messages/data/ContactList;

    .prologue
    .line 962
    sget-object v3, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v3

    .line 963
    :try_start_0
    const-string v2, "Messages:threadcache"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversation get with ContactList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    :cond_0
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Conversation;

    .line 967
    .local v0, "c":Lcom/market2345/messages/data/Conversation;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->getRecipients()Lcom/market2345/messages/data/ContactList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/market2345/messages/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    monitor-exit v3

    .line 972
    .end local v0    # "c":Lcom/market2345/messages/data/Conversation;
    :goto_0
    return-object v0

    .line 971
    :cond_2
    monitor-exit v3

    .line 972
    const/4 v0, 0x0

    goto :goto_0

    .line 971
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getInstance()Lcom/market2345/messages/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 929
    sget-object v0, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v3, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v3

    .line 1061
    :try_start_0
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1062
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/messages/data/Conversation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1063
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Conversation;

    .line 1064
    .local v0, "c":Lcom/market2345/messages/data/Conversation;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1068
    .end local v0    # "c":Lcom/market2345/messages/data/Conversation;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/messages/data/Conversation;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/messages/data/Conversation;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    return-void
.end method

.method static put(Lcom/market2345/messages/data/Conversation;)V
    .locals 6
    .param p0, "c"    # Lcom/market2345/messages/data/Conversation;

    .prologue
    .line 981
    sget-object v1, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v1

    .line 984
    :try_start_0
    const-string v0, "Messages:threadcache"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    const-string v0, "messages/conv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversation.Cache.put: conv= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/market2345/messages/data/Conversation;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    sget-object v0, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v0, v0, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/market2345/messages/data/Conversation;->mThreadId:J
    invoke-static {p0}, Lcom/market2345/messages/data/Conversation;->access$200(Lcom/market2345/messages/data/Conversation;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 995
    :cond_1
    :try_start_1
    sget-object v0, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v0, v0, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 996
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    return-void
.end method

.method static remove(J)V
    .locals 6
    .param p0, "threadId"    # J

    .prologue
    .line 1032
    sget-object v3, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v3

    .line 1037
    :try_start_0
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Conversation;

    .line 1038
    .local v0, "c":Lcom/market2345/messages/data/Conversation;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v2, v4, p0

    if-nez v2, :cond_0

    .line 1039
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1040
    monitor-exit v3

    .line 1044
    .end local v0    # "c":Lcom/market2345/messages/data/Conversation;
    :goto_0
    return-void

    .line 1043
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static replace(Lcom/market2345/messages/data/Conversation;)Z
    .locals 4
    .param p0, "c"    # Lcom/market2345/messages/data/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 1009
    sget-object v1, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    monitor-enter v1

    .line 1010
    :try_start_0
    const-string v2, "Messages:threadcache"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversation.Cache.put: conv= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/market2345/messages/data/Conversation;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    :cond_0
    sget-object v2, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v2, v2, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1018
    monitor-exit v1

    .line 1027
    :goto_0
    return v0

    .line 1025
    :cond_1
    sget-object v0, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v0, v0, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1026
    sget-object v0, Lcom/market2345/messages/data/Conversation$Cache;->sInstance:Lcom/market2345/messages/data/Conversation$Cache;

    iget-object v0, v0, Lcom/market2345/messages/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1027
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
