.class Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/Contact$ContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskStack"
.end annotation


# instance fields
.field private final mThingsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    .line 488
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack$1;

    invoke-direct {v1, p0}, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack$1;-><init>(Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;)V

    const-string v2, "Contact.ContactsCache.TaskStack worker thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 511
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 512
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 513
    return-void
.end method

.method static synthetic access$300(Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public push(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 516
    iget-object v1, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 519
    monitor-exit v1

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
