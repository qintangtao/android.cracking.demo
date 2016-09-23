.class Lcom/market2345/manager/UpdateAdapter$2;
.super Ljava/lang/Object;
.source "UpdateAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/manager/UpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/UpdateAdapter;


# direct methods
.method constructor <init>(Lcom/market2345/manager/UpdateAdapter;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/market2345/manager/UpdateAdapter$2;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 416
    .local v1, "index":I
    iget-object v2, p0, Lcom/market2345/manager/UpdateAdapter$2;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # getter for: Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/manager/UpdateAdapter;->access$100(Lcom/market2345/manager/UpdateAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/market2345/manager/UpdateAdapter$2;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # getter for: Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/manager/UpdateAdapter;->access$100(Lcom/market2345/manager/UpdateAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 419
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v2, p0, Lcom/market2345/manager/UpdateAdapter$2;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # getter for: Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/market2345/manager/UpdateAdapter;->access$200(Lcom/market2345/manager/UpdateAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/market2345/datacenter/DataCenterObserver;->ignoreApp(Lcom/market2345/model/App;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/market2345/manager/UpdateAdapter$2;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # getter for: Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/manager/UpdateAdapter;->access$100(Lcom/market2345/manager/UpdateAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lcom/market2345/manager/UpdateAdapter$2;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v2}, Lcom/market2345/manager/UpdateAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
