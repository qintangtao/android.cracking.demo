.class Lcom/market2345/home/HomeTabActivity$4;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->delayedInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 1

    .prologue
    .line 626
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$4;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity$4;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 632
    iget-object v2, p0, Lcom/market2345/home/HomeTabActivity$4;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 633
    :try_start_0
    invoke-static {}, Lcom/market2345/home/HomeUtils;->isButtonEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    monitor-exit v2

    .line 642
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$4;->this$0:Lcom/market2345/home/HomeTabActivity;

    const-class v3, Lcom/market2345/account/PrivateCenterActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$4;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v1, v0}, Lcom/market2345/home/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 637
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$4;->this$0:Lcom/market2345/home/HomeTabActivity;

    const/4 v3, 0x1

    # invokes: Lcom/market2345/home/HomeTabActivity;->changeSearchHint(Z)V
    invoke-static {v1, v3}, Lcom/market2345/home/HomeTabActivity;->access$500(Lcom/market2345/home/HomeTabActivity;Z)V

    .line 638
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$4;->this$0:Lcom/market2345/home/HomeTabActivity;

    const-string v3, "Title_Menu"

    invoke-static {v1, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 639
    monitor-exit v2

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
