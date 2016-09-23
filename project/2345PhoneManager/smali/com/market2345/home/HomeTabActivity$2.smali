.class Lcom/market2345/home/HomeTabActivity$2;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->delayedInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$2;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 601
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 602
    invoke-static {}, Lcom/market2345/search/SearchDialogFragment;->newInstance()Lcom/market2345/search/SearchDialogFragment;

    move-result-object v1

    .line 603
    .local v1, "dialog":Lcom/market2345/search/SearchDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "hint"

    iget-object v3, p0, Lcom/market2345/home/HomeTabActivity$2;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->currenthotWord:Ljava/lang/String;
    invoke-static {v3}, Lcom/market2345/home/HomeTabActivity;->access$100(Lcom/market2345/home/HomeTabActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1, v0}, Lcom/market2345/search/SearchDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 606
    iget-object v2, p0, Lcom/market2345/home/HomeTabActivity$2;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v2}, Lcom/market2345/home/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/search/SearchDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 609
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/market2345/search/SearchDialogFragment;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
