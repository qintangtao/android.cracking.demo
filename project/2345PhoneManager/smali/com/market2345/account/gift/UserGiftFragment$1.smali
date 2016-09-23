.class Lcom/market2345/account/gift/UserGiftFragment$1;
.super Ljava/lang/Object;
.source "UserGiftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/UserGiftFragment;->showEmpty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/UserGiftFragment;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/UserGiftFragment;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/market2345/account/gift/UserGiftFragment$1;->this$0:Lcom/market2345/account/gift/UserGiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment$1;->this$0:Lcom/market2345/account/gift/UserGiftFragment;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/market2345/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/UserGiftFragment;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
