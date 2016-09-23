.class Lcom/market2345/lm/activity/FastAdapter$MyHandler;
.super Landroid/os/Handler;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lm/activity/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/lm/activity/FastAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/lm/activity/FastAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter$MyHandler;->theAdapter:Ljava/lang/ref/WeakReference;

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget-object v4, p0, Lcom/market2345/lm/activity/FastAdapter$MyHandler;->theAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/activity/FastAdapter;

    .line 89
    .local v0, "adapter":Lcom/market2345/lm/activity/FastAdapter;
    if-eqz v0, :cond_1

    .line 90
    # getter for: Lcom/market2345/lm/activity/FastAdapter;->mViewHolder:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastAdapter;->access$000(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 91
    .local v3, "views":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 93
    .local v2, "item":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    .line 95
    .local v1, "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/market2345/lm/activity/FastAdapter;->initDataFromSession()V

    .line 97
    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, v1, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/lm/bean/UnionAppInfo;

    # invokes: Lcom/market2345/lm/activity/FastAdapter;->setItemStatusForFast(Lcom/market2345/lm/bean/UnionAppInfo;Lcom/market2345/lm/activity/FastAdapter$ViewHolder;)V
    invoke-static {v0, v4, v1}, Lcom/market2345/lm/activity/FastAdapter;->access$200(Lcom/market2345/lm/activity/FastAdapter;Lcom/market2345/lm/bean/UnionAppInfo;Lcom/market2345/lm/activity/FastAdapter$ViewHolder;)V

    .line 100
    # getter for: Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastAdapter;->access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 101
    # getter for: Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastAdapter;->access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;->onChange()V

    goto :goto_0

    .line 107
    .end local v1    # "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    .end local v2    # "item":Landroid/view/View;
    .end local v3    # "views":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_1
    return-void
.end method
