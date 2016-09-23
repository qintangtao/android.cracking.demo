.class Lcom/market2345/manager/UpdateAdapter$3;
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
    .line 426
    iput-object p1, p0, Lcom/market2345/manager/UpdateAdapter$3;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/common/util/BaseAdapterHelper;

    .line 431
    .local v1, "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    invoke-virtual {v1}, Lcom/market2345/common/util/BaseAdapterHelper;->getPosition()I

    move-result v3

    .line 432
    .local v3, "position":I
    iget-object v4, p0, Lcom/market2345/manager/UpdateAdapter$3;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v4}, Lcom/market2345/manager/UpdateAdapter;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    iget-object v4, p0, Lcom/market2345/manager/UpdateAdapter$3;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v4, v3}, Lcom/market2345/manager/UpdateAdapter;->getItem(I)Lcom/market2345/model/App;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Lcom/market2345/manager/UpdateAdapter$3;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-virtual {v4, v3}, Lcom/market2345/manager/UpdateAdapter;->getItem(I)Lcom/market2345/model/App;

    move-result-object v0

    .line 434
    .local v0, "app":Lcom/market2345/model/App;
    iget v4, v0, Lcom/market2345/model/App;->sid:I

    if-ltz v4, :cond_0

    iget-boolean v4, v0, Lcom/market2345/model/App;->isLM:Z

    if-nez v4, :cond_0

    .line 436
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/manager/UpdateAdapter$3;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # getter for: Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/market2345/manager/UpdateAdapter;->access$200(Lcom/market2345/manager/UpdateAdapter;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v2, "intent":Landroid/content/Intent;
    const-class v4, Lcom/market2345/model/App;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 438
    iget-object v4, p0, Lcom/market2345/manager/UpdateAdapter$3;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # getter for: Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/market2345/manager/UpdateAdapter;->access$200(Lcom/market2345/manager/UpdateAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 441
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
