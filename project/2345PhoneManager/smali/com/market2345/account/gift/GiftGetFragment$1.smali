.class Lcom/market2345/account/gift/GiftGetFragment$1;
.super Ljava/lang/Object;
.source "GiftGetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/GiftGetFragment;->onEventMainThread(Lcom/market2345/account/gift/event/UnLoginEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/GiftGetFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/market2345/account/gift/GiftGetFragment$1;->this$0:Lcom/market2345/account/gift/GiftGetFragment;

    iput-object p2, p0, Lcom/market2345/account/gift/GiftGetFragment$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment$1;->this$0:Lcom/market2345/account/gift/GiftGetFragment;

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment$1;->this$0:Lcom/market2345/account/gift/GiftGetFragment;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/market2345/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/GiftGetFragment;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 146
    :cond_0
    return-void
.end method
