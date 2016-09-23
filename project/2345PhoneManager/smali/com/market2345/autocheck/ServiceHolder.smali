.class public Lcom/market2345/autocheck/ServiceHolder;
.super Ljava/lang/Object;
.source "ServiceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;
    }
.end annotation


# instance fields
.field private holdServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/autocheck/ServiceHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/autocheck/ServiceHolder$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/market2345/autocheck/ServiceHolder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/autocheck/ServiceHolder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/ServiceHolder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/autocheck/ServiceHolder;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/ServiceHolder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->holdServiceClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/autocheck/ServiceHolder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/ServiceHolder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getHolderInstance(Landroid/content/Context;)Lcom/market2345/autocheck/ServiceHolder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    # getter for: Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->serviceHolder:Lcom/market2345/autocheck/ServiceHolder;
    invoke-static {}, Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->access$000()Lcom/market2345/autocheck/ServiceHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    # getter for: Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->serviceHolder:Lcom/market2345/autocheck/ServiceHolder;
    invoke-static {}, Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->access$000()Lcom/market2345/autocheck/ServiceHolder;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/market2345/autocheck/ServiceHolder;->setContext(Landroid/content/Context;)V

    .line 40
    :cond_0
    # getter for: Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->serviceHolder:Lcom/market2345/autocheck/ServiceHolder;
    invoke-static {}, Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->access$000()Lcom/market2345/autocheck/ServiceHolder;

    move-result-object v0

    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/market2345/autocheck/ServiceHolder$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/autocheck/ServiceHolder$1;-><init>(Lcom/market2345/autocheck/ServiceHolder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->mHandler:Landroid/os/Handler;

    .line 114
    :cond_0
    return-void
.end method

.method private isServiceStarted()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->holdServiceClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/autocheck/ServiceHolder$2;

    invoke-direct {v1, p0}, Lcom/market2345/autocheck/ServiceHolder$2;-><init>(Lcom/market2345/autocheck/ServiceHolder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/market2345/autocheck/ServiceHolder;->initHandler()V

    .line 92
    return-void
.end method


# virtual methods
.method public setAndStartService(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/market2345/autocheck/ServiceHolder;->setService(Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0}, Lcom/market2345/autocheck/ServiceHolder;->startService()V

    .line 68
    return-void
.end method

.method public setService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/app/Service;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 52
    iget-object v0, p0, Lcom/market2345/autocheck/ServiceHolder;->holdServiceClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/market2345/autocheck/ServiceHolder;->holdServiceClass:Ljava/lang/Class;

    .line 56
    :cond_0
    return-void
.end method

.method public startService()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/market2345/autocheck/ServiceHolder;->isServiceStarted()V

    .line 63
    return-void
.end method
